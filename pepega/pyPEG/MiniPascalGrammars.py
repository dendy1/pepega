from pyPEG.pyPEG import *
import re

class Program(CustomList):
    pass

class Block(CustomList):
    pass

class VariableDeclarations(CustomList):
    pass

class VariableDeclaration(CustomList):
    pass

class FunctionDeclarations(CustomList):
    pass

class FunctionDeclaration(CustomList):
    pass

class FunctionHeader(CustomList):
    pass

class FunctionParameters(CustomList):
    pass

class FunctionStatement(CustomList):
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

class Statement(CustomList):
    pass

class SimpleStatement(CustomList):
    pass

class AssignmentStatement(CustomList):
    pass

class ReadStatement(CustomList):
    pass

class InputVariable(CustomList):
    pass

class WriteStatement(CustomList):
    pass

class OutputExpression(CustomList):
    pass

class StructuredStatement(CustomList):
    pass

class IfStatement(CustomList):
    pass

class WhileStatement(CustomList):
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

class Primary(CustomList):
    pass

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

class Variable(CustomList):
    pass

class IndexedVariable(CustomList):
    pass

class EntireVariable(CustomList):
    pass

class Identifier(CustomList):
    pass

class IntegerConstant(CustomList):
    pass


Program.grammar = "program", attr("program_name", Identifier), ";", Block, "."
Block.grammar = optional(VariableDeclarations), optional(FunctionDeclarations), CompoundStatement

VariableDeclarations.grammar = "var", some(VariableDeclaration, ";")
VariableDeclaration.grammar = csl(Identifier), ":", Type
Type.grammar = [ArrayType, SimpleType]
ArrayType.grammar = "array", "[", optional(IndexRange), "]", "of", SimpleType
IndexRange.grammar = IntegerConstant, "..", IntegerConstant
SimpleType.grammar = Enum(K("Byte"), K("Integer"), K("Cardinal"), K("Shortint"), K("Smallint"), K("Longint"), K("Int64"), K("Word"), K("Longword"))

FunctionDeclarations.grammar = some(FunctionDeclaration, ";")
FunctionDeclaration.grammar = FunctionHeader, optional(VariableDeclarations), CompoundStatement
FunctionHeader.grammar = "function", Identifier, FunctionParameters, ":", Type, ";"
FunctionParameters.grammar = "(", csl(Identifier), ":", Type, ")"

CompoundStatement.grammar = "begin", maybe_some(Statement), "end"
Statement.grammar = [(SimpleStatement, ";"), StructuredStatement]

SimpleStatement.grammar = [AssignmentStatement, WriteStatement, ReadStatement, FunctionStatement]
AssignmentStatement.grammar = Identifier, ":=", Expression
WriteStatement.grammar = "write", "(", csl(OutputExpression), ")"
OutputExpression.grammar = Expression
ReadStatement.grammar = "read", "(", csl(InputVariable), ")"
InputVariable.grammar = Variable

FunctionStatement.grammar = Identifier, "(", optional(csl(Identifier)), ")"

StructuredStatement.grammar = [IfStatement, WhileStatement]
IfStatement.grammar = "if", Expression, "then", some(Statement), optional("else", some(Statement))
WhileStatement.grammar = "while", Expression, "do", Statement

Expression.grammar = RelationalExpression
RelationalExpression.grammar = AdditiveExpression, optional(RelationalOperator, AdditiveExpression)
AdditiveExpression.grammar = MultiplicativeExpression, maybe_some(AdditiveOperator, MultiplicativeExpression)
MultiplicativeExpression.grammar = SignedFactor, maybe_some(MultiplicativeOperator, SignedFactor)
SignedFactor.grammar = optional(Sign), Factor
Factor.grammar = [Literal, Variable, ("(", Expression, ")"), ("not", Factor)]

Variable.grammar = [IndexedVariable, EntireVariable]
EntireVariable.grammar = Identifier
IndexedVariable.grammar = Identifier, "[", Expression, "]"

IntegerConstant.grammar = re.compile(r"\d+")
Identifier.grammar = Literal