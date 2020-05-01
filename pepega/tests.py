from src.pyPEG.MiniPascalGrammars import *
from src.newAST.NewParser import Parser
from utils import get_list_of_files
import io, traceback

def run_tests():
    files = get_list_of_files('test\inputs\simple')
    for filename in files:
        f = open(filename, 'r')
        program_lines = f.read().lower()
        f.close()

        output_filename = filename.replace('inputs', 'outputs')
        parser = Parser()

        f = io.open(output_filename, 'w+', encoding="utf-8")
        try:
            parser.parse(program_lines, filename)
            parser.fold()
            print(*parser.AST.tree(), sep='\n', file=f)
            parser.semantic_check()
        except:
            track = traceback.format_exc()
            print("Failed in " + filename)
            print(track, sep='\n', file=f)
        finally:
            f.close()