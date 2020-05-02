from src.newAST.Symbols import ProcedureSymbol, VariableSymbol

class SymbolTable:
    def __init__(self, scope_name, scope_level, parent_scope):
        self._symbols = {}
        self.scope_name = scope_name
        self.scope_level = scope_level
        self.parent_scope = parent_scope

        self._initbuildins()


    def _initbuildins(self):
        self.define(ProcedureSymbol('printint', None, [VariableSymbol('a', 'integer')]))
        self.define(ProcedureSymbol('printreal', None, [VariableSymbol('a', 'real')]))
        self.define(ProcedureSymbol('printstring', None, [VariableSymbol('a', 'string')]))

    def __str__(self):
        s = 'Scope: {scope_name}\nScope level: {scope_level}\nSymbols: {symbols}'.format(
            symbols=[value for value in self._symbols.values()],
            scope_name = self.scope_name,
            scope_level = self.scope_level
        )
        return s

    __repr__ = __str__

    def define(self, symbol):
        self._symbols[symbol.name] = symbol

    def lookup(self, name, current_scope_only = False):
        symbol = self._symbols.get(name)

        if symbol is not None:
            return symbol

        if current_scope_only:
            return None

        if self.parent_scope is not None:
            return self.parent_scope.lookup(name)