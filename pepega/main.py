from pyPEG.MiniPascalGrammars import *
from pypeg2 import *
from AST.Parser import Parser

def main():
    filename = "minipascal.txt"
    file = open(filename, "r")
    if file.mode == 'r':
        program_lines = file.read()
        program = parse(program_lines, Program, filename)

        print("\n== SOURCE LINES ==\n")
        print(program_lines)

        print("\n== pyPEG ==\n")
        print(program)

        parser = Parser(program)

        print("\n== CONTEXT SYNTAX TREE ==\n")
        parser.printCST()

        print("\n== ABSTRACT SYNTAX TREE ==\n")
        parser.printAST()

        #parser.printScope()

if __name__ == "__main__":
    main()
