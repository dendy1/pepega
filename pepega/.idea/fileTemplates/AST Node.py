from AST.ASTNode import ASTNode
from AST.Nodes import *
from typing import Optional, Union, Tuple

class ${NAME}(ASTNode):
    def __init__(self,
                 row: Optional[int] = None, line: Optional[int] = None, **props):
        super().__init__(row, line, **props)

    @property
    def childs(self):
        return 

    def __str__(self)->str:
        return "${NAME}"