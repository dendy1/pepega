from typing import Optional

from src.newAST.pyPEGElements import *
import re

class NodeException(Exception):
    pass

class Program(CustomList):
    pass

class Block(CustomList):
    pass

class VariableDeclarations(CustomList):
    pass

class VariableDeclaration(CustomList):
    @property
    def var_identifiers(self) -> []:
        """Returns list of variables names (list of strings)"""
        var_list = []
        for i in range(len(self) - 1):
            var_list.append(self[i][0])
        return var_list

    @property
    def type_node(self) -> 'Type':
        return self[-1]

    @property
    def var_type(self) -> str:
        """Returns variables type name (string)"""
        return self[-1].signature

class SubprogramDeclarations(CustomList):
    pass

class ParametersList(CustomList):
    pass

class SubprogramHeader(CustomList):
    @property
    def proc_name(self) -> str:
        """Returns subprogram name (string) from first node"""
        return self[0][0]

    @property
    def proc_params(self) -> Optional[ParametersList]:
        """
        Returns None if subprogram have parameters
        or
        `ParametersList` node which consist of `Parameter` nodes
        """
        if len(self) < 3:
            return None
        return self[1]

    @property
    def proc_type_node(self) -> Optional['Type']:
        """Returns None if subprogram = procedure or type node (Type)"""
        if isinstance(self[-1], Type):
            return self[-1]
        else:
            return None

    @property
    def proc_type(self) -> str:
        """Returns None if subprogram = procedure or type name (string)"""
        if isinstance(self[-1], Type):
            return self[-1].signature
        else:
            return 'void'

    @property
    def is_function(self) -> bool:
        return isinstance(self[-1], Type)

class SubprogramDeclaration(CustomList):
    @property
    def header(self) -> SubprogramHeader:
        """Returns `SubprogramHeader` node"""
        return self[0]

class Parameters(CustomList):
    @property
    def params_identifiers(self):
        """Returns list of parameters names (list of strings)"""
        params_list = []
        for i in range(len(self) - 1):
            params_list.append(self[i][0])
        return params_list

    @property
    def params_type(self) -> str:
        """Returns parameters type name (string)"""
        return self[-1].signature

    @property
    def params_type_node(self) -> 'Type':
        return self[-1]

class ProcedureStatement(CustomList):
    @property
    def proc_name(self) -> str:
        """Returns procedure name (string)"""
        return self[0][0]

    @property
    def args_count(self) -> int:
        """Returns procedure parameters count (int)"""
        if isinstance(self[-1], Arguments):
            return len(self[-1])
        else:
            return 0

    @property
    def return_type(self):
        return

class Type(CustomList):
    @property
    def is_array(self) -> bool:
        return isinstance(self[0], ArrayType)

    @property
    def array_node(self) -> 'ArrayType':
        if self.is_array:
            return self[0]

        raise NodeException("{} is not array".format(self))

    @property
    def signature(self) -> str:
        """Returns string name for type (string)"""
        if self.is_array:
            return self[0].signature_without_ranges
        else:
            return self[0]

class ArrayType(CustomList):
    @property
    def base_type(self) -> str:
        """Return string name for array base type (integer, real, string etc)"""
        return self.__base_type

    @property
    def __base_type(self) -> str:
        if isinstance(self[-1][0], ArrayType):
            return self[-1][0].__base_type
        return self[-1][0]

    @property
    def signature_without_ranges(self) -> str:
        """Returns string name representation for array type (string). (Ex. array of array of array of integer)"""
        if isinstance(self[-1][0], ArrayType):
            return 'array of ' + self[-1][0].signature_without_ranges
        return self[-1][0]

    @property
    def array_depth(self) -> int:
        return self.__array_depth(1)

    def __array_depth(self, i):
        if isinstance(self[-1][0], ArrayType):
            return self[-1][0]._array_depth(i + 1)
        return i

    @property
    def is_simple_array(self):
        return not isinstance(self[-1][0], ArrayType)

    @property
    def index_range_node(self) -> Optional['IndexRange']:
        if isinstance(self[0], IndexRange):
            return self[0]
        return None

class SimpleType(CustomKeyword):
    @property
    def signature(self):
        return self[0]

class IndexRange(CustomList):
    @property
    def left_range(self) -> int:
        return self[0][0]

    @property
    def right_range(self) -> int:
        return self[1][0]

class CompoundStatement(CustomList):
    pass

class StatementList(CustomList):
    pass

class Statement(CustomList):
    pass

class SimpleStatement(CustomList):
    pass

class Variable(CustomList):
    @property
    def var_name(self) -> str:
        """Returns variable name (string)"""
        return self.var_name

class Expression(CustomList):
    pass

class AssignmentStatement(CustomList):
    @property
    def left(self) -> Variable:
        """Returns left `Variable` node"""
        return self[0]

    @property
    def right(self) -> Expression:
        """Returns right `Expression` node"""
        return self[1]

class IfStatement(CustomList):
    pass

class WhileStatement(CustomList):
    pass

class Arguments(CustomList):
    pass

class RelationalExpression(CustomList):
    pass

class AdditiveExpression(CustomList):
    pass

class MultiplicativeExpression(CustomList):
    pass

class SignedFactor(CustomList):
    pass

class Factor(CustomList):
    pass

