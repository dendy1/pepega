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
  │   ├ Identifier
  │   │ └ c
  │   └ Type
  │     └ integer
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ d
  │   ├ Identifier
  │   │ └ e
  │   └ Type
  │     └ ArrayType
  │       ├ IndexRange
  │       │ ├ IntegerConstant
  │       │ │ └ 1
  │       │ └ IntegerConstant
  │       │   └ 10
  │       └ Type
  │         └ integer
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ g
  │   ├ Identifier
  │   │ └ h
  │   └ Type
  │     └ real
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ k
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
  │ ├ SubprogramDeclaration
  │ │ ├ SubprogramHeader
  │ │ │ ├ Identifier
  │ │ │ │ └ sort
  │ │ │ └ ParametersList
  │ │ │   └ Parameters
  │ │ │     ├ Identifier
  │ │ │     │ └ a
  │ │ │     └ Type
  │ │ │       └ ArrayType
  │ │ │         ├ IndexRange
  │ │ │         │ ├ IntegerConstant
  │ │ │         │ │ └ 1
  │ │ │         │ └ IntegerConstant
  │ │ │         │   └ 10
  │ │ │         └ Type
  │ │ │           └ integer
  │ │ └ Block
  │ │   ├ VariableDeclarations
  │ │   │ └ VariableDeclaration
  │ │   │   ├ Identifier
  │ │   │   │ └ a
  │ │   │   ├ Identifier
  │ │   │   │ └ b
  │ │   │   ├ Identifier
  │ │   │   │ └ c
  │ │   │   └ Type
  │ │   │     └ integer
  │ │   └ StatementList
  │ │     └ AssignmentStatement
  │ │       ├ EntireVariable
  │ │       │ └ e
  │ │       └ EntireVariable
  │ │         └ a
  │ └ SubprogramDeclaration
  │   ├ SubprogramHeader
  │   │ ├ Identifier
  │   │ │ └ addition
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
  │     ├ VariableDeclarations
  │     │ └ VariableDeclaration
  │     │   ├ Identifier
  │     │   │ └ c
  │     │   └ Type
  │     │     └ integer
  │     └ StatementList
  │       └ AssignmentStatement
  │         ├ EntireVariable
  │         │ └ addition
  │         └ AdditiveExpression
  │           ├ EntireVariable
  │           │ └ a
  │           ├ +
  │           └ EntireVariable
  │             └ b
  └ StatementList
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ a
    │ └ IntegerConstant
    │   └ 1
    ├ WhileStatement
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ a
    │ │ ├ <
    │ │ └ IntegerConstant
    │ │   └ 10
    │ └ StatementList
    │   ├ AssignmentStatement
    │   │ ├ EntireVariable
    │   │ │ └ sum
    │   │ └ AdditiveExpression
    │   │   ├ EntireVariable
    │   │   │ └ sum
    │   │   ├ +
    │   │   └ EntireVariable
    │   │     └ a
    │   └ AssignmentStatement
    │     ├ EntireVariable
    │     │ └ a
    │     └ AdditiveExpression
    │       ├ EntireVariable
    │       │ └ a
    │       ├ +
    │       └ IntegerConstant
    │         └ 1
    ├ StatementList
    │ ├ AssignmentStatement
    │ │ ├ EntireVariable
    │ │ │ └ b
    │ │ └ IntegerConstant
    │ │   └ 1
    │ ├ WhileStatement
    │ │ ├ RelationalExpression
    │ │ │ ├ EntireVariable
    │ │ │ │ └ b
    │ │ │ ├ <
    │ │ │ └ IntegerConstant
    │ │ │   └ 11
    │ │ └ StatementList
    │ │   ├ AssignmentStatement
    │ │   │ ├ IndexedVariable
    │ │   │ │ ├ d
    │ │   │ │ └ EntireVariable
    │ │   │ │   └ b
    │ │   │ └ AdditiveExpression
    │ │   │   ├ EntireVariable
    │ │   │   │ └ b
    │ │   │   ├ +
    │ │   │   └ MultiplicativeExpression
    │ │   │     ├ EntireVariable
    │ │   │     │ └ b
    │ │   │     ├ *
    │ │   │     └ AdditiveExpression
    │ │   │       ├ EntireVariable
    │ │   │       │ └ b
    │ │   │       ├ -
    │ │   │       └ IntegerConstant
    │ │   │         └ 1
    │ │   └ AssignmentStatement
    │ │     ├ EntireVariable
    │ │     │ └ b
    │ │     └ AdditiveExpression
    │ │       ├ EntireVariable
    │ │       │ └ b
    │ │       ├ +
    │ │       └ IntegerConstant
    │ │         └ 1
    │ └ ProcedureStatement
    │   ├ Identifier
    │   │ └ sort
    │   └ Arguments
    │     └ EntireVariable
    │       └ d
    ├ AssignmentStatement
    │ ├ IndexedVariable
    │ │ ├ k
    │ │ ├ IntegerConstant
    │ │ │ └ 25
    │ │ └ IntegerConstant
    │ │   └ 26
    │ └ ConstantVariable
    │   └ RealConstant
    │     └ 3.14
    ├ AssignmentStatement
    │ ├ IndexedVariable
    │ │ ├ k
    │ │ ├ IntegerConstant
    │ │ │ └ 25
    │ │ └ IntegerConstant
    │ │   └ 26
    │ └ AdditiveExpression
    │   ├ IndexedVariable
    │   │ ├ k
    │   │ ├ IntegerConstant
    │   │ │ └ 25
    │   │ └ IntegerConstant
    │   │   └ 26
    │   ├ +
    │   └ IntegerConstant
    │     └ 3
    └ AssignmentStatement
      ├ IndexedVariable
      │ ├ k
      │ ├ AdditiveExpression
      │ │ ├ EntireVariable
      │ │ │ └ a
      │ │ ├ +
      │ │ └ IntegerConstant
      │ │   └ 35
      │ └ AdditiveExpression
      │   ├ EntireVariable
      │   │ └ a
      │   ├ +
      │   └ IntegerConstant
      │     └ 30
      └ ConstantVariable
        └ RealConstant
          └ 3.14
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
  File "F:\Projects\pepega\pepega\src\Visitor\Semantic\SemanticVisitor.py", line 159, in visit
    self.visit(child)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 46, in ff
    return dispatcher(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 66, in __call__
    return d(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\Semantic\SemanticVisitor.py", line 185, in visit
    raise SemanticException("SemanticError: Procedure '%s' " % proc_name + "takes only %s arguments!" % len(proc_symbol.params))
src.Visitor.Semantic.SemanticVisitor.SemanticException: SemanticError: Procedure 'sort' takes only 0 arguments!

