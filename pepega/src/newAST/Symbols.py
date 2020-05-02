class Symbol:
    def __init__(self, name, type=None):
        self.name = name
        self.type = type

class VariableSymbol(Symbol):
    def __init__(self, name, type):
        super().__init__(name, type)

    def __str__(self):
        return '<{name}:{type}>'.format(name=self.name, type=self.type)

    __repr__ = __str__

class ProcedureSymbol(Symbol):
    def __init__(self, name, type = None, params=None):
        super().__init__(name, type)
        self.params = params if params is not None else []

    def __str__(self):
        return '<{name}, ({params})>'.format(name=self.name,params=self.params)

    __repr__ = __str__

class BuiltinTypeSymbol(Symbol):
    def __init__(self, name):
        super().__init__(name)

    def __str__(self):
        return self.name

    __repr__ = __str__