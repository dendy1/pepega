from pypeg2 import *

class VisitorElement:
    def accept(self, visitor):
        visitor.visit(self)

class CustomASTNode:
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.parent = None

    __renames = {
        "SimpleStatement": 'Statement',
        "StructuredStatement": "Statement",

        "AssignmentStatement": "Statement",
        "ProcedureStatement": "Statement",
        "IfStatement": "Statement",
        "WhileStatement": "Statement",

        "SimpleExpression": "Expression",
        "RelationalExpression": "Expression",
        "AdditiveExpression": "Expression",
        "MultiplicativeExpression": "Expression",

        "SignedFactor": "Factor",

        "IntegerConstant": "Variable",
        "FloatConstant": "Variable",
        "BooleanConstant": "Variable",
        "StringConstant": "Variable",

        "IndexedVariable": "Variable",
        "EntireVariable": "Variable"
    }

    __folds = {
        "ExpressionList": ["Expression"],
        "Expression": ["Expression", "Factor"],
        "Factor": ["Factor", "Variable"],
        "Variable": ["Variable", "Identifier"],
        "CompoundStatement": ["StatementList"],
        "Statement": ["Statement"]
    }

    def __renamed(self):
        return self.__renames[self.__str__()]

    # вывод дерева в строку
    def tree(self) -> str:
        res = [self.__str__()]
        nodes = self
        for i, child in enumerate(self):

            if isinstance(child, str) or isinstance(child, Literal):
                res.append(('└ ' + child.__str__()))
                return res

            ch0, ch = '├', '│'
            if i == len(self) - 1:
                ch0, ch = '└', ' '
            res.extend(((ch0 if j == 0 else ch) + ' ' + s for j, s in enumerate(child.tree())))
        return res

    # удаление ненужных узлов, которые появляются в процессе парсинга
    def fold(self):
        for node in self:

            if isinstance(node, str) or isinstance(node, Literal):
                return

            node.parent = self

        if self.parent is None:
            for node in self:
                node.fold()
            return

        for folds in self.__folds:
            try:
                self_renamed = self.__renamed()
                child_renamed = self[0].__renamed()
            except KeyError:
                continue
            else:
                if len(self) == 1 and self_renamed in folds and child_renamed in self.__folds[self_renamed]:
                    for i in range(len(self.parent)):
                        if self.parent[i] == self:
                            self.parent[i] = self[0]
                            self[0].parent = self.parent
                            break

        for node in self:
            node.fold()

class CustomNamespace(Namespace, CustomASTNode, VisitorElement):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        CustomASTNode.__init__(self)

class CustomList(List, CustomASTNode, VisitorElement):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        CustomASTNode.__init__(self)

class CustomKeyword(Keyword, CustomASTNode, VisitorElement):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        CustomASTNode.__init__(self)

class CustomEnum(Enum, CustomASTNode, VisitorElement):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        CustomASTNode.__init__(self)

class CustomLiteral(Literal, CustomASTNode, VisitorElement):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        CustomASTNode.__init__(self)