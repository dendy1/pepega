from src.pyPEG.MiniPascalGrammars import *
from src.newAST.NewParser import Parser
from utils import get_list_of_files
import io

def run_tests():
    files = get_list_of_files('test\inputs')
    for filename in files:
        f = open(filename, 'r')
        program_lines = f.read().lower()
        f.close()

        output_filename = filename.replace('inputs', 'outputs')

        try:
            print("Testing: " + filename)
            program = parse(program_lines, Program, filename, comment=comment_cpp)
            parser = Parser(program)
            print("Testing succeed")
        except SyntaxError as e:
            print("Testing failed: " + e.__str__())
        except RecursionError as e:
            print("Testing failed: " + e.__str__())
        else:
            f = io.open(output_filename, 'w+', encoding="utf-8")
            #print(*parser.ASTroot.tree(False), sep='\n', file=f)
            print(*parser.AST.tree(), sep='\n', file=f)
            f.close()