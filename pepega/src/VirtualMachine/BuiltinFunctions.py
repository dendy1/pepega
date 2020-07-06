import math

from src.Exceptions import VirtualMachineInvalidOperationError
from src.VirtualMachine.Values import StringValue, NilValue, NumberValue, Value, BooleanValue, BuiltinSubprogramValue, \
    CustomSubprogramValue


class IOFunctions:
    @classmethod
    def print(cls, *args):
        printed_args = []

        for arg in args:
            printed_args.append(cls._get_value_representation(arg))

        print(*printed_args)
        return NilValue()

    @staticmethod
    def _get_value_representation(value: Value):
        if isinstance(value, NumberValue):
            return str(value.value)
        elif isinstance(value, StringValue):
            return str(value.value)
        elif isinstance(value, NilValue):
            return 'nil'
        elif isinstance(value, BooleanValue):
            return 'true' if value.value else 'false'
        elif isinstance(value, BuiltinSubprogramValue):
            return 'builtin_function_instance(name=\"{}\")'.format(value.name)
        elif isinstance(value, CustomSubprogramValue):
            return 'function_instaёnce(name=\"{}\", addr={})'.format(value.name, value.instruction_address)
        else:
            raise VirtualMachineInvalidOperationError(
                "Impossible to get value representation for value {}".format(value))