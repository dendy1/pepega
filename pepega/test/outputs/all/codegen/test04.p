Traceback (most recent call last):
  File "F:\Projects\pepega\pepega\tests.py", line 21, in run_tests
    compiler.parse(program_lines, filename)
  File "F:\Projects\pepega\pepega\src\Compiler.py", line 15, in parse
    self.CST = parse(program_lines, Program, filename=filename, comment=comment_cpp)
  File "F:\Projects\pepega\venv\lib\site-packages\pypeg2\__init__.py", line 667, in parse
    t, r = parser.parse(text, thing)
  File "F:\Projects\pepega\venv\lib\site-packages\pypeg2\__init__.py", line 794, in parse
    raise r
  File "test\inputs\all\codegen\test04.p", line 15
    writeln('hello, wo
    ^
SyntaxError: expecting 'end'

