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

class VariableDeclaration(List):
    pass

class Type(List):
    pass

class ArrayType(List):
    pass

class SimpleType(List):
    pass

class TypeIdentifier(List):
    pass

class IndexRange(List):
    pass

class ProcedureDeclarationPart(List):
    pass

class ProcedureDeclaration(List):
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

class RelationalOperator(List):
    pass

class Sign(List):
    pass

class AddingOperator(List):
    pass

class MultiplyingOperator(List):
    pass

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

Program.grammar = "program", Identifier, ";", Block, "."
Block.grammar = optional(VariableDeclarationPart), ProcedureDeclarationPart, StatementPart

VariableDeclarationPart.grammar = "var", csl(VariableDeclaration, ";")
VariableDeclaration.grammar = csl(Identifier), ":", Type
Type.grammar = [SimpleType, ArrayType]
ArrayType.grammar = "array", "[", IndexRange, "]", "of", SimpleType
IndexRange.grammar = IntegerConstant, "..", IntegerConstant
SimpleType.grammar = TypeIdentifier
TypeIdentifier.grammar = Identifier

ProcedureDeclarationPart.grammar = maybe_some(ProcedureDeclaration, ";")
ProcedureDeclaration.grammar = "procedure", Identifier, ";", Block

StatementPart.grammar = CompoundStatement
CompoundStatement.grammar = "begin", csl(Statement, ";"), "end"
Statement.grammar = [SimpleStatement, StructuredStatement]

SimpleStatement.grammar = [AssigmentStatement, ProcedureStatement, ReadStatement, WriteStatement]
AssigmentStatement.grammar = Identifier, ":=", Expression
ProcedureStatement.grammar = Identifier
ReadStatement.grammar = "Read", blank, "(", csl(InputVariable), ")"
InputVariable.grammar = Variable
WriteStatement.grammar = "write", blank, "(", csl(OutputVariable), ")"
OutputVariable.grammar = Expression

StructuredStatement.grammar = CompoundStatement
IfStatement.grammar = "if", Expression, "then", Statement, optional("else", Statement)
WhileStatement.grammar = "while", Expression, "do", Statement

Expression.grammar = SimpleExpression, optional(RelationalOperator, SimpleExpression)
SimpleExpression.grammar = Sign, Term, maybe_some(AddingOperator, Term)
Term.grammar = Factor, maybe_some(MultiplyingOperator, Term)
Factor.grammar = [Variable, Constant, ("(", Expression, ")"), ("not", Factor)]

RelationalOperator.grammar = ["=", "<>", "<", "<=", ">=", ">"]
Sign.grammar = ["+", "-", ""]
AddingOperator.grammar = ["+", "-", "or"]
MultiplyingOperator.grammar = ["*", "div", "and"]

Variable.grammar = [EntireVariable, IndexedVariable]
IndexedVariable.grammar = ArrayVariable, "[", Expression, "]"
ArrayVariable.grammar = EntireVariable
EntireVariable.grammar = VariableIdentifier
VariableIdentifier = Identifier

Constant.grammar = [IntegerConstant, CharacterConstant, ConstantIdentifier]
ConstantIdentifier.grammar = Identifier
Identifier.grammar = re.compile("[a-zA-Z][a-zA-Z0-9]")
IntegerConstant.grammar = re.compile("[0-9]")
CharacterConstant.grammar = re.compile("[a-zA-Z]")