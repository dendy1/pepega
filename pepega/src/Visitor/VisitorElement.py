class VisitorElement:
    def accept(self, visitor):
        visitor.visit(self)