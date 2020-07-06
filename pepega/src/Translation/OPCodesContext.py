from typing import List
from src.Translation.OPCodes import OPCode, OPCodesDefinitions


class OPCodesContext:
    def __init__(self):
        self._opcodes: List[OPCode] = []

    @property
    def program(self) -> List[OPCode]:
        return self._opcodes

    @property
    def current_address(self) -> int:
        return len(self._opcodes) - 1

    @property
    def current_opcode(self) -> OPCode:
        return self._opcodes[-1]

    @property
    def program_text(self) -> [str, ...]:
        bytecode = []
        line_index = 0

        for opcode in self._opcodes:
            opcode_definition = OPCodesDefinitions.get_definition(opcode.type)

            bytecode.append("{}:\t\t {} {}".format(line_index, opcode_definition.name,
                                             " ".join([str(arg) for arg in opcode.args])))

            line_index += 1

        return bytecode

    def add_opcode(self, opcode: OPCode):
        self._opcodes.append(opcode)