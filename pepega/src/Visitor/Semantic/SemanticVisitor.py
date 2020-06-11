from src.Visitor import visitor
from src.pyPEG.MiniPascalGrammars import *
from src.Visitor.Semantic.Symbols import *
from src.Visitor.Semantic.SymbolTable import SymbolTable

class SemanticException(Exception):
    pass

class SemanticVisitor(object):
    def __init__(self):
        self.current_scope = None

    @visitor.on('node')
    def visit(self, node):
        pass

    @visitor.when(Program)
    def visit(self, node: Program):
        # Creates global_scope with level 1
        # Sets current_scope to global_scope
        # Visits all child nodes
        # Sets current_scope to None (global_scope.parent_scope == Null)
        global_scope = SymbolTable('global', 1, self.current_scope)
        self.current_scope = global_scope

        for child in node:
            self.visit(child)

        self.current_scope = global_scope.parent_scope

    @visitor.when(Block)
    def visit(self, node: Block):
        for child in node:
            self.visit(child)

    @visitor.when(VariableDeclarations)
    def visit(self, node: VariableDeclarations):
        for child in node:
            self.visit(child)

    @visitor.when(VariableDeclaration)
    def visit(self, node: VariableDeclaration):
        # Checks if current_scope contains variable, if so raise Exception
        # Else define variable name with type name in current_scope

        # Checking type semantic, throws SemanticException if type not found
        for child in node:
            self.visit(child)

        # Looking base TypeSymbol
        type_name = node.var_type
        type_symbol = self.current_scope.lookup(type_name)

        if node.type_node.is_array:
            # If Type == ArrayType, building TypeSymbol with array_type field
            array_node = node.type_node.array_node
            array_type = ArrayTypeSymbol(array_node)
            type_symbol = TypeSymbol.from_str(array_node.base_type)
            type_symbol.array_type = array_type

        for var_name in node.var_identifiers:
            if self.current_scope.lookup(var_name, True) is not None:
                raise SemanticException("SemanticError: Variable '%s' is already declared in the current scope!" % var_name)

            var_symbol = VariableSymbol(var_name, type_symbol)
            self.current_scope.define(var_symbol)

    @visitor.when(SubprogramDeclarations)
    def visit(self, node: SubprogramDeclarations):
        for child in node:
            self.visit(child)

    @visitor.when(SubprogramDeclaration)
    def visit(self, node: SubprogramDeclaration):
        for child in node:
            self.visit(child)

        self.current_scope = self.current_scope.parent_scope

    @visitor.when(SubprogramHeader)
    def visit(self, node: SubprogramHeader):
        # Define or override subprogram in current_scope
        # Creates new `procedure_scope` with current_scope.level + 1
        # Foreach parameter checks if current_scope contains parameter, if so raise Exception
        # Else define parameter in current_scope

        # Checking type semantic, throws SemanticException if type not found
        for child in node:
            self.visit(child)

        proc_name = node.proc_name
        type_name = node.proc_type
        proc_type_symbol = self.current_scope.lookup(type_name)

        if node.is_function:
            # If function, building type
            type_node = node.proc_type_node

            if type_node.is_array:
                # If Type == ArrayType, building TypeSymbol with array_type field
                array_node = type_node.array_node
                array_type = ArrayTypeSymbol(array_node)
                proc_type_symbol = TypeSymbol.from_str(array_node.base_type)
                proc_type_symbol.array_type = array_type
                proc_type_symbol.return_type = array_node.base_type

        proc_symbol = ProcedureSymbol(proc_name, proc_type_symbol)
        self.current_scope.define(proc_symbol)

        # Changing to local (procedure) scope and defining variable with procedure name
        procedure_scope = SymbolTable(proc_name, self.current_scope.scope_level + 1, self.current_scope)
        procedure_scope.define(VariableSymbol(proc_name, proc_type_symbol))
        self.current_scope = procedure_scope

        if node.proc_params is not None:
            params_type_list = []

            for params in node.proc_params:
                # Checking params type semantic, throws SemanticException if type not found
                self.visit(params[-1])

                params: Parameters
                params_type_name = params.params_type
                params_type_symbol = self.current_scope.lookup(params_type_name)

                if params.params_type_node.is_array:
                    # If Type == ArrayType, building TypeSymbol with array_type field
                    array_node = params.params_type_node.array_node
                    array_type = ArrayTypeSymbol(array_node)
                    params_type_symbol = TypeSymbol.from_str(array_node.base_type)
                    params_type_symbol.array_type = array_type

                params_type_list.append(params_type_symbol)

                for param_name in params.params_identifiers:
                    var_symbol = VariableSymbol(param_name, params_type_symbol)
                    self.current_scope.define(var_symbol)
                    proc_symbol.params.append(var_symbol)

            proc_type_symbol.params_type = params_type_list
            print(proc_type_symbol.params_type)


    @visitor.when(ParametersList)
    def visit(self, node: ParametersList):
        for child in node:
            self.visit(child)

    @visitor.when(Parameters)
    def visit(self, node: Parameters):
        pass

    @visitor.when(CompoundStatement)
    def visit(self, node: CompoundStatement):
        for child in node:
            self.visit(child)

    @visitor.when(StatementList)
    def visit(self, node: StatementList):
        for child in node:
            self.visit(child)

    @visitor.when(AssignmentStatement)
    def visit(self, node: AssignmentStatement):
        for child in node:
            self.visit(child)

    @visitor.when(IfStatement)
    def visit(self, node: IfStatement):
        pass

    @visitor.when(WhileStatement)
    def visit(self, node: WhileStatement):
        pass

    @visitor.when(ProcedureStatement)
    def visit(self, node: ProcedureStatement):
        # Checks existence of procedure name in current and upper scopes
        # Checks count of procedure parameters according to signature
        proc_name = node.proc_name
        proc_symbol = self.current_scope.lookup(proc_name)

        if proc_symbol is None:
            raise SemanticException("SemanticError: Procedure '%s' is not defined!" % proc_name)

        if len(proc_symbol.params) != node.args_count:
            raise SemanticException("SemanticError: Procedure '%s' " % proc_name + "takes only %s arguments!" % len(proc_symbol.params))

        for child in node:
            self.visit(child)

    @visitor.when(Arguments)
    def visit(self, node: Arguments):
        for child in node:
            self.visit(child)

    @visitor.when(RelationalExpression)
    def visit(self, node: RelationalExpression):
        for child in node:
            self.visit(child)

    @visitor.when(AdditiveExpression)
    def visit(self, node: AdditiveExpression):
        for child in node:
            self.visit(child)

    @visitor.when(MultiplicativeExpression)
    def visit(self, node: MultiplicativeExpression):
        for child in node:
            self.visit(child)

    @visitor.when(EntireVariable)
    def visit(self, node: EntireVariable):
        # Checks if current and upper scopes contains variable name
        var_symbol = self.current_scope.lookup(node.var_name)
        if var_symbol is None:
            raise SemanticException("SemanticError: Variable '%s' is not defined!" % node.var_name)

    @visitor.when(Type)
    def visit(self, node: Type):
        if node.is_array:
            self.visit(node[0])
        else:
            type_name = node[0]
            type_symbol = self.current_scope.lookup(type_name)
            if type_symbol is None:
                raise SemanticException("SemanticError: SimpleType '%s' is not supported!" % type_name)

    @visitor.when(ArrayType)
    def visit(self, node: ArrayType):
        type_name = node.base_type
        type_symbol = self.current_scope.lookup(type_name)
        if type_symbol is None:
            raise SemanticException("SemanticError: ArrayType '%s' is not supported!" % type_name)