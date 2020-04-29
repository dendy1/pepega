class ASTNode:
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
        "Statement": ["Statement", "StatementList"],
        "CompoundStatement": ["Statement", "StatementList"]
    }

    def __renamed(self):
        return self.__renames.get(self.__class__.__name__, self.__class__.__name__)

    # вывод дерева в строку
    def tree(self) -> str:
        res = [self.__class__.__name__]
        for i, child in enumerate(self):
            from pypeg2 import Literal

            if isinstance(child, Literal) or isinstance(child, str):
                ch0 = '└' if i == len(self) - 1 else '├'
                res.append(ch0 + ' ' + child.__str__())
            else:
                ch0, ch = ('└', ' ') if i == len(self) - 1 else ('├', '│')
                res.extend(((ch0 if j == 0 else ch) + ' ' + s for j, s in enumerate(child.tree())))
        return res

    def set_parent(self):
        for child in self:
            from pypeg2 import Literal
            if isinstance(child, Literal):
                child.parent = self
                continue
            elif isinstance(child, str):
                continue

            child.parent = self
            child.set_parent()

    # удаление ненужных узлов, которые появляются в процессе парсинга
    def fold(self):
        from src.newAST.pyPEGElements import CustomLiteral
        if isinstance(self, CustomLiteral) or isinstance(self, str):
            return

        for folds in self.__folds:
            if isinstance(self[0], str):
                continue

            self_renamed = self.__renamed()
            child_renamed = self[0].__renamed()

            if len(self) == 1 and self_renamed in folds and child_renamed in self.__folds[self_renamed]:
                for i in range(len(self.parent)):
                    try:
                        if self.parent[i] == self:
                            self.parent[i] = self[0]
                            self[0].parent = self.parent
                            break
                    except TypeError:
                        continue
                    except AttributeError:
                        continue



        for child in self:
            from src.newAST.pyPEGElements import CustomLiteral
            if isinstance(child, CustomLiteral) or isinstance(child, str):
                continue
            child.fold()