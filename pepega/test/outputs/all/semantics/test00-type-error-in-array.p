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
  │   ├ Identifier
  │   │ └ b
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
  │ │       │ └ Identifier
  │ │       │   └ e
  │ │       └ EntireVariable
  │ │         └ Identifier
  │ │           └ a
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
  │         │ └ Identifier
  │         │   └ addition
  │         └ AdditiveExpression
  │           ├ EntireVariable
  │           │ └ Identifier
  │           │   └ a
  │           ├ +
  │           └ EntireVariable
  │             └ Identifier
  │               └ b
  └ StatementList
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ a
    │ └ ConstantVariable
    │   └ IntegerConstant
    │     └ 1
    ├ WhileStatement
    │ ├ while
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ Identifier
    │ │ │   └ a
    │ │ ├ <
    │ │ └ ConstantVariable
    │ │   └ IntegerConstant
    │ │     └ 10
    │ ├ do
    │ └ StatementList
    │   ├ AssignmentStatement
    │   │ ├ EntireVariable
    │   │ │ └ Identifier
    │   │ │   └ sum
    │   │ └ AdditiveExpression
    │   │   ├ EntireVariable
    │   │   │ └ Identifier
    │   │   │   └ sum
    │   │   ├ +
    │   │   └ EntireVariable
    │   │     └ Identifier
    │   │       └ a
    │   └ AssignmentStatement
    │     ├ EntireVariable
    │     │ └ Identifier
    │     │   └ a
    │     └ AdditiveExpression
    │       ├ EntireVariable
    │       │ └ Identifier
    │       │   └ a
    │       ├ +
    │       └ ConstantVariable
    │         └ IntegerConstant
    │           └ 1
    ├ StatementList
    │ ├ AssignmentStatement
    │ │ ├ EntireVariable
    │ │ │ └ Identifier
    │ │ │   └ b
    │ │ └ ConstantVariable
    │ │   └ IntegerConstant
    │ │     └ 1
    │ ├ WhileStatement
    │ │ ├ while
    │ │ ├ RelationalExpression
    │ │ │ ├ EntireVariable
    │ │ │ │ └ Identifier
    │ │ │ │   └ b
    │ │ │ ├ <
    │ │ │ └ ConstantVariable
    │ │ │   └ IntegerConstant
    │ │ │     └ 11
    │ │ ├ do
    │ │ └ StatementList
    │ │   ├ AssignmentStatement
    │ │   │ ├ IndexedVariable
    │ │   │ │ ├ Identifier
    │ │   │ │ │ └ d
    │ │   │ │ └ EntireVariable
    │ │   │ │   └ Identifier
    │ │   │ │     └ b
    │ │   │ └ AdditiveExpression
    │ │   │   ├ EntireVariable
    │ │   │   │ └ Identifier
    │ │   │   │   └ b
    │ │   │   ├ +
    │ │   │   └ MultiplicativeExpression
    │ │   │     ├ EntireVariable
    │ │   │     │ └ Identifier
    │ │   │     │   └ b
    │ │   │     ├ *
    │ │   │     └ AdditiveExpression
    │ │   │       ├ EntireVariable
    │ │   │       │ └ Identifier
    │ │   │       │   └ b
    │ │   │       ├ -
    │ │   │       └ ConstantVariable
    │ │   │         └ IntegerConstant
    │ │   │           └ 1
    │ │   └ AssignmentStatement
    │ │     ├ EntireVariable
    │ │     │ └ Identifier
    │ │     │   └ b
    │ │     └ AdditiveExpression
    │ │       ├ EntireVariable
    │ │       │ └ Identifier
    │ │       │   └ b
    │ │       ├ +
    │ │       └ ConstantVariable
    │ │         └ IntegerConstant
    │ │           └ 1
    │ └ ProcedureStatement
    │   ├ Identifier
    │   │ └ sort
    │   └ Arguments
    │     └ EntireVariable
    │       └ Identifier
    │         └ d
    ├ AssignmentStatement
    │ ├ IndexedVariable
    │ │ ├ Identifier
    │ │ │ └ k
    │ │ ├ ConstantVariable
    │ │ │ └ IntegerConstant
    │ │ │   └ 25
    │ │ └ ConstantVariable
    │ │   └ IntegerConstant
    │ │     └ 26
    │ └ ConstantVariable
    │   └ IntegerConstant
    │     └ 3
    ├ AssignmentStatement
    │ ├ IndexedVariable
    │ │ ├ Identifier
    │ │ │ └ k
    │ │ ├ ConstantVariable
    │ │ │ └ IntegerConstant
    │ │ │   └ 25
    │ │ └ ConstantVariable
    │ │   └ IntegerConstant
    │ │     └ 26
    │ └ ConstantVariable
    │   └ RealConstant
    │     └ 3.14
    ├ AssignmentStatement
    │ ├ IndexedVariable
    │ │ ├ Identifier
    │ │ │ └ k
    │ │ ├ ConstantVariable
    │ │ │ └ IntegerConstant
    │ │ │   └ 25
    │ │ └ ConstantVariable
    │ │   └ IntegerConstant
    │ │     └ 26
    │ └ AdditiveExpression
    │   ├ IndexedVariable
    │   │ ├ Identifier
    │   │ │ └ k
    │   │ ├ ConstantVariable
    │   │ │ └ IntegerConstant
    │   │ │   └ 25
    │   │ └ ConstantVariable
    │   │   └ IntegerConstant
    │   │     └ 26
    │   ├ +
    │   └ ConstantVariable
    │     └ IntegerConstant
    │       └ 3
    ├ AssignmentStatement
    │ ├ IndexedVariable
    │ │ ├ Identifier
    │ │ │ └ k
    │ │ ├ ConstantVariable
    │ │ │ └ IntegerConstant
    │ │ │   └ 25
    │ │ └ ConstantVariable
    │ │   └ IntegerConstant
    │ │     └ 126
    │ └ ConstantVariable
    │   └ RealConstant
    │     └ 3.14
    ├ AssignmentStatement
    │ ├ IndexedVariable
    │ │ ├ Identifier
    │ │ │ └ k
    │ │ ├ ConstantVariable
    │ │ │ └ IntegerConstant
    │ │ │   └ 125
    │ │ └ ConstantVariable
    │ │   └ IntegerConstant
    │ │     └ 26
    │ └ ConstantVariable
    │   └ RealConstant
    │     └ 3.14
    └ AssignmentStatement
      ├ IndexedVariable
      │ ├ Identifier
      │ │ └ k
      │ ├ ConstantVariable
      │ │ └ IntegerConstant
      │ │   └ 125
      │ └ ConstantVariable
      │   └ IntegerConstant
      │     └ 126
      └ ConstantVariable
        └ RealConstant
          └ 3.14


