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
        # список дочерних узлов
        self.nodes = []

        # ссылка на родителя
        self.parent = parent

        # токен, возвращаемый pyPEG2
        self.token = token

        # значение токена (применимо к литералам) и его тип
        # если токен не литерал, то value == type_name
        self.value = self.type_name = type(token).__name__

    # парсинг дерева, которое возвращаяет pyPEG2 в собственную структуру
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

    # вывод дерева в строку
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

    # переименование некоторых узлов для последующего уменьшения дерева
    def rename(self):
        if self.type_name in self.renames:
            self.type_name = self.renames[self.type_name]

        for n in self.nodes:
            n.rename()

    # удаление ненужных узлов, которые появляются в процессе парсинга
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

    def __str__(self) -> str:
        return str(self.value)

    __repr__ = __str__