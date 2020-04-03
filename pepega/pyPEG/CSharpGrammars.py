from pypeg2 import *

class Type(Keyword):
    pass

class AccessModifier(Keyword):
    pass

class Argument(List):
    pass

class ArgumentList(List):
    pass

class MethodInvokation(List):
    pass

class PrimaryExpressionStart(List):
    pass

class PrimaryExpression(List):
    pass

class UnaryExpression(List):
    pass

class MultiplicativeExpression(List):
    pass

class AdditiveExpression(List):
    pass

class RelationExpression(List):
    pass

class EqualityExpression(List):
    pass

class ConditionalAndExpression(List):
    pass

class ConditionalOrExpression(List):
    pass

class NonAssigmentExpression(List):
    pass

class AssigmentOperator(List):
    pass

class AssigmentExpression(List):
    pass

class Expression(List):
    pass

class Return(List):
    pass

class Continue(List):
    pass

class Break(List):
    pass

class ForIterator(List):
    pass

class ForInitializer(List):
    pass

class For(List):
    pass

class Do(List):
    pass

class While(List):
    pass

class SwitchLabel(List):
    pass

class SwitchSection(List):
    pass

class Switch(List):
    pass

class IfBody(List):
    pass

class If(List):
    pass

class SimpleEmbeddedStatement(List):
    pass

class EmbeddedStatement(List):
    pass

class Statement(List):
    pass

class StatementList(List):
    pass

class Block(List):
    pass

class MethodParameter(List):
    pass

class MethodParameters(List):
    pass

class Method(List):
    pass

class VariableDeclarator(List):
    pass

class VariableDeclaration(List):
    pass

class Field(List):
    pass

class ClassMember(List):
    pass

class ClassBody(List):
    pass

class Class(List):
    pass

class MainMethod(List):
    pass

class MainClass(List):
    pass

class Program(List):
    pass

Program.grammar = MainClass, maybe_some(Class)

MainClass.grammar = "program", name(), "{", MainMethod,  "}"
MainMethod.grammar = "public", "static", "void", "Main", "(", "string", "[", "]", attr("params_name", Symbol), ")", Block
Class.grammar = "class", attr("name", Symbol), ClassBody
ClassBody.grammar = "{", maybe_some(ClassMember), "}"
ClassMember.grammar = optional(AccessModifier), [Field, Method]

Field.grammar = VariableDeclaration, ";"
VariableDeclaration.grammar = csl(VariableDeclarator)
VariableDeclarator.grammar = Type, name(), optional("=", Expression)

Method.grammar = Type, name(), "(", optional(MethodParameters), ")", Block
MethodParameters.grammar = csl(MethodParameter)
MethodParameter.grammar = Type, name(), optional("=", Expression)

Block.grammar = "{", maybe_some(Statement), "}"
StatementList.grammar = some(Statement)
Statement.grammar = [Field, EmbeddedStatement]
EmbeddedStatement.grammar = [Block, SimpleEmbeddedStatement]
SimpleEmbeddedStatement.grammar = [";", (Expression, ";"), If, Switch, While, Do, For, Break, Continue, Return]

If.grammar = "if", "(", Expression, ")", IfBody, optional("else", IfBody)
IfBody.grammar = [SimpleEmbeddedStatement, Block]

Switch.grammar = "switch", "(", Expression, ")", "{", maybe_some(SwitchSection), "}"
SwitchSection.grammar = some(SwitchLabel), StatementList
SwitchLabel.grammar = [("case", Expression, ":"), ("default", ":")]

While.grammar = "while", "(", Expression, ")", EmbeddedStatement

Do.grammar = "do", Block, "while", "(", Expression, ")", ";"

For.grammar = grammar = "for", "(", optional(ForInitializer), ";", optional(Expression), ";", optional(ForIterator), ")", EmbeddedStatement
ForInitializer.grammar = [VariableDeclaration, csl(Expression)]
ForIterator.grammar = csl(Expression)

Break.grammar = "break", ";"
Continue.grammar = "continue", ";"
Return.grammar = "return", optional(Expression), ";"

Expression.grammar = [AssigmentExpression, NonAssigmentExpression]
AssigmentExpression.grammar = UnaryExpression, AssigmentOperator, Expression
AssigmentOperator.grammar = ["=", "+=", "-=", "*=", "/="]
NonAssigmentExpression.grammar = ConditionalOrExpression
ConditionalOrExpression.grammar = ConditionalAndExpression, maybe_some("||", ConditionalAndExpression)
ConditionalAndExpression.grammar = EqualityExpression, maybe_some("&&", EqualityExpression)
EqualityExpression.grammar = RelationExpression, maybe_some(["==", "!="], RelationExpression)
RelationExpression.grammar = AdditiveExpression, maybe_some(["<", "<=", ">", ">="], AdditiveExpression)
AdditiveExpression.grammar = MultiplicativeExpression, maybe_some(["+", "-"], MultiplicativeExpression)
MultiplicativeExpression.grammar = UnaryExpression, maybe_some(["*", "/", "%"], UnaryExpression)
UnaryExpression.grammar = [PrimaryExpression, ("+", UnaryExpression), ("-", UnaryExpression), ("++", UnaryExpression), ("--", UnaryExpression)]
PrimaryExpression.grammar = PrimaryExpressionStart, maybe_some([MethodInvokation, "++", "--"])
PrimaryExpressionStart.grammar = [Literal, "this", ("new", Type, "(", optional(ArgumentList), ")"), ("(", Expression,")")]

MethodInvokation.grammar = "(", optional(ArgumentList), ")"
ArgumentList.grammar = csl(Argument)
Argument.grammar = optional(Type), Expression

AccessModifier.grammar = Enum(K("public"), K("private"))
Type.grammar = Enum(K("byte"), K("short"), K("ushort"), K("int"), K("uint"), K("long"), K("ulong"), K("char"), K("decimal"), K("float"), K("double"), K("bool"))
