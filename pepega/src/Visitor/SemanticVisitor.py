from src.Visitor import visitor
from src.pyPEG.MiniPascalGrammars import *
from src.newAST.SymbolTable import SymbolTable
from src.newAST.Symbols import *


TYPE_CONVERTIBILITY = ()

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
        type_sign = node.var_type
        for var_name in node.var_identifiers:
            if self.current_scope.lookup(var_name, True) is not None:
                raise SemanticException("Error: Variable '%s' is already declared in the upper scope!" % var_name)

            self.current_scope.define(VariableSymbol(var_name, type_sign))

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
        # Define or override subprogram in current_scope\
        # Creates new `procedure_scope` with current_scope level + 1
        # Foreach parameter checks if current_scope contains parameter, if so raise Exception
        # Else define parameter in current_scope
        proc_name = node.proc_name
        proc_type = node.proc_type

        proc_symbol = ProcedureSymbol(proc_name, proc_type)
        self.current_scope.define(proc_symbol)

        procedure_scope = SymbolTable(proc_name, self.current_scope.scope_level + 1, self.current_scope)
        procedure_scope.define(VariableSymbol(proc_name, proc_type))
        self.current_scope = procedure_scope

        for params in node.proc_params:
            params_type = params.params_type
            for param_name in params.params_identifiers:
                if self.current_scope.lookup(param_name, True) is not None:
                    raise SemanticException("Error: Parameter '%s' is already declared in the scope!" % param_name)

                var_symbol = VariableSymbol(param_name, params_type)
                self.current_scope.define(var_symbol)
                proc_symbol.params.append(var_symbol)

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
        var_symbol = self.current_scope.lookup(node.var_name)
        print(node.right)
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
            raise SemanticException("Error: Procedure '%s' is not defined!" % proc_name)

        if len(proc_symbol.params) != node.args_count:
            raise SemanticException("Error: Procedure '%s' " % proc_name + "takes only %s arguments!" % len(proc_symbol.params))

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
            raise SemanticException("Error: Variable '%s' is not defined!" % node.var_name)