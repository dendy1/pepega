from pyPEG.MiniPascalGrammars import *

class ASTNode:
    def __init__(self, parent, type_name):
        self.parent = parent
        self.type_name = type_name
        self.name = None
        self.content = None
        self.nodes = []

    def parse(self, raw):
        if raw is None:
            return

        if isinstance(raw, str):
            self.name = raw
            return

        self.content = raw
        for e in raw:
            child = ASTNode(self, type(e).__name__)
            self.nodes += [child]
            child.parse(e)

    def print(self, content = False, i = 0):
        c = ""
        if self.content and content:
            c = " '%s'" % self.content

        print("\t" * i + self.name + c)
        for sub in self.nodes:
            sub.print(content, i + 1)

    def tree(self, content):
        res = [str(self)]
        nodes = self.nodes
        for i, child in enumerate(nodes):
            cont = " '%s'" % self.content if self.content and content else ""
            ch0, ch = '├', '│'
            if i == len(nodes) - 1:
                ch0, ch = '└', ' '
            res.extend(((ch0 if j == 0 else ch) + ' ' + s + cont for j, s in enumerate(child.tree(content))))
        return res

    def __str__(self) -> str:
        return self.type_name if self.name is None else self.name

    def __repr__(self):
        return self.__str__()

    def execute(self):
        pass