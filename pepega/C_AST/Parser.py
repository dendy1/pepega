import json

from C_AST.ASTNode import ASTNode
import os

class Parser:
    def __init__(self, raw):
        self.raw = raw
        self.CSTroot = ASTNode(None, raw)
        self.ASTroot = ASTNode(None, raw)

        self.CSTroot.parse(raw)

        self.ASTroot.parse(raw)
        self.ASTroot.rename()
        self.ASTroot.fold()
        self.ASTroot.generateBytecode(None)

    def printCST(self, with_context = False):
        print(*self.CSTroot.tree(with_context), sep=os.linesep)

    def printAST(self, with_context = False):
        print(*self.ASTroot.tree(with_context), sep=os.linesep)

    def printScope(self):
        for x in self.ASTroot.scope:
            print(x)
            for y in self.ASTroot.scope[x]:
                print(y, ':', self.ASTroot.scope[x][y])

    def generateCode(self, builder):
        self.ASTroot.generateBytecode(builder)