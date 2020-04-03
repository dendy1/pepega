from pypeg2 import *
import re

class Program(List):
    pass

class Block(List):
    pass

class VariableDeclarationPart(List):
    pass

class VariableDeclaration(List):
    pass

class Type(List):
    pass

class ArrayType(List):
    pass

class SimpleType(Keyword):
    pass

class IndexRange(List):
    pass

class SubprogramDeclarationPart(List):
    pass

class SubprogramDeclaration(List):
    pass

class Arguments(List):
    pass

class StatementPart(List):
    pass

class CompoundStatement(List):
    pass

class Statement(List):
    pass

class SimpleStatement(List):
    pass

class AssigmentStatement(List):
    pass

class ProcedureStatement(List):
    pass

class ReadStatement(List):
    pass

class InputVariable(List):
    pass

class WriteStatement(List):
    pass

class OutputVariable(List):
    pass

class StructuredStatement(List):
    pass

class IfStatement(List):
    pass

class WhileStatement(List):
    pass

class Expression(List):
    pass

class SimpleExpression(List):
    pass

class Term(List):
    pass

class Factor(List):
    pass

class RelationalOperator(Keyword):
    grammar = Enum(K("="), K("<>"), K("<"), K("<="), K(">="), K(">"))
    regex = re.compile('.*')

class Sign(Keyword):
    grammar = Enum(K("+"), K("-"))
    regex = re.compile('[+-]')

class AddingOperator(Keyword):
    grammar = Enum(K("+"), K("-"))
    regex = re.compile('[+-]')

class MultiplyingOperator(Keyword):
    grammar = Enum(K("*"), K("div"), K("and"))
    regex = re.compile('.*')

class Variable(List):
    pass

class IndexedVariable(List):
    pass

class ArrayVariable(List):
    pass

class EntireVariable(List):
    pass

class VariableIdentifier(List):
    pass

class Constant(List):
    pass

class ConstantIdentifier(List):
    pass

class Identifier(List):
    pass

class LetterOrDigit(List):
    pass

class IntegerConstant(List):
    pass

class CharacterConstant(List):
    pass

class Letter(List):
    pass

class Digit(List):
    pass

class SpecialSymbol(List):
    pass

class PredefinedIdentifier(List):
    pass

Program.grammar = "program", attr("program_name", Identifier), ";", Block, "."
Block.grammar = optional(VariableDeclarationPart), optional(SubprogramDeclarationPart), StatementPart

VariableDeclarationPart.grammar = "var", some(VariableDeclaration, ";")
VariableDeclaration.grammar = csl(Identifier), ":", Type
Type.grammar = [ArrayType, SimpleType]
ArrayType.grammar = "array", "[", optional(IndexRange), "]", "of", SimpleType
IndexRange.grammar = IntegerConstant, "..", IntegerConstant
SimpleType.grammar = Enum(K("Byte"), K("Integer"), K("Cardinal"), K("Shortint"), K("Smallint"), K("Longint"), K("Int64"), K("Word"), K("Longword"))

SubprogramDeclarationPart.grammar = some(SubprogramDeclaration, ".")
SubprogramDeclaration.grammar = "function", Identifier, optional(Arguments), ":", SimpleType, ";", StatementPart
Arguments.grammar = "(", VariableDeclaration, maybe_some(";", VariableDeclaration), ")"

StatementPart.grammar = CompoundStatement
CompoundStatement.grammar = "begin", maybe_some(Statement, ";"), "end"
Statement.grammar = [SimpleStatement, StructuredStatement, CompoundStatement]

SimpleStatement.grammar = [AssigmentStatement, WriteStatement, ReadStatement, ProcedureStatement]
AssigmentStatement.grammar = Identifier, ":=", Expression
WriteStatement.grammar = "write", "(", csl(OutputVariable), ")"
OutputVariable.grammar = Expression
ReadStatement.grammar = "read", "(", csl(InputVariable), ")"
InputVariable.grammar = Variable
ProcedureStatement.grammar = Identifier, optional("(", csl(Expression), ")")

StructuredStatement.grammar = CompoundStatement
IfStatement.grammar = "if", attr("condition", Expression), "then", attr("then_body", Statement), optional("else", attr("else_body", Statement))
WhileStatement.grammar = "while", attr("condition", Expression), "do", attr("do_body", Statement)

Expression.grammar = SimpleExpression, optional(RelationalOperator, SimpleExpression)
SimpleExpression.grammar = optional(Sign), Term, maybe_some(AddingOperator, Term)
Term.grammar = Factor, maybe_some(MultiplyingOperator, Term)
Factor.grammar = [Variable, Constant, ("(", Expression, ")"), ("not", Factor)]

Variable.grammar = [IndexedVariable, EntireVariable]
IndexedVariable.grammar = ArrayVariable, "[", Expression, "]"
ArrayVariable.grammar = EntireVariable
EntireVariable.grammar = VariableIdentifier
VariableIdentifier = Identifier

Constant.grammar = [IntegerConstant, CharacterConstant, ConstantIdentifier]
ConstantIdentifier.grammar = Identifier
Identifier.grammar = word
IntegerConstant.grammar = re.compile(r"\d+")
CharacterConstant.grammar = re.compile(r"[a-zA-Z]")