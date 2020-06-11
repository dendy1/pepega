Program
├ Identifier
│ └ helloworld
├ Identifier
│ └ output
└ Block
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ a
  │   ├ Identifier
  │   │ └ c
  │   └ Type
  │     └ integer
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ b
  │   └ Type
  │     └ real
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ d
  │   └ Type
  │     └ ArrayType
  │       ├ IndexRange
  │       │ ├ IntegerConstant
  │       │ │ └ 1
  │       │ └ IntegerConstant
  │       │   └ 10
  │       └ Type
  │         └ integer
  ├ SubprogramDeclarations
  │ └ SubprogramDeclaration
  │   ├ SubprogramHeader
  │   │ ├ Identifier
  │   │ │ └ add
  │   │ ├ ParametersList
  │   │ │ └ Parameters
  │   │ │   ├ Identifier
  │   │ │   │ └ a
  │   │ │   ├ Identifier
  │   │ │   │ └ b
  │   │ │   └ Type
  │   │ │     └ integer
  │   │ └ Type
  │   │   └ integer
  │   └ Block
  │     └ StatementList
  │       └ AssignmentStatement
  │         ├ EntireVariable
  │         │ └ add
  │         └ AdditiveExpression
  │           ├ EntireVariable
  │           │ └ a
  │           ├ +
  │           └ EntireVariable
  │             └ b
  └ StatementList
    ├ AssignmentStatement
    │ ├ IndexedVariable
    │ │ ├ d
    │ │ └ IntegerConstant
    │ │   └ 3
    │ └ IntegerConstant
    │   └ 5
    ├ AssignmentStatement
    │ ├ IndexedVariable
    │ │ ├ d
    │ │ └ IntegerConstant
    │ │   └ 4
    │ └ IntegerConstant
    │   └ 6
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ a
    │ └ IntegerConstant
    │   └ 3
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ c
    │ └ IndexedVariable
    │   ├ d
    │   └ IntegerConstant
    │     └ 3
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ c
    │ └ AdditiveExpression
    │   ├ IndexedVariable
    │   │ ├ d
    │   │ └ IntegerConstant
    │   │   └ 4
    │   ├ +
    │   └ IndexedVariable
    │     ├ d
    │     └ IntegerConstant
    │       └ 3
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ a
    │ └ AdditiveExpression
    │   ├ EntireVariable
    │   │ └ c
    │   ├ +
    │   └ IntegerConstant
    │     └ 1
    └ ProcedureStatement
      ├ Identifier
      │ └ qwe
      └ Arguments
        ├ IntegerConstant
        │ └ 2
        ├ IntegerConstant
        │ └ 3
        ├ IntegerConstant
        │ └ 4
        ├ IntegerConstant
        │ └ 2
        ├ IntegerConstant
        │ └ 4
        └ IntegerConstant
          └ 2
Traceback (most recent call last):
  File "F:\Projects\pepega\pepega\tests.py", line 21, in run_tests
    parser.semantic_check()
  File "F:\Projects\pepega\pepega\src\newAST\NewParser.py", line 17, in semantic_check
    semantic_visitor.visit(self.AST)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 46, in ff
    return dispatcher(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 66, in __call__
    return d(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\Semantic\SemanticVisitor.py", line 27, in visit
    self.visit(child)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 46, in ff
    return dispatcher(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 66, in __call__
    return d(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\Semantic\SemanticVisitor.py", line 34, in visit
    self.visit(child)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 46, in ff
    return dispatcher(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 66, in __call__
    return d(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\Semantic\SemanticVisitor.py", line 159, in visit
    self.visit(child)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 46, in ff
    return dispatcher(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 66, in __call__
    return d(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\Semantic\SemanticVisitor.py", line 182, in visit
    raise SemanticException("SemanticError: Procedure '%s' is not defined!" % proc_name)
src.Visitor.Semantic.SemanticVisitor.SemanticException: SemanticError: Procedure 'qwe' is not defined!

