class CodeLabel:
    def __init__(self):
        self.index = None

    def __str__(self):
        return 'IL_' + str(self.index)