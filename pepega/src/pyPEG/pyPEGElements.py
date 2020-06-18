from pypeg2 import *
from src.AST.ASTNode import ASTNode
from src.Visitor.VisitorElement import VisitorElement

class CustomNamespace(Namespace, ASTNode, VisitorElement):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        ASTNode.__init__(self)

class CustomList(List, ASTNode, VisitorElement):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        ASTNode.__init__(self)

class CustomKeyword(Keyword, ASTNode, VisitorElement):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        ASTNode.__init__(self)

class CustomEnum(Enum, ASTNode, VisitorElement):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        ASTNode.__init__(self)

class CustomLiteral(Literal, ASTNode, VisitorElement):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        ASTNode.__init__(self)