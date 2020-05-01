from src.Visitor import visitor
from src.pyPEG.MiniPascalGrammars import *
from src.newAST.SymbolTable import SymbolTable
from src.newAST.Symbols import *


class SemanticVisitor(object):

    def __init__(self):
        self.symbol_table = SymbolTable()

    @visitor.on('node')
    def visit(self, node):
        pass

    @visitor.when(Program)
    def visit(self, node: Program):
        node.scope = {}
        for child in node:
            self.visit(child)

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
        type_sign = node.var_type.signature
        for var_name in node.var_identifiers:
            if self.symbol_table.lookup(var_name) is not None:
                raise Exception("Error: Variable '%s' is defined!" % var_name)

            self.symbol_table.define(VarSymbol(var_name, type_sign))

    @visitor.when(SubprogramDeclarations)
    def visit(self, node: SubprogramDeclarations):
        for child in node:
            self.visit(child)

    @visitor.when(SubprogramDeclaration)
    def visit(self, node: SubprogramDeclaration):
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
        self.visit(node.left)
        self.visit(node.right)

    @visitor.when(IfStatement)
    def visit(self, node: IfStatement):
        pass

    @visitor.when(WhileStatement)
    def visit(self, node: WhileStatement):
        pass

    @visitor.when(ProcedureStatement)
    def visit(self, node: ProcedureStatement):
        for child in node:
            self.visit(child)

    @visitor.when(ExpressionList)
    def visit(self, node: ExpressionList):
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
        var_symbol = self.symbol_table.lookup(node.var_name)
        if var_symbol is None:
            raise Exception("Error: Variable '%s' not found!" % node.var_name)