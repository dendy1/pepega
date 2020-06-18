from typing import Optional

from src.VirtualMachine.Values import Value


class Scope:
    def __init__(self, enclosing_scope: Optional['Scope']):
        self._enclosing_scope = enclosing_scope
        self._values = {}

    def define(self, name: str, value: Value):
        if self.lookup(name, True) is not None:
            self.define_local(name, value)
        else:
            if self._enclosing_scope is not None:
                self._enclosing_scope.define(name, value)
            else:
                self.define_local(name, value)

    def define_local(self, name: str, value: Value):
        self._values[name] = value

    def lookup(self, name: str, current_scope_only = False):
        value = self._values.get(name)

        if value is not None:
            return value

        if current_scope_only:
            return None

        if self._enclosing_scope is not None:
            return self._enclosing_scope.lookup(name)

    def __str__(self):
        h1 = 'SCOPE (SCOPED VALUE TABLE)'
        lines = ['\n', h1]
        lines.extend(
            ('%7s: %r' % (key, value))
            for key, value in self._values.items()
        )

        lines.append('\n')
        s = '\n'.join(lines)
        return s

    __repr__ = __str__