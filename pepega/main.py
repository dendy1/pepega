from pyPEG.MiniPascalGrammars import *
from pypeg2 import *
from C_AST.AST import AST

def main():
    filename = "debug.txt"
    file = open(filename, "r")
    if file.mode == 'r':
        program_lines = file.read()
        program = parse(program_lines, StatementPart, filename)

        print("\n== SOURCE LINES ==\n")
        print(program_lines)

        print("\n== pyPEG ==\n")
        print(program)

        print("\n== ABSTRACT SYNTAX TREE ==\n")
        ast = AST()
        ast.parse(program)
        ast.printCST()

if __name__ == "__main__":
    main()