======== AST AFTER SEMANTIC ANALYSIS ========
Traceback (most recent call last):
  File "F:\Projects\pepega\pepega\tests.py", line 28, in run_tests
    compiler.semantic_check()
  File "F:\Projects\pepega\pepega\src\Compiler.py", line 23, in semantic_check
    semantic_visitor.visit(self.AST)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 46, in ff
    return dispatcher(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 66, in __call__
    return d(*args, **kw)
  File "F:\Projects\pepega\pepega\src\SemanticAnalysis\SemanticVisitor.py", line 128, in visit
    self.visit(child)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 46, in ff
    return dispatcher(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 66, in __call__
    return d(*args, **kw)
  File "F:\Projects\pepega\pepega\src\SemanticAnalysis\SemanticVisitor.py", line 135, in visit
    self.visit(child)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 46, in ff
    return dispatcher(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 66, in __call__
    return d(*args, **kw)
  File "F:\Projects\pepega\pepega\src\SemanticAnalysis\SemanticVisitor.py", line 140, in visit
    self.visit(child)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 46, in ff
    return dispatcher(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 66, in __call__
    return d(*args, **kw)
  File "F:\Projects\pepega\pepega\src\SemanticAnalysis\SemanticVisitor.py", line 164, in visit
    raise SemanticError("Variable '%s' is already declared in the current scope!" % var_name)
src.Exceptions.SemanticError: Variable 'b' is already declared in the current scope!

