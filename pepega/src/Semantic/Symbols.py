from typing import Optional, List
from enum import Enum

from src.pyPEG.MiniPascalGrammars import ArrayType


class BaseType(Enum):
    VOID = 'void'
    INTEGER = 'integer'
    REAL = 'real'
    BOOLEAN = 'boolean'
    STRING = 'string'
    ARRAY = 'array'
    OPERATOR = 'operator'

    def __str__(self):
        return self.value

class Symbol:
    @property
    def name(self):
        return None

class BaseArray:
    def __init__(self, left_border: int = None, right_border: int = None):
        self.left_border = left_border
        self.right_border = right_border

    @property
    def size(self):
        return self.right_border - self.left_border

    def __str__(self):
        return 'array [{}..{}]'.format(self.left_border, self.right_border)

    __repr__ = __str__

class ArrayTypeSymbol:
    def __init__(self, array_node: ArrayType):
        self.array_scope = []

        self.__add_array(array_node)
        while not array_node.is_simple_array:
            self.__add_array(array_node)
            array_node = array_node[-1][0]

        self.base_type: BaseType = BaseType(array_node.base_type)

    def __add_array(self, array_node: ArrayType):
        if array_node.index_range_node:
            self.array_scope.append(
                BaseArray(array_node.index_range_node.left_range, array_node.index_range_node.right_range))
        else:
            self.array_scope.append(BaseArray())

    def __str__(self):
        output = ''
        for base_array in self.array_scope:
            output += str (base_array) + ' of '
        output += str(self.base_type)
        return output

    __repr__ = __str__

class TypeSymbol(Symbol):
    def __init__(self, base_type: Optional[BaseType] = None, array_type: Optional[ArrayTypeSymbol] = None,
                 return_type: Optional['TypeSymbol'] = None, params_type: Optional[List['TypeSymbol']] = None) -> None:
        self.base_type = base_type
        self.array_type = array_type
        self.return_type = return_type
        self.params_type = params_type

    @property
    def name(self):
        return self.base_type.value

    @property
    def is_function(self) -> bool:
        return self.return_type is not None

    @property
    def is_array(self) -> bool:
        return self.array_type is not None

    @property
    def is_simple(self) -> bool:
        return not (self.is_function or self.is_array)

    def __eq__(self, other: 'TypeSymbol'):
        if self.is_array != other.is_array:
            return False

        if self.is_function != other.is_function:
            return False

        if self.is_array:
            return str(self) == str(other)
        elif not self.is_function:
            return self.base_type == other.base_type
        else:
            if self.return_type != other.return_type:
                return False

            if len(self.params_type) != len(other.params_type):
                return False

            for i in range(len(self.params_type)):
                if self.params_type[i] != other.params_type[i]:
                    return False
            return True

    @staticmethod
    def from_base_type(base_type: BaseType) -> 'TypeSymbol':
        return TypeSymbol(base_type)

    @staticmethod
    def from_str(str_decl: str) -> 'TypeSymbol':
        try:
            base_type = BaseType(str_decl)
            return TypeSymbol.from_base_type(base_type)
        except Exception as e:
            print(e)
            raise Exception('Unknown type {}'.format(str_decl))

    def __str__(self) -> str:
        if self.is_array:
            return str(self.array_type)
        elif not self.is_function:
            return str(self.base_type)
        else:
            res = str(self.return_type)
            res += ' ('
            for param in self.params_type:
                if res[-1] != '(':
                    res += ', '
                res += str(param)
            res += ')'
        return res

    __repr__ = __str__

class VariableSymbol(Symbol):
    def __init__(self, name: str, type_desc: TypeSymbol):
        self.var_name = name
        self.type_desc = type_desc

    @property
    def name(self):
        return self.var_name

    def __str__(self):
        return '<{name}:{type}>'.format(name=self.name, type=self.type_desc)

    __repr__ = __str__

class ProcedureSymbol(Symbol):
    def __init__(self, proc_name: str, return_type: TypeSymbol, params = None):
        self.proc_name = proc_name
        self.return_type = return_type
        self.params = params if params is not None else []

    @property
    def name(self):
        return self.proc_name

    def __str__(self):
        return '<{name}, params: {params}, returns: {returns}>'.format(name=self.name,params=self.params,returns=self.return_type)

    __repr__ = __str__

