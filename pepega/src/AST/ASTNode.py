from src.pyPEG.MiniPascalGrammars import *

class ASTNode:
    renames = {
        "SimpleStatement" : 'Statement',
        "StructuredStatement": "Statement",

        "AssignmentStatement": "Statement",
        "ProcedureStatement": "Statement",
        "IfStatement": "Statement",
        "WhileStatement": "Statement",

        "SimpleExpression" : "Expression",
        "RelationalExpression": "Expression",
        "AdditiveExpression": "Expression",
        "MultiplicativeExpression": "Expression",

        "SignedFactor": "Factor",

        "IntegerConstant" : "Variable",
        "FloatConstant" : "Variable",
        "BooleanConstant" : "Variable",
        "StringConstant" : "Variable",

        "IndexedVariable" : "Variable",
        "EntireVariable" : "Variable"
    }

    folds = {
        "ExpressionList" : ["Expression"],
        "Expression" : ["Expression", "Factor"],
        "Factor": ["Factor", "Variable"],
        "Variable": ["Variable", "Identifier"],
        "CompoundStatement": ["StatementList"],
        "Statement" : ["Statement"]
    }

    def __init__(self, parent, token):
        self.nodes = []
        self.parent = parent
        self.token = token
        self.value = self.type_name = type(token).__name__
        self.scope = None

    def parse(self, raw):
        if isinstance(raw, Literal):
            self.value = raw.value
            self.type_name = raw.__class__.__name__
            return

        if isinstance(raw, str):
            self.value = raw
            self.type_name = "str"
            return

        for e in raw:
            child = ASTNode(self, e)
            self.nodes += [child]
            child.parse(e)

    def print(self, content = False, i = 0):
        c = ""
        if self.token and content:
            c = " '%s'" % self.token

        print("\t" * i + self.value + c)
        for sub in self.nodes:
            sub.print(content, i + 1)

    def tree(self, content = False) -> str:
        res = [str(self)]
        nodes = self.nodes
        for i, child in enumerate(nodes):
            cont = " '%s'" % self.token if self.token and content else ""
            ch0, ch = '├', '│'
            if i == len(nodes) - 1:
                ch0, ch = '└', ' '
            res.extend(((ch0 if j == 0 else ch) + ' ' + s + cont for j, s in enumerate(child.tree(content))))
        return res

    def rename(self):
        if self.type_name in self.renames:
            self.type_name = self.renames[self.type_name]

        for n in self.nodes:
            n.rename()

    def fold(self):
        if self.parent is None:
            for node in self.nodes:
                node.fold()
            return

        for folds in self.folds:
            if len(self.nodes) == 1 and self.type_name in folds and self.nodes[0].type_name in self.folds[self.type_name]:
                for i in range(len(self.parent.nodes)):
                    if self.parent.nodes[i] == self:
                        self.parent.nodes[i] = self.nodes[0]
                        self.nodes[0].parent = self.parent
                        break

        for node in self.nodes:
            node.fold()

    def assignVariable(self, name, value, type):
        if self.scope != None:
            self.scope[name] = {"value" : value, "type" : type}
        elif self.parent:
            self.parent.assignVariable(name, value, type)
        else:
            raise Exception("no scope for '%s'" % name)

    def findVariable(self, name):
        if self.scope != None:
            if name in self.scope:
                return self.scope[name]
        if self.parent:
            return self.parent.findVariable(name)
        raise Exception("unknown symbol '%s'" % name)

    def __str__(self) -> str:
        if len(self.nodes) < 1:
            return str(self.value) + " (" + type(self.token).__name__ + ")"

        return str(self.value)

    def __repr__(self) -> str:
        return self.__str__()

    def __getitem__(self, item):
        if isinstance(item, str):
            for node in self.nodes:
                if node.value == item:
                    return node
            raise Exception("Can't find node with name '%s'" % item)

        if isinstance(item, int):
            if item < 0 or item > len(self.nodes) - 1:
                raise Exception("Index out of range [%d, %d]", 0, len(self.nodes) - 1)
            return self.nodes[item]

    def execute(self):
        pass