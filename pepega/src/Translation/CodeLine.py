from typing import Union

from src.Translation.CodeLabel import CodeLabel


class CodeLine:
    def __init__(self, command: str, *params: Union[str, CodeLabel], label: CodeLabel = None):
        self.command = command
        self.params = params
        self.label = label

    def __str__(self):
        line = ''
        if self.label:
            line += str(self.label) + ': '
        line += self.command
        for p in self.params:
            line += ' ' + str(p)
        return line