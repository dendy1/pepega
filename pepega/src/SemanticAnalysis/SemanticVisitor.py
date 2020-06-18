from src.Exceptions import SemanticError
from src.Visitor import visitor
from src.pyPEG.MiniPascalGrammars import *
from src.SemanticAnalysis.Symbols import *
from src.SemanticAnalysis.SymbolTable import SymbolTable

VOID, INTEGER, REAL, BOOLEAN, STRING, ARRAY = BaseType.VOID, \
                                       BaseType.INTEGER, \
                                       BaseType.REAL, \
                                       BaseType.BOOLEAN, \
                                       BaseType.STRING, \
                                       BaseType.ARRAY

ADD, SUB, MUL, DIV, MOD, GT, LT, GE, LE, EQ, NEQ, AND, OR = '+', '-', '*', '/', '%', '>', '<', '>=', '<=', '==', '!=', 'and', 'or'

BIN_OP_TYPE_COMPATIBILITY = {
    ADD: {
        (INTEGER, INTEGER): INTEGER,
        (REAL, REAL): REAL,
        (STRING, STRING): STRING
    },

    SUB: {
        (INTEGER, INTEGER): INTEGER,
        (REAL, REAL): REAL
    },

    MUL: {
        (INTEGER, INTEGER): INTEGER,
        (REAL, REAL): REAL
    },

    DIV: {
        (INTEGER, INTEGER): INTEGER,
        (REAL, REAL): REAL
    },

    MOD: {
        (INTEGER, INTEGER): INTEGER,
        (REAL, REAL): REAL
    },

    GT: {
        (INTEGER, INTEGER): BOOLEAN,
        (REAL, REAL): BOOLEAN,
        (STRING, STRING): BOOLEAN,
    },

    LT: {
        (INTEGER, INTEGER): BOOLEAN,
        (REAL, REAL): BOOLEAN,
        (STRING, STRING): BOOLEAN,
    },

    GE: {
        (INTEGER, INTEGER): BOOLEAN,
        (REAL, REAL): BOOLEAN,
        (STRING, STRING): BOOLEAN,
    },

    LE: {
        (INTEGER, INTEGER): BOOLEAN,
        (REAL, REAL): BOOLEAN,
        (STRING, STRING): BOOLEAN,
    },

    EQ: {
        (INTEGER, INTEGER): BOOLEAN,
        (REAL, REAL): BOOLEAN,
        (STRING, STRING): BOOLEAN,
    },

    NEQ: {
        (INTEGER, INTEGER): BOOLEAN,
        (REAL, REAL): BOOLEAN,
        (STRING, STRING): BOOLEAN,
    },

    OR: {
        (BOOLEAN, BOOLEAN): BOOLEAN,
    },

    AND: {
        (BOOLEAN, BOOLEAN): BOOLEAN,
    },
}

TYPE_CONVERTIBILITY = {
    INTEGER: (REAL, STRING),
    REAL: (STRING,),
    BOOLEAN: (STRING,)
}

