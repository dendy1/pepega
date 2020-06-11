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
  │   │ └ a
  │   ├ Identifier
  │   │ └ b
  │   └ Type
  │     └ integer
  ├ SubprogramDeclarations
  │ └ SubprogramDeclaration
  │   ├ SubprogramHeader
  │   │ ├ Identifier
  │   │ │ └ sum
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
  │       └ IfStatement
  │         ├ RelationalExpression
  │         │ ├ EntireVariable
  │         │ │ └ a
  │         │ ├ <=
  │         │ └ IntegerConstant
  │         │   └ 0
  │         ├ AssignmentStatement
  │         │ ├ EntireVariable
  │         │ │ └ sum
  │         │ └ IntegerConstant
  │         │   └ 0
  │         └ AssignmentStatement
  │           ├ EntireVariable
  │           │ └ sum
  │           └ AdditiveExpression
  │             ├ EntireVariable
  │             │ └ a
  │             ├ +
  │             └ ProcedureStatement
  │               ├ Identifier
  │               │ └ sum
  │               └ Arguments
  │                 ├ AdditiveExpression
  │                 │ ├ EntireVariable
  │                 │ │ └ a
  │                 │ ├ -
  │                 │ └ IntegerConstant
  │                 │   └ 1
  │                 └ IntegerConstant
  │                   └ 0
  └ StatementList
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ a
    │ └ ProcedureStatement
    │   ├ Identifier
    │   │ └ sum
    │   └ Arguments
    │     └ IntegerConstant
    │       └ 10
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ a
    │ └ ProcedureStatement
    │   ├ Identifier
    │   │ └ sum
    │   └ Arguments
    │     ├ IntegerConstant
    │     │ └ 10
    │     └ IntegerConstant
    │       └ 20
    └ AssignmentStatement
      ├ EntireVariable
      │ └ b
      └ ProcedureStatement
        ├ Identifier
        │ └ sum
        └ Arguments
          ├ SignedFactor
          │ ├ -
          │ └ IntegerConstant
          │   └ 10
          ├ IntegerConstant
          │ └ 4
          └ IntegerConstant
            └ 7
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
  File "F:\Projects\pepega\pepega\src\Visitor\Semantic\SemanticVisitor.py", line 164, in visit
    self.visit(child)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 46, in ff
    return dispatcher(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 66, in __call__
    return d(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\Semantic\SemanticVisitor.py", line 185, in visit
    raise SemanticException("SemanticError: Procedure '%s' " % proc_name + "takes only %s arguments!" % len(proc_symbol.params))
src.Visitor.Semantic.SemanticVisitor.SemanticException: SemanticError: Procedure 'sum' takes only 2 arguments!

