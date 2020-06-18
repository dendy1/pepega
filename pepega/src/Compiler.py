from src.Translation.OPCodesContext import OPCodesContext
from src.Translation.TranslatorVisitor import TranslatorVisitor
from src.pyPEG.MiniPascalGrammars import *
from src.SemanticAnalysis.SemanticVisitor import SemanticVisitor


class Compiler:
    def __init__(self):
        self.CST = None
        self.AST = None
        self.opcodes_context: Optional[OPCodesContext] = None

    def parse(self, program_lines, filename = None):
        self.CST = parse(program_lines, Program, filename=filename, comment=comment_cpp)
        self.AST = parse(program_lines, Program, filename=filename, comment=comment_cpp)

    def fold(self):
        self.AST.set_parent()
        self.AST.fold()

    def semantic_check(self):
        semantic_visitor = SemanticVisitor()
        semantic_visitor.visit(self.AST)

    def generate_code(self):
        translator_visitor = TranslatorVisitor()
        translator_visitor.visit(self.AST)
        self.opcodes_context = translator_visitor.context

    @property
    def bytecode(self) -> [str, ...]:
        return self.opcodes_context.program_text