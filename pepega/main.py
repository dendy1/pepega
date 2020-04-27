from pyPEG.MiniPascalGrammars import *
from pypeg2 import *
from AST.Parser import Parser
import os, io


def getListOfFiles(dirName):
    # create a list of file and sub directories
    # names in the given directory
    listOfFile = os.listdir(dirName)
    allFiles = list()
    # Iterate over all the entries
    for entry in listOfFile:
        # Create full path
        fullPath = os.path.join(dirName, entry)
        # If entry is a directory then get the list of files in this directory
        if os.path.isdir(fullPath):
            allFiles = allFiles + getListOfFiles(fullPath)
        else:
            allFiles.append(fullPath)

    return allFiles

def main():
    files = getListOfFiles('_Inputs')
    for filename in files:
        f = open(filename, 'r')
        program_lines = f.read().lower()
        f.close()

        try:
            program = parse(program_lines, Program, filename, comment=comment_cpp)
            parser = Parser(program)
        except SyntaxError as e:
            filename = filename.replace('_Input', '_Output')
            f = io.open(filename, 'w+', encoding="utf-8")
            print(e, sep='\n', file=f)
            print(e)
            f.close()
        else:
            filename = filename.replace('_Input', '_Output')
            f = io.open(filename, 'w+', encoding="utf-8")
            print(*parser.ASTroot.tree(False), sep='\n', file=f)
            f.close()

def debug():
    f = open("debug.txt", 'r')
    program_lines = f.read().lower()
    f.close()

    program = parse(program_lines, Identifier, "debug.txt", comment=comment_cpp)
    parser = Parser(program)
    parser.printAST()

if __name__ == "__main__":
    main()