class IndexedVariable(CustomList):
    @property
    def var_name(self) -> str:
        """Returns variable name (string)"""
        return self[0]

class EntireVariable(CustomList):
    @property
    def var_name(self) -> str:
        """Returns variable name (string)"""
        return self[0]

class ConstantVariable(CustomList):
    pass

class RealConstant(CustomList):
    pass

class IntegerConstant(CustomList):
    pass

class BooleanConstant(CustomList):
    pass

class StringConstant(CustomList):
    pass

class Identifier(CustomList):
    pass

class Real(CustomLiteral):
    grammar = re.compile(r"[0-9]*\.[0-9]*")

    def __init__(self, value=.0, **kwargs):
        super().__init__(value, **kwargs)
        if isinstance(value, str):
            m = Real.grammar.match(value)
            if m:
                self.value = float(value)
            else:
                raise ValueError("«%s» is not a valid float" % value)
        elif isinstance(value, float):
            self.value = value
        else:
            self.value = float(value)

class Integer(CustomLiteral):
    grammar = re.compile(r"\d+")

    def __init__(self, value=.0, **kwargs):
        super().__init__(value, **kwargs)
        if isinstance(value, str):
            m = Integer.grammar.match(value)
            if m:
                self.value = int(value)
            else:
                raise ValueError("«%s» is not a valid integer" % value)
        elif isinstance(value, int):
            self.value = value
        else:
            self.value = int(value)

class Boolean(CustomLiteral):
    def __init__(self, value=.0, **kwargs):
        super().__init__(value, **kwargs)
        if isinstance(value, str):
            if value == "false":
                self.value = False
            elif value == "true":
                self.value = True
            else:
                raise ValueError("«%s» is not a valid boolean" % value)
        elif isinstance(value, bool):
            self.value = value
        else:
            self.value = bool(value)

class String(CustomLiteral):
    grammar = str

class RelationalOperator(CustomKeyword):
    grammar = Enum(K("!="), K("=="), K("<"), K("<="), K(">="), K(">"))
    regex = re.compile('[<>=!]=?')

class AdditiveOperator(CustomKeyword):
    grammar = Enum(K("+"), K("-"))
    regex = re.compile('[+-]')

class MultiplicativeOperator(CustomKeyword):
    grammar = Enum(K("*"), K("/"), K("%"))
    regex = re.compile('[*/%]')

class Sign(CustomKeyword):
    grammar = Enum(K("+"), K("-"))
    regex = re.compile('[+-]')

class Not(CustomKeyword):
    grammar = Enum(K("not"))


Program.grammar = K("program"), Identifier, optional('(', csl(Identifier), ')'), ";", Block, "."
Block.grammar = maybe_some(VariableDeclarations), optional(SubprogramDeclarations), CompoundStatement

VariableDeclarations.grammar = "var", some(VariableDeclaration, ";")
VariableDeclaration.grammar = csl(Identifier), ":", Type
Type.grammar = [ArrayType, SimpleType]
ArrayType.grammar = "array", "[", optional(IndexRange), "]", "of", Type
IndexRange.grammar = IntegerConstant, "..", IntegerConstant
SimpleType.grammar = Enum(K('real'), K('integer'), K('boolean'), K('string'))

SubprogramDeclarations.grammar = some(SubprogramDeclaration, ";")
SubprogramDeclaration.grammar = SubprogramHeader, Block
SubprogramHeader.grammar = [("function", Identifier, "(", optional(ParametersList), ")", ":", Type, ";"), ("procedure", Identifier, "(", optional(ParametersList), ")", ";")]
ParametersList.grammar = Parameters, maybe_some(";", Parameters)
Parameters.grammar = csl(Identifier), ":", Type

CompoundStatement.grammar = "begin", optional(StatementList), "end"
StatementList.grammar = Statement, maybe_some(';', Statement)
Statement.grammar = [CompoundStatement, AssignmentStatement, IfStatement, WhileStatement, ProcedureStatement]

AssignmentStatement.grammar = [IndexedVariable, EntireVariable], ":=", Expression
ProcedureStatement.grammar = Identifier, "(", optional(Arguments), ")"
IfStatement.grammar = "if", Expression, "then", Statement, optional("else", Statement)
WhileStatement.grammar = "while", Expression, "do", Statement

Arguments.grammar = csl(Expression)
Expression.grammar = RelationalExpression
RelationalExpression.grammar = AdditiveExpression, optional(RelationalOperator, AdditiveExpression)
AdditiveExpression.grammar = MultiplicativeExpression, maybe_some(AdditiveOperator, MultiplicativeExpression)
MultiplicativeExpression.grammar = SignedFactor, maybe_some(MultiplicativeOperator, SignedFactor)
SignedFactor.grammar = optional(Sign), Factor
Factor.grammar = [(Not, Factor), ProcedureStatement, ("(", Expression, ")"), Variable]

Variable.grammar = [ConstantVariable, IndexedVariable, EntireVariable]
EntireVariable.grammar = str
ConstantVariable.grammar = [RealConstant, IntegerConstant, BooleanConstant, StringConstant]
IndexedVariable.grammar = str, some("[", Expression, "]")

IntegerConstant.grammar = Integer
RealConstant.grammar = Real
BooleanConstant.grammar = Boolean
StringConstant.grammar = [("\"", str, "\""), ("\'", str, "\'")]
Identifier.grammar = str