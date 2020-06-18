======== AST ========
Program
├ Identifier
│ └ foo
├ Identifier
│ └ input
├ Identifier
│ └ output
├ Identifier
│ └ error
└ Block
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ abc
  │   └ Type
  │     └ integer
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ abc
  │   └ Type
  │     └ ArrayType
  │       ├ IndexRange
  │       │ ├ IntegerConstant
  │       │ │ └ 23
  │       │ └ IntegerConstant
  │       │   └ 57
  │       └ Type
  │         └ ArrayType
  │           ├ IndexRange
  │           │ ├ IntegerConstant
  │           │ │ └ 23
  │           │ └ IntegerConstant
  │           │   └ 57
  │           └ Type
  │             └ real
  ├ SubprogramDeclarations
  │ └ SubprogramDeclaration
  │   ├ SubprogramHeader
  │   │ ├ Identifier
  │   │ │ └ abc
  │   │ ├ ParametersList
  │   │ │ └ Parameters
  │   │ │   ├ Identifier
  │   │ │   │ └ x
  │   │ │   └ Type
  │   │ │     └ integer
  │   │ └ Type
  │   │   └ integer
  │   └ Block
  │     └ StatementList
  │       └ AssignmentStatement
  │         ├ EntireVariable
  │         │ └ Identifier
  │         │   └ x
  │         └ AdditiveExpression
  │           ├ EntireVariable
  │           │ └ Identifier
  │           │   └ x
  │           ├ +
  │           └ ConstantVariable
  │             └ IntegerConstant
  │               └ 1
  └ StatementList
    └ AssignmentStatement
      ├ EntireVariable
      │ └ Identifier
      │   └ abc
      └ ConstantVariable
        └ IntegerConstant
          └ 1
Traceback (most recent call last):
  File "F:\Projects\pepega\pepega\tests.py", line 23, in run_tests
    parser.semantic_check()
  File "F:\Projects\pepega\pepega\src\Parser.py", line 18, in semantic_check
    semantic_visitor.visit(self.AST)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 46, in ff
    return dispatcher(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 66, in __call__
    return d(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Semantic\SemanticVisitor.py", line 124, in visit
    self.visit(child)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 46, in ff
    return dispatcher(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 66, in __call__
    return d(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Semantic\SemanticVisitor.py", line 131, in visit
    self.visit(child)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 46, in ff
    return dispatcher(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 66, in __call__
    return d(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Semantic\SemanticVisitor.py", line 136, in visit
    self.visit(child)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 46, in ff
    return dispatcher(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 66, in __call__
    return d(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Semantic\SemanticVisitor.py", line 160, in visit
    raise SemanticException("Variable '%s' is already declared in the current scope!" % var_name)
src.Semantic.SemanticVisitor.SemanticException: SemanticExpression: Variable 'abc' is already declared in the current scope!

