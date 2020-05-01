from src.Visitor import visitor
from src.pyPEG.MiniPascalGrammars import *
from src.newAST.SymbolTable import SymbolTable
from src.newAST.Symbols import *

class SymbolTableVisitor(object):

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
            self.symbol_table.define(VarSymbol(var_name, type_sign))

    @visitor.when(EntireVariable)
    def visit(self, node: EntireVariable):
        type_sign = node.var_type.signature
        for var_name in node.var_identifiers:
            self.symbol_table.define(VarSymbol(var_name, type_sign))