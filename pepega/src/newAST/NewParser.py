from src.newAST.ASTNode import ASTNode

class Parser:
    def __init__(self, raw : ASTNode):
        self.CST = raw
        self.AST = raw
        self.AST.set_parent()
        self.AST.fold()