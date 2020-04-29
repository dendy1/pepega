from src.AST.ASTNode import ASTNode
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

    def printCST(self, with_context = False):
        print(*self.CSTroot.tree(with_context), sep=os.linesep)

    def printAST(self, with_context = False):
        print(*self.ASTroot.tree(with_context), sep=os.linesep)

