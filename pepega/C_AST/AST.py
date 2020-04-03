from C_AST.ASTNode import ASTNode
import os

class AST:
    def __init__(self):
        self.root = ASTNode(None, "program")

    def parse(self, rawAST):
        self.root.parse(rawAST)

    def printCST(self, content = False):
        print(*self.root.tree(content), sep=os.linesep)

    def printAST(self, content = False):
        print(*self.root.tree(content), sep=os.linesep)