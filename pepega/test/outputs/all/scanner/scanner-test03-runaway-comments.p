Traceback (most recent call last):
  File "F:\Projects\pepega\pepega\tests.py", line 17, in run_tests
    parser.parse(program_lines, filename)
  File "F:\Projects\pepega\pepega\src\Parser.py", line 9, in parse
    self.CST = parse(program_lines, Program, filename=filename, comment=comment_cpp)
  File "F:\Projects\pepega\venv\lib\site-packages\pypeg2\__init__.py", line 667, in parse
    t, r = parser.parse(text, thing)
  File "F:\Projects\pepega\venv\lib\site-packages\pypeg2\__init__.py", line 794, in parse
    raise r
  File "test\inputs\all\scanner\scanner-test03-runaway-comments.p", line 5
    var gg, hh, mm, pp,
    ^
SyntaxError: expecting 'begin'

