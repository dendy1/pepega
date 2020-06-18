class Error(Exception):
    def __init__(self, message = None):
        self.message = f'{self.__class__.__name__}: {message}'

class SemanticError(Error):
    pass

class TranslatorError(Error):
    pass

class VirtualMachineInvalidOperationError(Error):
    pass

class VirtualMachineScopeOrderError(Error):
    pass

class VirtualMachineRuntimeError(Error):
    pass

class VirtualMachineInvalidInstructionError(Error):
    pass