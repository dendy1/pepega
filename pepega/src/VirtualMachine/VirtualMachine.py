from typing import List, Callable

from src.Exceptions import VirtualMachineRuntimeError, VirtualMachineInvalidInstructionError, \
    VirtualMachineScopeOrderError
from src.VirtualMachine.BuiltinFunctions import IOFunctions
from src.VirtualMachine.VMContext import ExecutionContext
from src.Translation.OPCodes import OPCodeType, OPCode
from src.VirtualMachine.Values import BuiltinSubprogramValue, Value, NilValue, BooleanValue, NumberValue, StringValue, \
    IdentifierValue, CustomSubprogramValue
from src.VirtualMachine.utils import is_float_literal


def binary_operation_handler(func):
    def binary_operation_handler_internal(self, instruction: OPCode):
        right = self._pop_operand_value()
        left = self._pop_operand_value()
        value = func(self, left, right)
        self._context.push_value(value)

    return binary_operation_handler_internal


class VirtualMachine:
    def __init__(self, opcodes: List[OPCode]):
        self._context = ExecutionContext(opcodes)
        self._instructions_handlers = {
            OPCodeType.PUSH: self._handle_push,
            OPCodeType.POP: self._handle_pop,
            OPCodeType.MULTIPLY: self._handle_multiply,
            OPCodeType.SUM: self._handle_sum,
            OPCodeType.SUBTRACT: self._handle_subtract,
            OPCodeType.DIVIDE: self._handle_divide,
            OPCodeType.MODULO: self._handle_modulo,
            OPCodeType.DECLARE_LOCAL: self._handle_declare_local,
            OPCodeType.ASSIGN: self._handle_assign,
            OPCodeType.FUNCTION: self._handle_function,
            OPCodeType.CALL: self._handle_call,
            OPCodeType.RETURN: self._handle_return,
            OPCodeType.BEGIN_SCOPE: self._handle_begin_scope,
            OPCodeType.END_SCOPE: self._handle_end_scope,
            OPCodeType.BOOLEAN_AND: self._handle_boolean_and,
            OPCodeType.BOOLEAN_OR: self._handle_boolean_or,
            OPCodeType.BOOLEAN_NOT: self._handle_boolean_not,
            OPCodeType.BOOLEAN_MINUS: self._handle_minus,
            OPCodeType.COMPARE_GT: self._handle_compare_gt,
            OPCodeType.COMPARE_EQ: self._handle_compare_eq,
            OPCodeType.COMPARE_GE: self._handle_compare_ge,
            OPCodeType.COMPARE_LE: self._handle_compare_le,
            OPCodeType.COMPARE_LT: self._handle_compare_lt,
            OPCodeType.COMPARE_NEQ: self._handle_compare_ne,
            OPCodeType.JUMP: self._handle_jump,
            OPCodeType.JUMP_NEG: self._handle_jump_neg,
            OPCodeType.JUMP_POS: self._handle_jump_pos,
            OPCodeType.CONCAT: self._handle_concat,
        }

    def register_builtin_function(self, name: str, function: Callable):
        if self._context.global_scope.lookup(name):
            raise VirtualMachineRuntimeError("Failed to register builtin function {}: it already exists".format(name))

        self._context.global_scope.define(name, BuiltinSubprogramValue(name, function))

    def load_standard_library(self):
        self.register_builtin_function("printint", IOFunctions.print)
        self.register_builtin_function("printreal", IOFunctions.print)
        self.register_builtin_function("printstring", IOFunctions.print)

    def run(self):
        while not self._context.end_reached:
            instruction = self._context.current_instruction
            self._handle_instruction(instruction)

    def _handle_instruction(self, instruction: OPCode):
        handler: Callable = self._instructions_handlers.get(instruction.type)

        if handler is None:
            raise VirtualMachineInvalidInstructionError(
                "Invalid instruction: {} at address {}".format(instruction, self._context.instruction_address))

        self._context.move_to_next_instruction()
        handler(instruction)

    def _handle_push(self, instruction: OPCode):
        value: str = instruction.first_arg
        if value.startswith('"'):
            self._context.push_value(StringValue(str(value[1:-1])))
        elif is_float_literal(value):
            self._context.push_value(NumberValue(float(value)))
        elif value == "nil":
            self._context.push_value(NilValue())
        elif value == "true" or value == "false":
            self._context.push_value(BooleanValue(value == "true"))
        else:
            pushed_value = self._context.current_scope.lookup(value)

            if pushed_value is None:
                pushed_value = NilValue()

            self._context.push_value(pushed_value)

    def _handle_pop(self, instruction: OPCode):
        self._context.pop_value()

    @binary_operation_handler
    def _handle_multiply(self, left: Value, right: Value):
        # Handle multiply operation
        return left * right

    @binary_operation_handler
    def _handle_sum(self, left: Value, right: Value):
        # Handle sum operation
        return left + right

    @binary_operation_handler
    def _handle_subtract(self, left: Value, right: Value):
        # Handle subtract operation
        return left - right

    @binary_operation_handler
    def _handle_divide(self, left: Value, right: Value):
        # Handle divide (div) operation
        return left / right

    @binary_operation_handler
    def _handle_modulo(self, left: Value, right: Value):
        # Handle modulo (mod) operation
        return left % right

    @binary_operation_handler
    def _handle_boolean_and(self, left: Value, right: Value):
        # Handle boolean and operation
        return left.boolean_and(right)

    @binary_operation_handler
    def _handle_boolean_or(self, left: Value, right: Value):
        # Handle boolean or operation
        return left.boolean_or(right)

    @binary_operation_handler
    def _handle_compare_gt(self, left: Value, right: Value):
        # Handle boolean greater operation
        return left.__gt__(right)

    @binary_operation_handler
    def _handle_compare_eq(self, left: Value, right: Value):
        # Handle boolean equals operation
        return left.__eq__(right)

    @binary_operation_handler
    def _handle_compare_ge(self, left: Value, right: Value):
        # Handle boolean greater or equal  operation
        return left.__ge__(right)

    @binary_operation_handler
    def _handle_compare_le(self, left: Value, right: Value):
        # Handle boolean less or equal to operation
        return left.__le__(right)

    @binary_operation_handler
    def _handle_compare_lt(self, left: Value, right: Value):
        # Handle boolean less operation
        return left.__lt__(right)

    @binary_operation_handler
    def _handle_compare_ne(self, left: Value, right: Value):
        # Handle boolean not equals operation
        return left.__ne__(right)

    @binary_operation_handler
    def _handle_concat(self, left: Value, right: Value):
        # Handle boolean concatenation operation
        return left.concat(right)

    def _handle_jump_neg(self, instruction: OPCode):
        # Popping last value from stack
        comparison_result = self._context.pop_value()

        # If last value not boolean value -> raise Exception
        if not isinstance(comparison_result, BooleanValue):
            raise VirtualMachineInvalidInstructionError(
                "Impossible to perform jump on negative condition: value on stack top is not boolean")

        if comparison_result.value is False:
            # If last boolean value is False -> perform jump to specified address
            jump_address = instruction.first_arg
            self._context.perform_jump(jump_address)
        else:
            pass

    def _handle_jump_pos(self, instruction: OPCode):
        # Popping last value from stack
        comparison_result = self._context.pop_value()

        # If last value not boolean value -> raise Exception
        if not isinstance(comparison_result, BooleanValue):
            raise VirtualMachineInvalidInstructionError(
                "Impossible to perform jump on positive condition: value on stack top is not boolean")

        if comparison_result.value is True:
            # If last boolean value is True -> perform jump to specified address
            jump_address = instruction.first_arg
            self._context.perform_jump(jump_address)
        else:
            pass

    def _handle_jump(self, instruction: OPCode):
        # Perform jump to specified address
        jump_address = instruction.first_arg
        self._context.perform_jump(jump_address)

    def _handle_boolean_not(self, instruction: OPCode):
        # Handle boolean not unary operation
        right = self._pop_operand_value()
        self._context.push_value(right.boolean_not())

    def _handle_minus(self, instruction: OPCode):
        # Handle boolean minus unary operation
        right = self._pop_operand_value()
        self._context.push_value(-right)

    def _handle_declare_local(self, instruction: OPCode):
        # Handle variable declaration in local scope
        value_identifier = instruction.first_arg
        self._context.current_scope.define(value_identifier, NilValue())

    def _handle_assign(self, instruction: OPCode):
        # Popping last value from stack
        value = self._pop_operand_value()
        value_identifier = instruction.first_arg

        # Handle variable declaration in local scope
        self._context.current_scope.define(value_identifier, value)

    def _handle_call(self, instruction: OPCode):
        # Popping last callable value (BuiltinFunctionValue or CustomFunctionValue) from stack
        callable_value = self._context.pop_value()

        if isinstance(callable_value, BuiltinSubprogramValue):
            # Calling predefined function
            args_count = instruction.first_arg
            args = []

            for i in range(args_count):
                arg = self._pop_operand_value()
                args.append(arg)

            args = reversed(args)

            call_result = callable_value.call(*args)
            assert isinstance(call_result, Value)

            self._context.push_value(call_result)
        elif isinstance(callable_value, CustomSubprogramValue):
            # Calling user defined function
            self._context.enter_to_call_context(callable_value)
        else:
            raise VirtualMachineInvalidInstructionError(
                "Impossible to call value '{}': it is not callable".format(callable_value))

    def _handle_return(self, instruction: OPCode):
        self._context.return_from_call_context()

    def _handle_function(self, instruction: OPCode):
        # Handling function declaration
        # Creating new local scope for function
        #self._context.create_scope()

        # Creating function value object
        function_name = instruction.first_arg
        function_value = CustomSubprogramValue(function_name, self._context.instruction_address,
                                               self._context.current_scope)

        # Defining function in current scope
        self._context.current_scope.define(function_name, function_value)

        # Skip instructions until function end
        if self._context.current_instruction.type != OPCodeType.BEGIN_SCOPE:
            raise VirtualMachineInvalidInstructionError("'begin_scope' opcode must follow after function definition")

        scopes_stack = [self._context.current_instruction.type]

        while len(scopes_stack) > 0:
            self._context.skip_instruction()

            current_instruction = self._context.current_instruction

            if current_instruction.type == OPCodeType.BEGIN_SCOPE:
                scopes_stack.append(current_instruction.type)
            elif current_instruction.type == OPCodeType.END_SCOPE:
                ended_scope = scopes_stack.pop()

                if ended_scope != OPCodeType.BEGIN_SCOPE:
                    raise VirtualMachineScopeOrderError(
                        "Corresponding 'begin_scope' opcode is expected for `end_scope` "
                        "but other 'end_scope' is reached")
            else:
                pass

        # Skip function 'end_scope' opcode
        if not self._context.end_reached:
            self._context.skip_instruction()

    def _handle_begin_scope(self, instruction: OPCode):
        self._context.create_scope()

    def _handle_end_scope(self, instruction: OPCode):
        self._context.destroy_scope()

    def _pop_operand_value(self) -> Value:
        value = self._context.pop_value()

        if isinstance(value, IdentifierValue):
            value = self._context.current_scope.lookup(value.value)

            if value is None:
                value = NilValue()

        return value