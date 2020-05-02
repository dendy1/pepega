from src.Visitor import visitor
from src.pyPEG.MiniPascalGrammars import *
from src.newAST.SymbolTable import SymbolTable
from src.newAST.Symbols import *


class SemanticVisitor(object):
    def __init__(self):
        self.current_scope = None

    @visitor.on('node')
    def visit(self, node):
        pass

    @visitor.when(Program)
    def visit(self, node: Program):
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
        type_sign = node.var_type
        for var_name in node.var_identifiers:
            if self.current_scope.lookup(var_name, True) is not None:
                raise Exception("Error: Variable '%s' is already declared in the upper scope!" % var_name)

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
        proc_name = node.proc_name
        proc_symbol = self.current_scope.lookup(proc_name)

        if proc_symbol is None:
            raise Exception("Error: Procedure '%s' is not defined!" % proc_name)

        if len(proc_symbol.params) != node.args_count:
            raise Exception("Error: Procedure '%s' " % proc_name + "takes only %s arguments!" % len(proc_symbol.params))

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
        var_symbol = self.current_scope.lookup(node.var_name)
        if var_symbol is None:
            raise Exception("Error: Variable '%s' is not defined!" % node.var_name)