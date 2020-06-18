from src.Exceptions import SemanticError, TranslatorError
from src.Compiler import Compiler
from src.VirtualMachine.VirtualMachine import VirtualMachine
from utils import get_list_of_files
import io, traceback
import sys

def run_tests():
    files = get_list_of_files('test\inputs')
    for filename in files:
        f = open(filename, 'r')
        program_lines = f.read().lower()
        f.close()

        output_filename = filename.replace('inputs', 'outputs')
        compiler = Compiler()

        orig_stdout = sys.stdout
        f = io.open(output_filename, 'w+', encoding="utf-8")
        try:
            compiler.parse(program_lines, filename)
            compiler.fold()

            print("======== AST ========", file=f)
            print(*compiler.AST.tree(), sep='\n', file=f)

            print("\n\n======== AST AFTER SEMANTIC ANALYSIS ========", file=f)
            compiler.semantic_check()
            print(*compiler.AST.tree(), sep='\n', file=f)

            print("\n\n======== BYTECODE ========", file=f)
            compiler.generate_code()
            print(*compiler.bytecode, sep='\n', file=f)

            #print("\n\n======== OPCODES ========", file=f)
            #compiler.generate_code()
            #print(*compiler.opcodes_context.program, sep='\n', file=f)

            print("\n\n======== PROGRAM RESULT ========", file=f)
            sys.stdout = f
            virtual_machine = VirtualMachine(compiler.opcodes_context.program)
            virtual_machine.load_standard_library()
            virtual_machine.run()
            sys.stdout = orig_stdout

        except SemanticError as e:
            sys.stdout = orig_stdout
            track = traceback.format_exc()
            print("Failed in " + filename + ": " + e.__str__())
            print(track, sep='\n', file=f)
        except TranslatorError as e:
            sys.stdout = orig_stdout
            track = traceback.format_exc()
            print("Failed in " + filename + ": " + e.__str__())
            print(track, sep='\n', file=f)
        except Exception as e:
            sys.stdout = orig_stdout
            track = traceback.format_exc()
            print("Failed in " + filename + ": " + e.__str__())
            print(track, sep='\n', file=f)
        finally:
            f.close()
