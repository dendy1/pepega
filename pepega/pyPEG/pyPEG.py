from pypeg2 import *

class CustomList(List):
    def accept(self, visitor):
        visitor.visit(self)

class CustomKeyword(Keyword):
    def accept(self, visitor):
        visitor.visit(self)

class CustomNamespace(Namespace):
    def accept(self, visitor):
        visitor.visit(self)

class CustomEnum(Enum):
    def accept(self, visitor):
        visitor.visit(self)