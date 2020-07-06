from enum import auto, Enum
from typing import Optional, List


class OPCodeType(Enum):
    # Declares a function (save pointer to function in current scope)
    # Example: function test
    FUNCTION = auto()

    # Returns from the function (the return values should be pushed to the stack)
    # Example: return 5
    RETURN = auto()

    # Pushes value to the stack
    # Example: push 10, push var
    PUSH = auto()

    # Pops value from the stack
    # Example: pop
    POP = auto()

    # Declares variable in local scope
    # Example: assign var 1
    DECLARE_LOCAL = auto()

    # Gets value from the stack and assigns in to the variable in local scope or nearest appropriate scope
    # Example: assign var 1
    ASSIGN = auto()

    # Pops value from the stack and calls it with specified number of arguments
    # Example: call 3
    CALL = auto()

    # Gets two values from the stack, sums them and pushes result
    # Example: sum
    SUM = auto()

    # Jumps to the label
    # Example: jump start
    JUMP = auto()

    # Jumps to the label if test was failed
    # Example: jump_neg start
    JUMP_NEG = auto()

    # Jumps to the label if test was succeed
    # Example: jump_pos start
    JUMP_POS = auto()

    # Gets two values from the stack, subtracts them and pushes result
    # Example: subtract
    SUBTRACT = auto()

    # Gets two values from the stack, multiplies them and pushes result
    # Example: multiply
    MULTIPLY = auto()

    # Gets two values from the stack, divides them and pushes result
    # Example: divide
    DIVIDE = auto()

    # Gets two values from the stack, divides them and pushes result
    # Example: modulo
    MODULO = auto()

    # Starts new visibility scope
    # Example: begin_scope
    BEGIN_SCOPE = auto()

    # Destroys current visibility scope
    # Example: end_scope
    END_SCOPE = auto()

    # Gets two values from the stack, performs logical "and" for them and pushes result
    # Example: boolean_and
    BOOLEAN_AND = auto()

    # Gets two values from the stack, performs logical "or" for them and pushes result
    # Example: boolean_or
    BOOLEAN_OR = auto()

    # Gets value from the stack, inverse its sign and pushes result
    # Example: boolean_minus
    BOOLEAN_MINUS = auto()

    # Gets value from the stack, inverses its logical value and pushes result
    # Example: boolean_or
    BOOLEAN_NOT = auto()

    # Gets two values from the stack, compares them and pushes result
    # Example: cmp_eq
    COMPARE_EQ = auto()

    # Gets two values from the stack, compares them and pushes result
    # Example: cmp_neq
    COMPARE_NEQ = auto()

    # Gets two values from the stack, compares them and pushes result
    # Example: cmp_lt
    COMPARE_LT = auto()

    # Gets two values from the stack, compares them and pushes result
    # Example: cmp_gt
    COMPARE_GT = auto()

    # Gets two values from the stack, compares them and pushes result
    # Example: cmp_le
    COMPARE_LE = auto()

    # Gets two values from the stack, compares them and pushes result
    # Example: cmp_ge
    COMPARE_GE = auto()

    # Gets two values from the stack, concats them and pushes result
    # Example: concat
    CONCAT = auto()


class OPCodeArgDefinition:
    def __init__(self, arg_type):
        self._type = arg_type

    @property
    def type(self):
        return self._type


class OPCodeDefinition:
    def __init__(self, name: str, args: Optional[List[OPCodeArgDefinition]] = None):
        self._name = name
        self._args = args

    @property
    def name(self):
        return self._name

    @property
    def args(self):
        return self._args


class OPCodesDefinitions:
    _opcodes_definitions = {
        OPCodeType.FUNCTION: OPCodeDefinition("FUNCTION", [OPCodeArgDefinition(str)]),
        OPCodeType.RETURN: OPCodeDefinition("RETURN", [OPCodeArgDefinition(int)]),
        OPCodeType.PUSH: OPCodeDefinition("PUSH", [OPCodeArgDefinition(str)]),
        OPCodeType.POP: OPCodeDefinition("POP"),
        OPCodeType.DECLARE_LOCAL: OPCodeDefinition("DECLARE_LOCAL", [OPCodeArgDefinition(str)]),
        OPCodeType.ASSIGN: OPCodeDefinition("ASSIGN", [OPCodeArgDefinition(str)]),
        OPCodeType.CALL: OPCodeDefinition("CALL", [OPCodeArgDefinition(int)]),
        OPCodeType.SUM: OPCodeDefinition("SUM"),
        OPCodeType.JUMP: OPCodeDefinition("JUMP", [OPCodeArgDefinition(int)]),
        OPCodeType.JUMP_NEG: OPCodeDefinition("JUMP_NEG", [OPCodeArgDefinition(int)]),
        OPCodeType.JUMP_POS: OPCodeDefinition("JUMP_POS", [OPCodeArgDefinition(int)]),
        OPCodeType.SUBTRACT: OPCodeDefinition("SUBTRACT"),
        OPCodeType.MULTIPLY: OPCodeDefinition("MULTIPLY"),
        OPCodeType.DIVIDE: OPCodeDefinition("DIVIDE"),
        OPCodeType.BEGIN_SCOPE: OPCodeDefinition("BEGIN_SCOPE"),
        OPCodeType.END_SCOPE: OPCodeDefinition("END_SCOPE"),
        OPCodeType.BOOLEAN_AND: OPCodeDefinition("BOOLEAN_AND"),
        OPCodeType.BOOLEAN_OR: OPCodeDefinition("BOOLEAN_OR"),
        OPCodeType.BOOLEAN_NOT: OPCodeDefinition("BOOLEAN_NOT"),
        OPCodeType.BOOLEAN_MINUS: OPCodeDefinition("BOOLEAN_MINUS"),
        OPCodeType.COMPARE_EQ: OPCodeDefinition("COMPARE_EQ"),
        OPCodeType.COMPARE_NEQ: OPCodeDefinition("COMPARE_NE"),
        OPCodeType.COMPARE_LT: OPCodeDefinition("COMPARE_LT"),
        OPCodeType.COMPARE_GT: OPCodeDefinition("COMPARE_GT"),
        OPCodeType.COMPARE_LE: OPCodeDefinition("COMPARE_LE"),
        OPCodeType.COMPARE_GE: OPCodeDefinition("COMPARE_GE"),
        OPCodeType.CONCAT: OPCodeDefinition("CONCAT"),
    }

    @classmethod
    def get_definition(cls, opcode_type: OPCodeType) -> OPCodeDefinition:
        return cls._opcodes_definitions.get(opcode_type)


class OPCode:
    def __init__(self, opcode_type: OPCodeType, args = None):
        if args is None:
            args = []

        self._opcode_type = opcode_type
        self._args = args

    @property
    def type(self) -> OPCodeType:
        return self._opcode_type

    @property
    def args(self) -> Optional[List]:
        return self._args

    @property
    def first_arg(self):
        return self.get_arg(0)

    @property
    def second_arg(self):
        return self.get_arg(1)

    def get_arg(self, arg_index: int):
        return self._args[arg_index]

    def __str__(self):
        return "OPCode(type={}, args={})".format(self._opcode_type, self._args)

    __repr__ = __str__