class SemanticVisitor(object):
    def __init__(self):
        self.current_scope = None

    def type_convert(self, node, new_type):
        if node.type_desc is None:
            raise SemanticError("Convert type not defined")

        if node.type_desc == new_type:
            return node

        if node.type_desc.is_simple and new_type.is_simple and \
                node.type_desc.base_type in TYPE_CONVERTIBILITY and \
                new_type.base_type in TYPE_CONVERTIBILITY[node.type_desc.base_type]:
            node.type_desc = new_type
            node.converted = True
            return node

        raise SemanticError("Cannot convert {} to {}".format(node.type_desc, new_type))

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

        self.current_scope = global_scope.enclosing_scope

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
            type_symbol = TypeSymbol.from_str('array')
            type_symbol.array_type = array_type

        for var_name in node.var_identifiers:
            if self.current_scope.lookup(var_name, True) is not None:
                raise SemanticError("Variable '%s' is already declared in the current scope!" % var_name)

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

        self.current_scope = self.current_scope.enclosing_scope

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
        proc_return_type_name = node.proc_type
        proc_return_type_symbol = self.current_scope.lookup(proc_return_type_name)

        if node.is_function:
            # If function, building return type
            type_node = node.proc_type_node

            if type_node.is_array:
                # If Type == ArrayType, building TypeSymbol with array_type field
                array_node = type_node.array_node
                array_type = ArrayTypeSymbol(array_node)
                proc_return_type_symbol = TypeSymbol.from_str('array')
                proc_return_type_symbol.array_type = array_type

        proc_symbol = ProcedureSymbol(proc_name, proc_return_type_symbol)
        self.current_scope.define(proc_symbol)

        # Changing to local (procedure) scope and defining variable with procedure name
        procedure_scope = SymbolTable(proc_name, self.current_scope.scope_level + 1, self.current_scope)
        procedure_scope.define(VariableSymbol(proc_name, proc_return_type_symbol))
        self.current_scope = procedure_scope

        if node.proc_params is not None:
            params_type_list = []

            for params in node.proc_params:
                # Checking params type semantic, throws SemanticException if type not found
                self.visit(params[-1])

                params: Parameters
                params_type_name: str = params.params_type
                params_type_symbol = self.current_scope.lookup(params_type_name)

                if params.params_type_node.is_array:
                    # If Type == ArrayType, building TypeSymbol with array_type field
                    array_node = params.params_type_node.array_node
                    array_type = ArrayTypeSymbol(array_node)
                    params_type_symbol = TypeSymbol.from_str('array')
                    params_type_symbol.array_type = array_type

                for param_name in params.params_identifiers:
                    var_symbol = VariableSymbol(param_name, params_type_symbol)
                    self.current_scope.define(var_symbol)
                    proc_symbol.params.append(var_symbol)

    @visitor.when(ParametersList)
    def visit(self, node: ParametersList):
        for child in node:
            self.visit(child)

    @visitor.when(StatementList)
    def visit(self, node: StatementList):
        for child in node:
            self.visit(child)

    @visitor.when(Statement)
    def visit(self, node: Statement):
        self.visit(node[0])

    @visitor.when(CompoundStatement)
    def visit(self, node: CompoundStatement):
        for child in node:
            self.visit(child)

    @visitor.when(AssignmentStatement)
    def visit(self, node: AssignmentStatement):
        for child in node:
            self.visit(child)

        # If types are equal
        if node.left.type_desc == node.right.type_desc:
            node.type_desc = TypeSymbol.from_base_type(node.left.type_desc.base_type)
            return
        elif node.right.type_desc.base_type in TYPE_CONVERTIBILITY:
            # Trying convert right side to left side type
            node[1] = self.type_convert(node.right, TypeSymbol.from_base_type(node.left.type_desc.base_type))
            node.type_desc = TypeSymbol.from_base_type(node.left.type_desc.base_type)
            return

        raise SemanticError("Cannot assign {} to variable {}"
                            .format(node.right.type_desc, node.left.type_desc))

    @visitor.when(IfStatement)
    def visit(self, node: IfStatement):
        if_scope = SymbolTable('if_inner_scope', self.current_scope.scope_level + 1, self.current_scope)
        self.current_scope = if_scope

        self.visit(node.cond_expr)
        if node.cond_expr.type_desc.base_type != BOOLEAN:
            raise SemanticError("IF-Condition must be boolean!")

        self.visit(node.if_body_stmt)
        self.visit(node.else_body_stmt)

        node.type_desc = TypeSymbol.from_str('void')
        self.current_scope = if_scope.enclosing_scope

    @visitor.when(WhileStatement)
    def visit(self, node: WhileStatement):
        while_scope = SymbolTable('while_inner_scope', self.current_scope.scope_level + 1, self.current_scope)
        self.current_scope = while_scope

        self.visit(node.cond_expr)
        if node.cond_expr.type_desc.base_type != BOOLEAN:
            raise SemanticError("WHILE-Condition must be boolean!")

        self.visit(node.while_body_stmt)

        node.type_desc = TypeSymbol.from_str('void')
        self.current_scope = while_scope.enclosing_scope

    @visitor.when(ProcedureStatement)
    def visit(self, node: ProcedureStatement):
        # Checks existence of procedure name in current and upper scopes
        # Checks count of procedure parameters according to signature
        proc_name: str = node.proc_name
        proc_symbol: ProcedureSymbol = self.current_scope.lookup(proc_name)

        if proc_symbol is None:
            raise SemanticError("Procedure '%s' is not defined!" % proc_name)

        # Checking arguments count
        if len(proc_symbol.params) != node.args_count:
            raise SemanticError("Procedure '{}' takes only {} arguments! ({}{})"
                                .format(proc_name, len(proc_symbol.params), proc_name, str(proc_symbol.params)))

        for child in node:
            self.visit(child)

        # Checking arguments type semantic
        args_node = node.arguments_node
        params = []
        error = False
        decl_params_str = fact_args_str = ''
        if args_node is not None:
            for i in range(len(args_node)):
                arg_node:Arguments = args_node[i]

                if (len(decl_params_str) > 0):
                    decl_params_str += ', '
                proc_param = proc_symbol.params[i]
                decl_params_str += str(proc_param.type_desc)

                if (len(fact_args_str) > 0):
                    fact_args_str += ', '
                fact_args_str += str(arg_node.type_desc)

                try:
                    params.append(self.type_convert(arg_node, proc_symbol.params[i].type_desc))
                except:
                    error = True

            if error:
                raise SemanticError("Function args types mismatch: "
                                        "<func_declaration: {}({})>; <func_call: {}({})>"
                                    .format(proc_name, decl_params_str, proc_name, fact_args_str))
            else:
                node.type_desc = proc_symbol.return_type

    @visitor.when(Arguments)
    def visit(self, node: Arguments):
        for child in node:
            self.visit(child)

    @visitor.when(LogicalExpression)
    def visit(self, node: LogicalExpression):
        for child in node:
            self.visit(child)

        left_type = node[0].type_desc
        op = node[1]
        right_type = node[2].type_desc

        if left_type.is_simple or right_type.is_simple:
            args_types = (left_type.base_type, right_type.base_type)
            compatibility = BIN_OP_TYPE_COMPATIBILITY[op]
            if args_types in compatibility:
                if node.type_desc is not None:
                    args_types = (node.type_desc.base_type, compatibility[args_types])
                    if args_types in compatibility:
                        node.type_desc = TypeSymbol.from_base_type(compatibility[args_types])
                        return
                else:
                    node.type_desc = TypeSymbol.from_base_type(compatibility[args_types])
                    return

            if right_type.base_type in TYPE_CONVERTIBILITY:
                for arg2_type in TYPE_CONVERTIBILITY[right_type.base_type]:
                    args_types = (left_type.base_type, arg2_type)
                    if args_types in compatibility:
                        node[2] = self.type_convert(node[2], TypeSymbol.from_base_type(arg2_type))
                        node.type_desc = TypeSymbol.from_base_type(compatibility[args_types])
                        return

            if left_type.base_type in TYPE_CONVERTIBILITY:
                for arg1_type in TYPE_CONVERTIBILITY[left_type.base_type]:
                    args_types = (arg1_type, right_type.base_type)
                    if args_types in compatibility:
                        node[0] = self.type_convert(node[0], TypeSymbol.from_base_type(arg1_type))
                        node.type_desc = TypeSymbol.from_base_type(compatibility[args_types])
                        return

        raise SemanticError("Operator {} cannot be applied to types ({}, {})!"
                            .format(op, left_type, right_type))

    @visitor.when(RelationalExpression)
    def visit(self, node: RelationalExpression):
        for child in node:
            self.visit(child)

        left_type = node[0].type_desc
        op = node[1]
        right_type = node[2].type_desc

        if left_type.is_simple or right_type.is_simple:
            args_types = (left_type.base_type, right_type.base_type)
            compatibility = BIN_OP_TYPE_COMPATIBILITY[op]
            if args_types in compatibility:
                if node.type_desc is not None:
                    args_types = (node.type_desc.base_type, compatibility[args_types])
                    if args_types in compatibility:
                        node.type_desc = TypeSymbol.from_base_type(compatibility[args_types])
                        return
                else:
                    node.type_desc = TypeSymbol.from_base_type(compatibility[args_types])
                    return

            if right_type.base_type in TYPE_CONVERTIBILITY:
                for arg2_type in TYPE_CONVERTIBILITY[right_type.base_type]:
                    args_types = (left_type.base_type, arg2_type)
                    if args_types in compatibility:
                        node[2] = self.type_convert(node[2], TypeSymbol.from_base_type(arg2_type))
                        node.type_desc = TypeSymbol.from_base_type(compatibility[args_types])
                        return

            if left_type.base_type in TYPE_CONVERTIBILITY:
                for arg1_type in TYPE_CONVERTIBILITY[left_type.base_type]:
                    args_types = (arg1_type, right_type.base_type)
                    if args_types in compatibility:
                        node[0] = self.type_convert(node[0], TypeSymbol.from_base_type(arg1_type))
                        node.type_desc = TypeSymbol.from_base_type(compatibility[args_types])
                        return

        raise SemanticError("Operator {} cannot be applied to types ({}, {})!"
                            .format(op, left_type, right_type))

    @visitor.when(AdditiveExpression)
    def visit(self, node: AdditiveExpression):
        types = []

        for index in range(0, len(node)):
            self.visit(node[index])
            types.append(node[index].type_desc)

        for index in range(0, len(node) - 1, 2):
            if types[index].is_simple or types[index + 2].is_simple:
                args_types = (types[index].base_type, types[index + 2].base_type)
                compatibility = BIN_OP_TYPE_COMPATIBILITY[node[index + 1]]
                if args_types in compatibility:
                    if node.type_desc is not None:
                        args_types = (node.type_desc.base_type, compatibility[args_types])
                        if args_types in compatibility:
                            node.type_desc = TypeSymbol.from_base_type(compatibility[args_types])
                            continue
                    else:
                        node.type_desc = TypeSymbol.from_base_type(compatibility[args_types])
                        continue

                if types[index + 2].base_type in TYPE_CONVERTIBILITY:
                    for arg2_type in TYPE_CONVERTIBILITY[types[index + 2].base_type]:
                        args_types = (types[index].base_type, arg2_type)
                        if args_types in compatibility:
                            node[index + 2] = self.type_convert(node[index + 2], TypeSymbol.from_base_type(arg2_type))
                            if node.type_desc is not None:
                                args_types = (node.type_desc.base_type, compatibility[args_types])
                                if args_types in compatibility:
                                    node.type_desc = TypeSymbol.from_base_type(compatibility[args_types])
                                    break
                            else:
                                node.type_desc = TypeSymbol.from_base_type(compatibility[args_types])
                                break

                if types[index].base_type in TYPE_CONVERTIBILITY:
                    for arg1_type in TYPE_CONVERTIBILITY[types[index].base_type]:
                        args_types = (arg1_type, types[index + 2].base_type)
                        if args_types in compatibility:
                            node[index] = self.type_convert(node[index], TypeSymbol.from_base_type(arg1_type))
                            if node.type_desc is not None:
                                args_types = (node.type_desc.base_type, compatibility[args_types])
                                if args_types in compatibility:
                                    node.type_desc = TypeSymbol.from_base_type(compatibility[args_types])
                                    break
                            else:
                                node.type_desc = TypeSymbol.from_base_type(compatibility[args_types])
                                break
                else:
                    raise SemanticError("Operator {} cannot be applied to types ({}, {})!"
                                        .format(node[index + 1], types[index], types[index + 2]))
            else:
                raise SemanticError("Operator {} cannot be applied to types ({}, {})!"
                                    .format(node[index + 1], types[index], types[index + 2]))

    @visitor.when(MultiplicativeExpression)
    def visit(self, node: MultiplicativeExpression):
        types = []

        for index in range(0, len(node)):
            self.visit(node[index])
            types.append(node[index].type_desc)

        for index in range(0, len(node) - 1, 2):
            if types[index].is_simple or types[index + 2].is_simple:
                args_types = (types[index].base_type, types[index + 2].base_type)
                compatibility = BIN_OP_TYPE_COMPATIBILITY[node[index + 1]]
                if args_types in compatibility:
                    if node.type_desc is not None:
                        args_types = (node.type_desc.base_type, compatibility[args_types])
                        if args_types in compatibility:
                            node.type_desc = TypeSymbol.from_base_type(compatibility[args_types])
                            return
                    else:
                        node.type_desc = TypeSymbol.from_base_type(compatibility[args_types])
                        return

                if types[index + 2].base_type in TYPE_CONVERTIBILITY:
                    for arg2_type in TYPE_CONVERTIBILITY[types[index + 2].base_type]:
                        args_types = (types[index].base_type, arg2_type)
                        if args_types in compatibility:
                            node[index + 2] = self.type_convert(node[index + 2], TypeSymbol.from_base_type(arg2_type))
                            if node.type_desc is not None:
                                args_types = (node.type_desc.base_type, compatibility[args_types])
                                if args_types in compatibility:
                                    node.type_desc = TypeSymbol.from_base_type(compatibility[args_types])
                                    return
                            else:
                                node.type_desc = TypeSymbol.from_base_type(compatibility[args_types])
                                return

                if types[index].base_type in TYPE_CONVERTIBILITY:
                    for arg1_type in TYPE_CONVERTIBILITY[types[index].base_type]:
                        args_types = (arg1_type, types[index + 2].base_type)
                        if args_types in compatibility:
                            node[index] = self.type_convert(node[index], TypeSymbol.from_base_type(arg1_type))
                            if node.type_desc is not None:
                                args_types = (node.type_desc.base_type, compatibility[args_types])
                                if args_types in compatibility:
                                    node.type_desc = TypeSymbol.from_base_type(compatibility[args_types])
                                    return
                            else:
                                node.type_desc = TypeSymbol.from_base_type(compatibility[args_types])
                                return
                else:
                    raise SemanticError("Operator {} cannot be applied to types ({}, {})!"
                                        .format(node[index + 1], types[index], types[index + 2]))
            else:
                raise SemanticError("Operator {} cannot be applied to types ({}, {})!"
                                    .format(node[index + 1], types[index], types[index + 2]))

    @visitor.when(IndexedVariable)
    def visit(self, node: IndexedVariable):
        for child in node:
            self.visit(child)

        # Checks if current and upper scopes contains array variable name
        var_symbol: VariableSymbol = self.current_scope.lookup(node.variable_name)
        if var_symbol is None:
            raise SemanticError("Array Variable {} is not defined!".format(node.variable_name))

        if var_symbol.type_desc.array_type is None:
            raise SemanticError("Variable {} is not array!".format(node.variable_name))

        for i in range(1, len(node)):
            if node[i].type_desc.base_type != INTEGER:
                raise SemanticError("Array Index {} must be integer!".format(node[i]))

        node.type_desc = TypeSymbol.from_base_type(var_symbol.type_desc.array_type.base_type)

    @visitor.when(EntireVariable)
    def visit(self, node: EntireVariable):
        # Checks if current and upper scopes contains variable name
        var_symbol: VariableSymbol = self.current_scope.lookup(node.variable_name)
        if var_symbol is None:
            raise SemanticError("Entire Variable {} is not defined!".format(node.variable_name))

        try:
            node.type_desc = var_symbol.type_desc
        except:
            raise SemanticError("Incorrect variable name: {}".format(node.variable_name))

    @visitor.when(ConstantVariable)
    def visit(self, node: ConstantVariable):
        self.visit(node[0])
        node.type_desc = node[0].type_desc

    @visitor.when(RealConstant)
    def visit(self, node: RealConstant):
        node.type_desc = TypeSymbol.from_str('real')

    @visitor.when(IntegerConstant)
    def visit(self, node: IntegerConstant):
        node.type_desc = TypeSymbol.from_str('integer')

    @visitor.when(StringConstant)
    def visit(self, node: StringConstant):
        node.type_desc = TypeSymbol.from_str('string')

    @visitor.when(BooleanConstant)
    def visit(self, node: BooleanConstant):
        node.type_desc = TypeSymbol.from_str('boolean')

    @visitor.when(SignedFactor)
    def visit(self, node: SignedFactor):
        for child in node:
            self.visit(child)

        factor = node[1]

        if factor.type_desc.base_type == BaseType.BOOLEAN:
            raise SemanticError("Signed keyword mustn't be used with boolean expression!")

        node.type_desc = factor.type_desc

    @visitor.when(Factor)
    def visit(self, node: Factor):
        for child in node:
            self.visit(child)

        if isinstance(node[0], Not):
            factor = node[1]
            if factor.type_desc.base_type != BaseType.BOOLEAN:
                raise SemanticError("'Not' keyword must be used with boolean expression!")
        else:
            factor = node[0]

        node.type_desc = factor.type_desc

    @visitor.when(Type)
    def visit(self, node: Type):
        # If Type == ArrayType, checking semantic for ArrayType node
        if node.is_array:
            self.visit(node[0])
        else:
            type_name = node[0]
            type_symbol = self.current_scope.lookup(type_name)
            if type_symbol is None:
                raise SemanticError("SimpleType {} is not supported!".format(type_name))

    @visitor.when(ArrayType)
    def visit(self, node: ArrayType):
        # Searching for SimpleType in current and upper scopes
        type_name = node.base_type
        type_symbol = self.current_scope.lookup(type_name)
        if type_symbol is None:
            raise SemanticError("ArrayType of {} is not supported!".format(type_name))

    @visitor.when(RelationalOperator)
    def visit(self, node: RelationalOperator):
        node.type_desc = TypeSymbol.from_str('operator')

    @visitor.when(AdditiveOperator)
    def visit(self, node: AdditiveOperator):
        node.type_desc = TypeSymbol.from_str('operator')

    @visitor.when(MultiplicativeOperator)
    def visit(self, node: MultiplicativeOperator):
        node.type_desc = TypeSymbol.from_str('operator')