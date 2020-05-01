from src.newAST.Symbols import BuiltinTypeSymbol

class SymbolTable:
    def __init__(self):
        self._symbols = {}

    def __str__(self):
        s = 'Symbols: {symbols}'.format(
            symbols=[value for value in self._symbols.values()]
        )
        return s

    __repr__ = __str__

    def define(self, symbol):
        self._symbols[symbol.name] = symbol

    def lookup(self, name):
        return self._symbols.get(name)