import visitor
from pyPEG.MiniPascalGrammars import *

class BytecodeVisitor:
    @visitor.on('node')
    def visit(self, node):
        pass