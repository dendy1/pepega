from typing import Union

from src.Exceptions import TranslatorError
from src.Translation.OPCodesContext import OPCodesContext
from src.VirtualMachine.OPCodes import OPCode, OPCodeType
from src.Visitor import visitor
from src.pyPEG.MiniPascalGrammars import *

ADD, SUB, MUL, DIV, MOD, GT, LT, GE, LE, EQ, NEQ, AND, OR = '+', '-', '*', '/', '%', '>', '<', '>=', '<=', '==', '!=', 'and', 'or'

class TranslatorVisitor(object):
    def __init__(self):
        self.context = OPCodesContext()

    @visitor.on('node')
    def visit(self, node):
        pass

    @visitor.when(Program)
    def visit(self, node: Program):
        self.context.add_opcode(OPCode(OPCodeType.BEGIN_SCOPE))
        for child in node:
            self.visit(child)
        self.context.add_opcode(OPCode(OPCodeType.END_SCOPE))

    @visitor.when(Block)
    def visit(self, node: Block):
        for child in node:
            self.visit(child)

    @visitor.when(VariableDeclarations)
    def visit(self, node: VariableDeclarations):
        for child in node:
            self.visit(child)

    @visitor.when(VariableDeclaration)
    def visit(self, node: VariableDeclaration):
        for var_name in node.var_identifiers:
            self.context.add_opcode(OPCode(OPCodeType.DECLARE_LOCAL, [var_name]))

    @visitor.when(SubprogramDeclarations)
    def visit(self, node: SubprogramDeclarations):
        for child in node:
            self.visit(child)

    @visitor.when(SubprogramDeclaration)
    def visit(self, node: SubprogramDeclaration):
        for child in node:
            self.visit(child)

        if node.header.is_function:
            # If function have return type - returning Variable with function name
            self.context.add_opcode(OPCode(OPCodeType.PUSH, [node.header.proc_name]))
            self.context.add_opcode(OPCode(OPCodeType.RETURN, [1]))
        else:
            # If function dont have return type - returning nil
            self.context.add_opcode(OPCode(OPCodeType.PUSH, ['nil']))
            self.context.add_opcode(OPCode(OPCodeType.RETURN, [1]))

        self.context.add_opcode(OPCode(OPCodeType.END_SCOPE))

    @visitor.when(SubprogramHeader)
    def visit(self, node: SubprogramHeader):
        self.context.add_opcode(OPCode(OPCodeType.FUNCTION, [node.proc_name]))
        self.context.add_opcode(OPCode(OPCodeType.BEGIN_SCOPE))

        if node.proc_params is not None:
            self.visit(node.proc_params)

    @visitor.when(ParametersList)
    def visit(self, node: ParametersList):
        for child in node:
            self.visit(child)

    @visitor.when(Parameters)
    def visit(self, node: Parameters):
        for ident in reversed(node[:-1]):
            self.context.add_opcode(OPCode(OPCodeType.ASSIGN, [ident[0]]))

    @visitor.when(StatementList)
    def visit(self, node: StatementList):
        for child in node:
            self.visit(child)

    @visitor.when(Statement)
    def visit(self, node: Statement):
        self.visit(node[0])

    @visitor.when(CompoundStatement)
    def visit(self, node: CompoundStatement):
        for child in node:
            self.visit(child)

    @visitor.when(AssignmentStatement)
    def visit(self, node: AssignmentStatement):
        self.visit(node.right)
        self.context.add_opcode(OPCode(OPCodeType.ASSIGN, [node.left.variable_name]))

    @visitor.when(IfStatement)
    def visit(self, node: IfStatement):
        self.context.add_opcode(OPCode(OPCodeType.BEGIN_SCOPE))

        self.visit(node.cond_expr)
        self.context.add_opcode(OPCode(OPCodeType.JUMP_NEG, [-1]))
        jump_fail_opcode = self.context.current_opcode
        fail_address = self.context.current_address + 1

        self.visit(node.if_body_stmt)
        self.context.add_opcode(OPCode(OPCodeType.JUMP, [-1]))
        jump_complete_opcode = self.context.current_opcode

        self.context.add_opcode(OPCode(OPCodeType.END_SCOPE))

        if node.else_body_stmt is not None:
            self.context.add_opcode(OPCode(OPCodeType.BEGIN_SCOPE))
            fail_address = self.context.current_address + 1
            self.visit(node.else_body_stmt)
            self.context.add_opcode(OPCode(OPCodeType.END_SCOPE))

        complete_address = self.context.current_address + 1

        jump_complete_opcode.args[0] = complete_address
        jump_fail_opcode.args[0] = fail_address

    @visitor.when(ForStatement)
    def visit(self, node: ForStatement):
        self.context.add_opcode(OPCode(OPCodeType.BEGIN_SCOPE))

        self.visit(node.initial_expression)
        self.context.add_opcode(OPCode(OPCodeType.ASSIGN, [node.variable.variable_name]))
        loop_iteration_address = self.context.current_address + 1
        self.visit(node.final_expression)

        self.context.add_opcode(OPCode(OPCodeType.PUSH, [node.variable.variable_name]))

        if (node.to_downto == 'to'):
            self.context.add_opcode(OPCode(OPCodeType.COMPARE_GE))
        else:
            self.context.add_opcode(OPCode(OPCodeType.COMPARE_LE))

        self.context.add_opcode(OPCode(OPCodeType.JUMP_NEG, [-1]))

        jump_to_loop_end_opcode = self.context.current_opcode

        self.visit(node.for_stmt)

        if (node.to_downto == 'to'):
            self.context.add_opcode(OPCode(OPCodeType.PUSH, ['1']))
            self.context.add_opcode(OPCode(OPCodeType.PUSH, [node.variable.variable_name]))
            self.context.add_opcode(OPCode(OPCodeType.SUM))
        else:
            self.context.add_opcode(OPCode(OPCodeType.PUSH, [node.variable.variable_name]))
            self.context.add_opcode(OPCode(OPCodeType.PUSH, ['1']))
            self.context.add_opcode(OPCode(OPCodeType.SUBTRACT))

        self.context.add_opcode(OPCode(OPCodeType.ASSIGN, [node.variable.variable_name]))
        self.context.add_opcode(OPCode(OPCodeType.JUMP, [loop_iteration_address]))
        self.context.add_opcode(OPCode(OPCodeType.END_SCOPE))
        jump_to_loop_end_opcode.args[0] = self.context.current_address

    @visitor.when(WhileStatement)
    def visit(self, node: WhileStatement):
        self.context.add_opcode(OPCode(OPCodeType.BEGIN_SCOPE))

        condition_address = self.context.current_address
        self.visit(node.cond_expr)
        self.context.add_opcode(OPCode(OPCodeType.JUMP_NEG, [-1]))
        jump_fail_opcode = self.context.current_opcode

        self.context.add_opcode(OPCode(OPCodeType.BEGIN_SCOPE))
        self.visit(node.while_stmt)
        self.context.add_opcode(OPCode(OPCodeType.JUMP, [-1]))
        jump_condition_opcode = self.context.current_opcode
        self.context.add_opcode(OPCode(OPCodeType.END_SCOPE))
        fail_address = self.context.current_address + 1

        jump_condition_opcode.args[0] = condition_address
        jump_fail_opcode.args[0] = fail_address

        self.context.add_opcode(OPCode(OPCodeType.END_SCOPE))

    @visitor.when(ProcedureStatement)
    def visit(self, node: ProcedureStatement):
        for child in node:
            self.visit(child)

        self.context.add_opcode(OPCode(OPCodeType.PUSH, [node.proc_name]))
        self.context.add_opcode(OPCode(OPCodeType.CALL, [len(node.arguments_node) if node.arguments_node is not None else 0]))

    @visitor.when(Arguments)
    def visit(self, node: Arguments):
        for child in node:
            self.visit(child)

    @visitor.when(LogicalExpression)
    def visit(self, node: LogicalExpression):
        self.visit(node[0])
        self.visit(node[2])
        op = node[1]

        if op == AND:
            self.context.add_opcode(OPCode(OPCodeType.BOOLEAN_AND))
        elif op == OR:
            self.context.add_opcode(OPCode(OPCodeType.BOOLEAN_OR))

    @visitor.when(RelationalExpression)
    def visit(self, node: RelationalExpression):
        self.visit(node[0])
        self.visit(node[2])
        op = node[1]

        if op == LT:
            self.context.add_opcode(OPCode(OPCodeType.COMPARE_LT))
        elif op == LE:
            self.context.add_opcode(OPCode(OPCodeType.COMPARE_LE))
        elif op == GT:
            self.context.add_opcode(OPCode(OPCodeType.COMPARE_GT))
        elif op == GE:
            self.context.add_opcode(OPCode(OPCodeType.COMPARE_GE))
        elif op == EQ:
            self.context.add_opcode(OPCode(OPCodeType.COMPARE_EQ))
        elif op == NEQ:
            self.context.add_opcode(OPCode(OPCodeType.COMPARE_NEQ))

    @visitor.when(AdditiveExpression)
    def visit(self, node: AdditiveExpression):
        for index in range(0, len(node) - 1, 2):
            self.visit(node[index])
            self.visit(node[index + 2])
            op = node[index + 1]

            if op == ADD:
                self.context.add_opcode(OPCode(OPCodeType.SUM))
            elif op == SUB:
                self.context.add_opcode(OPCode(OPCodeType.SUBTRACT))

    @visitor.when(MultiplicativeExpression)
    def visit(self, node: MultiplicativeExpression):
        for index in range(0, len(node) - 1, 2):
            self.visit(node[index])
            self.visit(node[index + 2])
            op = node[index + 1]

            if op == MUL:
                self.context.add_opcode(OPCode(OPCodeType.MULTIPLY))
            elif op == DIV:
                self.context.add_opcode(OPCode(OPCodeType.DIVIDE))
            elif op == MOD:
                self.context.add_opcode(OPCode(OPCodeType.MODULO))

    @visitor.when(IndexedVariable)
    def visit(self, node: IndexedVariable):
        raise TranslatorError("IndexedVariable is not supported!")

    @visitor.when(EntireVariable)
    def visit(self, node: EntireVariable):
        self.context.add_opcode(OPCode(OPCodeType.PUSH, [node.variable_name]))

    @visitor.when(ConstantVariable)
    def visit(self, node: ConstantVariable):
        self.visit(node[0])

    @visitor.when(RealConstant)
    def visit(self, node: RealConstant):
        self.context.add_opcode(OPCode(OPCodeType.PUSH, [str(node.value).lower()]))

    @visitor.when(IntegerConstant)
    def visit(self, node: IntegerConstant):
        self.context.add_opcode(OPCode(OPCodeType.PUSH, [str(node.value).lower()]))

    @visitor.when(StringConstant)
    def visit(self, node: StringConstant):
        self.context.add_opcode(OPCode(OPCodeType.PUSH, ["\"" + str(node.value).lower() + "\""]))

    @visitor.when(BooleanConstant)
    def visit(self, node: BooleanConstant):
        self.context.add_opcode(OPCode(OPCodeType.PUSH, [str(node.value).lower()]))

    @visitor.when(SignedFactor)
    def visit(self, node: SignedFactor):
        for child in node:
            self.visit(child)

        self.context.add_opcode(OPCode(OPCodeType.MINUS))

    @visitor.when(Factor)
    def visit(self, node: Factor):
        for child in node:
            self.visit(child)

        if isinstance(node[0], Not):
            self.context.add_opcode(OPCode(OPCodeType.BOOLEAN_NOT))