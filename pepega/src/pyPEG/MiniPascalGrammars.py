from src.newAST.pyPEGElements import *
import re

class Program(CustomList):
    pass

class Block(CustomList):
    pass

class VariableDeclarations(CustomList):
    pass

class VariableDeclaration(CustomList):
    pass

class SubprogramDeclarations(CustomList):
    pass

class SubprogramDeclaration(CustomList):
    pass

class SubprogramHeader(CustomList):
    pass

# class FunctionDeclaration(CustomList):
#     pass
#
# class FunctionHeader(CustomList):
#     pass
#
# class ProcedureDeclaration(CustomList):
#     pass
#
# class ProcedureHeader(CustomList):
#     pass

class Arguments(CustomList):
    pass

class ProcedureStatement(CustomList):
    pass

class Type(CustomList):
    pass

class ArrayType(CustomList):
    pass

class SimpleType(CustomKeyword):
    pass

class IndexRange(CustomList):
    pass

class CompoundStatement(CustomList):
    pass

class StatementList(CustomList):
    pass

class Statement(CustomList):
    pass

class SimpleStatement(CustomList):
    pass

class AssignmentStatement(CustomList):
    pass

class IfStatement(CustomList):
    pass

class WhileStatement(CustomList):
    pass

class ExpressionList(CustomList):
    pass

class Expression(CustomList):
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

class Variable(CustomList):
    pass

class IndexedVariable(CustomList):
    pass

class EntireVariable(CustomList):
    pass

class FloatConstant(CustomList):
    pass

class IntegerConstant(CustomList):
    pass

class BooleanConstant(CustomList):
    pass

class StringConstant(CustomList):
    pass

class Identifier(CustomList):
    pass


class Float(CustomLiteral):
    grammar = re.compile(r"[0-9]*\.[0-9]*")

    def __init__(self, value=.0, **kwargs):
        super().__init__(value, **kwargs)
        if isinstance(value, str):
            m = Float.grammar.match(value)
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
                raise ValueError("«%s» is not a valid integer" % value)
        elif isinstance(value, bool):
            self.value = value
        else:
            self.value = bool(value)


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

Program.grammar = "program", Identifier, optional('(', csl(Identifier), ')'), ";", Block, "."
Block.grammar = maybe_some(VariableDeclarations), optional(SubprogramDeclarations), CompoundStatement

VariableDeclarations.grammar = "var", some(VariableDeclaration, ";")
VariableDeclaration.grammar = csl(Identifier), ":", Type
Type.grammar = [ArrayType, SimpleType]
ArrayType.grammar = "array", "[", optional(IndexRange), "]", "of", Type
IndexRange.grammar = IntegerConstant, "..", IntegerConstant
SimpleType.grammar = Enum(K('string'), K('integer'), K('boolean'), K('float'), K('real'), K('cardinal'))

SubprogramDeclarations.grammar = some(SubprogramDeclaration, ";")
SubprogramDeclaration.grammar = SubprogramHeader, maybe_some(VariableDeclarations), CompoundStatement
SubprogramHeader.grammar = [("function", Identifier, Arguments, ":", Type, ";"), ("procedure", Identifier, Arguments, ";")]
# FunctionDeclaration.grammar = FunctionHeader, maybe_some(VariableDeclarations), CompoundStatement
# FunctionHeader.grammar = "function", Identifier, Arguments, ":", Type, ";"
# ProcedureDeclaration.grammar = ProcedureHeader, maybe_some(VariableDeclarations), CompoundStatement
# ProcedureHeader.grammar = "procedure", Identifier, Arguments, ";"
Arguments.grammar = "(", csl(Identifier), ":", Type, ")"

CompoundStatement.grammar = "begin", optional(StatementList), "end"
StatementList.grammar = Statement, maybe_some(';', Statement)
Statement.grammar = [CompoundStatement, AssignmentStatement, IfStatement, WhileStatement, ProcedureStatement]

AssignmentStatement.grammar = Variable, ":=", Expression
ProcedureStatement.grammar = Identifier, optional("(", ExpressionList, ")")
IfStatement.grammar = "if", Expression, "then", Statement, optional("else", Statement)
WhileStatement.grammar = "while", Expression, "do", Statement

ExpressionList.grammar = Expression, maybe_some(',', Expression)
Expression.grammar = RelationalExpression
RelationalExpression.grammar = AdditiveExpression, optional(RelationalOperator, AdditiveExpression)
AdditiveExpression.grammar = MultiplicativeExpression, maybe_some(AdditiveOperator, MultiplicativeExpression)
MultiplicativeExpression.grammar = SignedFactor, maybe_some(MultiplicativeOperator, SignedFactor)
SignedFactor.grammar = optional(Sign), Factor
Factor.grammar = [(Identifier, "(", ExpressionList, ")"), ("(", Expression, ")"), Variable, ("not", Factor), SignedFactor]

Variable.grammar = [IndexedVariable, EntireVariable]
EntireVariable.grammar = [FloatConstant, IntegerConstant, BooleanConstant, StringConstant, Identifier]
IndexedVariable.grammar = Identifier, some("[", Expression, "]")

IntegerConstant.grammar = Integer
FloatConstant.grammar = Float
BooleanConstant.grammar = Boolean
StringConstant.grammar = [("\"", str, "\""), ("\'", str, "\'")]
Identifier.grammar = str