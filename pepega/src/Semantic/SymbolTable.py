from src.Semantic.Symbols import *

class SymbolTable:
    def __init__(self, scope_name, scope_level, enclosing_scope):
        self._symbols = {}
        self.scope_name = scope_name
        self.scope_level = scope_level
        self.enclosing_scope : SymbolTable = enclosing_scope

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
        h1 = 'SCOPE (SCOPED SYMBOL TABLE)'
        lines = ['\n', h1, '=', * len(h1)]

        for header_name, header_value in (
            ('Scope name', self.scope_name),
            ('Scope level', self.scope_level),
            ('Enclosing scope', self.enclosing_scope.scope_name if self.enclosing_scope else None)
        ):
            lines.append('%-15s: %s' % (header_name, header_value))

        h2 = 'Scope (Scoped symbol table) contents'
        lines.extend([h2, '-' * len(h2)])
        lines.extend(
            ('%7s: %r' % (key, value))
            for key, value in self._symbols.items()
        )
        lines.append('\n')
        s = '\n'.join(lines)
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

        if self.enclosing_scope is not None:
            return self.enclosing_scope.lookup(name)