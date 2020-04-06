from pypeg2 import *
import re

class Program(List):
    pass

class Block(List):
    pass

class VariableDeclarations(List):
    pass

class VariableDeclaration(List):
    pass

class FunctionDeclarations(List):
    pass

class FunctionDeclaration(List):
    pass

class FunctionHeader(List):
    pass

class FunctionParameters(List):
    pass

class FunctionStatement(List):
    pass

class Type(List):
    pass

class ArrayType(List):
    pass

class SimpleType(Keyword):
    pass

class IndexRange(List):
    pass

class CompoundStatement(List):
    pass

class Statement(List):
    pass

class SimpleStatement(List):
    pass

class AssignmentStatement(List):
    pass

class ReadStatement(List):
    pass

class InputVariable(List):
    pass

class WriteStatement(List):
    pass

class OutputExpression(List):
    pass

class StructuredStatement(List):
    pass

class IfStatement(List):
    pass

class WhileStatement(List):
    pass

class Expression(List):
    pass

class RelationalExpression(List):
    pass

class AdditiveExpression(List):
    pass

class MultiplicativeExpression(List):
    pass

class SignedFactor(List):
    pass

class Factor(List):
    pass

class RelationalOperator(Keyword):
    grammar = Enum(K("="), K("<>"), K("<"), K("<="), K(">="), K(">"))
    regex = re.compile('.*')

class AdditiveOperator(Keyword):
    grammar = Enum(K("+"), K("-"))
    regex = re.compile('[+-]')

class MultiplicativeOperator(Keyword):
    grammar = Enum(K("*"), K("div"), K("and"))
    regex = re.compile('.*')

class Sign(Keyword):
    grammar = Enum(K("+"), K("-"))
    regex = re.compile('[+-]')

class Variable(List):
    pass

class IndexedVariable(List):
    pass

class EntireVariable(List):
    pass

class Identifier(List):
    pass

class IntegerConstant(List):
    pass


Program.grammar = "program", attr("program_name", Identifier), ";", Block, "."
Block.grammar = optional(VariableDeclarations), optional(FunctionDeclarations), CompoundStatement

VariableDeclarations.grammar = "var", some(VariableDeclaration, ";")
VariableDeclaration.grammar = csl(Identifier), ":", Type
Type.grammar = [ArrayType, SimpleType]
ArrayType.grammar = "array", "[", optional(IndexRange), "]", "of", SimpleType
IndexRange.grammar = IntegerConstant, "..", IntegerConstant
SimpleType.grammar = Enum(K("Byte"), K("Integer"), K("Cardinal"), K("Shortint"), K("Smallint"), K("Longint"), K("Int64"), K("Word"), K("Longword"))

FunctionDeclarations.grammar = some(FunctionDeclaration)
FunctionDeclaration.grammar = FunctionHeader, optional(VariableDeclarations), optional(CompoundStatement, ".")
FunctionHeader.grammar = "function", Identifier, FunctionParameters, ":", Type, ";"
FunctionParameters.grammar = "(", csl(Identifier), ":", Type, ")"

CompoundStatement.grammar = "begin", maybe_some(Statement, ";"), "end"
Statement.grammar = [SimpleStatement, StructuredStatement]

SimpleStatement.grammar = [AssignmentStatement, WriteStatement, ReadStatement, FunctionStatement]
AssignmentStatement.grammar = Identifier, ":=", Expression
WriteStatement.grammar = "write", "(", csl(OutputExpression), ")"
OutputExpression.grammar = Expression
ReadStatement.grammar = "read", "(", csl(InputVariable), ")"
InputVariable.grammar = Variable

FunctionStatement.grammar = Identifier, optional("(", attr("params", csl(Identifier)), ")")

StructuredStatement.grammar = [IfStatement, WhileStatement]
IfStatement.grammar = "if", attr("condition", Expression), "then", attr("then_body", Statement), optional("else", attr("else_body", Statement))
WhileStatement.grammar = "while", attr("condition", Expression), "do", attr("do_body", Statement)

Expression.grammar = RelationalExpression
RelationalExpression.grammar = AdditiveExpression, optional(RelationalOperator, AdditiveExpression)
AdditiveExpression.grammar = MultiplicativeExpression, optional(AdditiveOperator, MultiplicativeExpression)
MultiplicativeExpression.grammar = Factor, optional(AdditiveOperator, Factor)
SignedFactor.grammar = optional(Sign), Factor
Factor.grammar = [Literal, Variable, ("(", Expression, ")"), ("not", Factor)]

Variable.grammar = [IndexedVariable, EntireVariable]
EntireVariable.grammar = Identifier
IndexedVariable.grammar = Identifier, "[", Expression, "]"

IntegerConstant.grammar = re.compile(r"\d+")
Identifier.grammar = Literal