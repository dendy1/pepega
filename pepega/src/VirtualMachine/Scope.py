from typing import Optional

from src.VirtualMachine.Values import Value


class Scope:
    def __init__(self, enclosing_scope: Optional['Scope']):
        self._values = {}
        self._enclosing_scope = enclosing_scope

    @property
    def enclosing_scope(self):
        return self._enclosing_scope

    def define(self, name: str, value: Value):
        self._values[name] = value

    def lookup(self, name: str, current_scope_only = False):
        value = self._values.get(name)

        if value is not None:
            return value

        if current_scope_only:
            return None

        if self._enclosing_scope is not None:
            return self._enclosing_scope.lookup(name)
        else:
            return None