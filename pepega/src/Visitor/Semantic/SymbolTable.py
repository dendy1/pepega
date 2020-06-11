from src.Visitor.Semantic.Symbols import *

class SymbolTable:
    def __init__(self, scope_name, scope_level, parent_scope):
        self._symbols = {}
        self.scope_name = scope_name
        self.scope_level = scope_level
        self.parent_scope = parent_scope

        self._initbuildins()

    def _initbuildins(self):
        INTEGER = TypeSymbol.from_str('integer')
        REAL = TypeSymbol.from_str('real')
        BOOLEAN = TypeSymbol.from_str('boolean')
        STRING = TypeSymbol.from_str('string')
        VOID = TypeSymbol.from_str('void')

        self.define(INTEGER)
        self.define(REAL)
        self.define(BOOLEAN)
        self.define(STRING)
        self.define(VOID)

        self.define(ProcedureSymbol('printint', VOID, [VariableSymbol('input', INTEGER), ]))
        self.define(ProcedureSymbol('printreal', VOID, [VariableSymbol('input', REAL), ]))
        self.define(ProcedureSymbol('printstring', VOID, [VariableSymbol('input', STRING), ]))

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