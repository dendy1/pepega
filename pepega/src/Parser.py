from src.pyPEG.MiniPascalGrammars import *
from src.Semantic.SemanticVisitor import SemanticVisitor

class Parser:
    def __init__(self):
        pass

    def parse(self, program_lines, filename = None):
        self.CST = parse(program_lines, Program, filename=filename, comment=comment_cpp)
        self.AST = parse(program_lines, Program, filename=filename, comment=comment_cpp)

    def fold(self):
        self.AST.set_parent()
        self.AST.fold()

    def semantic_check(self):
        semantic_visitor = SemanticVisitor()
        semantic_visitor.visit(self.AST)