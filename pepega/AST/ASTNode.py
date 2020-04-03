from abc import ABC, abstractmethod
from enum import Enum
from typing import Callable, Tuple, Optional

class ASTNode(ABC):
    def __init__(self, row = None, line = None, **props):
        super().__init__(row, line, props)
        self.row = row
        self.line = line
        for k, v in props.items():
            setattr(self, k, v)

    @abstractmethod
    def __str__(self) -> str:
        pass

    def __getitem__(self, index):
        return self.childs[index] if index < len(self.childs) else None

    @property
    def childs(self) -> Tuple['ASTNode', ...]:
        return ()

    @property
    def tree(self) -> [str, ...]:
        res = [str(self)]
        childs_temp = self.childs
        for i, child in enumerate(childs_temp):
            ch0, ch = '├', '│'
            if i == len(childs_temp) - 1:
                ch0, ch = '└', ' '
            res.extend(((ch0 if j == 0 else ch) + ' ' + s for j, s in enumerate(child.tree)))
        return res

    def visit(self, func: Callable[['ASTNode'], None]) -> None:
        func(self)
        map(func, self.childs)

class ExpressionNode(ASTNode):
    pass

class LiteralNode(ExpressionNode):
    def __init__(self, literal,
                 row = None, line = None, **props):
        super().__init__(row, line, **props)
        self.literal = literal
        self.value = eval(literal)

    def __str__(self):
        return '{0} ({1})'.format(self.literal, type(self.value).__name__)

class IdentificatorNode(ExpressionNode):
    def __init__(self, name,
                 row = None, line = None, **props):
        super().__init__(row, line, **props)
        self.name = name

    def __str__(self):
        return self.name

class BinOp(Enum):
    ADD = '+'
    SUB = '-'
    MUL = '*'
    DIV = '/'
    GE = '>='
    LE = '<='
    NEQUALS = '<>'
    EQUALS = '='
    GT = '>'
    LT = '<'

class BinOpNode(ExpressionNode):
    def __init__(self, left, op, right,
                 row = None, line = None, **props):
        super().__init__(row, line, **props)
        self.left = left
        self.op = op
        self.right = right

    def __str__(self):
        return self.op.value

    def childs(self) -> Tuple['ASTNode', ...]:
        return self.left, self.right

class StatementNode(ExpressionNode):
    pass

class VarDeclNode(StatementNode):
    def __init__(self, vars_list, vars_type,
                 row=None, line=None, **props):
        super().__init__(row, line, **props)
        self.vars_list = vars_list
        self.vars_type = vars_type

    def __str__(self):
        return "var"

    def childs(self) -> Tuple['ASTNode', ...]:
        return (self.vars_type, ) + self.vars_list

class CallNode(StatementNode):
    def __init__(self, function, *params,
                 row=None, line=None, **props):
        super().__init__(row, line, **props)
        self.function = function
        self.params = params

    def __str__(self):
        return "call"

    def childs(self) -> Tuple['ASTNode', ...]:
        return (self.function, ) + self.params

class AssingNode(StatementNode):
    def __init__(self, variable, value,
                 row=None, line=None, **props):
        super().__init__(row, line, **props)
        self.variable = variable
        self.value = value

    def __str__(self):
        return "="

    def childs(self) -> Tuple['ASTNode', ...]:
        return self.variable, self.value

class IfNode(StatementNode):
    def __init__(self, condition, then_body, else_body = None,
                 row=None, line=None, **props):
        super().__init__(row, line, **props)
        self.condition = condition
        self.then_body = then_body
        self.else_body = else_body

    def __str__(self):
        return "if"

    def childs(self) -> Tuple['ASTNode', ...]:
        return self.condition, self.then_body, self.else_body if self.else_body else tuple()

class WhileNode(StatementNode):
    def __init__(self, condition, do_body,
                 row=None, line=None, **props):
        super().__init__(row, line, **props)
        self.condition = condition
        self.do_body = do_body

    def __str__(self):
        return "while"

    def childs(self) -> Tuple['ASTNode', ...]:
        return self.condition, self.do_body

class StatementListNode(StatementNode):
    def __init__(self, *statements,
                 row=None, line=None, **props):
        super().__init__(row, line, **props)
        self.statements = statements

    def __str__(self):
        return "..."

    def childs(self) -> Tuple['ASTNode', ...]:
        return self.statements