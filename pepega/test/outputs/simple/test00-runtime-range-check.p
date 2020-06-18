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
  │   ├ Identifier
  │   │ └ sum
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
  │     │     └ real
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
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ Identifier
    │ │ │   └ a
    │ │ ├ <
    │ │ └ ConstantVariable
    │ │   └ IntegerConstant
    │ │     └ 10
    │ └ StatementList
    │   ├ AssignmentStatement
    │   │ ├ EntireVariable
    │   │ │ └ Identifier
    │   │ │   └ sum
    │   │ └ AdditiveExpression
    │   │   ├ ConstantVariable
    │   │   │ └ IntegerConstant
    │   │   │   └ 10
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
    │ └ WhileStatement
    │   ├ RelationalExpression
    │   │ ├ EntireVariable
    │   │ │ └ Identifier
    │   │ │   └ b
    │   │ ├ <
    │   │ └ ConstantVariable
    │   │   └ IntegerConstant
    │   │     └ 11
    │   └ StatementList
    │     ├ AssignmentStatement
    │     │ ├ IndexedVariable
    │     │ │ ├ Identifier
    │     │ │ │ └ d
    │     │ │ └ EntireVariable
    │     │ │   └ Identifier
    │     │ │     └ b
    │     │ └ AdditiveExpression
    │     │   ├ EntireVariable
    │     │   │ └ Identifier
    │     │   │   └ b
    │     │   ├ +
    │     │   └ MultiplicativeExpression
    │     │     ├ EntireVariable
    │     │     │ └ Identifier
    │     │     │   └ b
    │     │     ├ *
    │     │     └ AdditiveExpression
    │     │       ├ EntireVariable
    │     │       │ └ Identifier
    │     │       │   └ b
    │     │       ├ -
    │     │       └ ConstantVariable
    │     │         └ IntegerConstant
    │     │           └ 1
    │     └ AssignmentStatement
    │       ├ EntireVariable
    │       │ └ Identifier
    │       │   └ b
    │       └ AdditiveExpression
    │         ├ EntireVariable
    │         │ └ Identifier
    │         │   └ b
    │         ├ +
    │         └ ConstantVariable
    │           └ IntegerConstant
    │             └ 1
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
    └ AssignmentStatement
      ├ IndexedVariable
      │ ├ Identifier
      │ │ └ k
      │ ├ AdditiveExpression
      │ │ ├ EntireVariable
      │ │ │ └ Identifier
      │ │ │   └ a
      │ │ ├ +
      │ │ └ ConstantVariable
      │ │   └ IntegerConstant
      │ │     └ 35
      │ └ AdditiveExpression
      │   ├ EntireVariable
      │   │ └ Identifier
      │   │   └ a
      │   ├ +
      │   └ ConstantVariable
      │     └ IntegerConstant
      │       └ 30
      └ ConstantVariable
        └ IntegerConstant
          └ 3


======== AST AFTER SEMANTIC ANALYSIS ========
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
  │   ├ Identifier
  │   │ └ sum
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
  │     │     └ real
  │     └ StatementList
  │       └ AssignmentStatement (integer)
  │         ├ EntireVariable (integer)
  │         │ └ Identifier
  │         │   └ addition
  │         └ AdditiveExpression (integer)
  │           ├ EntireVariable (integer)
  │           │ └ Identifier
  │           │   └ a
  │           ├ +
  │           └ EntireVariable (integer)
  │             └ Identifier
  │               └ b
  └ StatementList
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ a
    │ └ ConstantVariable (integer)
    │   └ IntegerConstant (integer)
    │     └ 1
    ├ WhileStatement (void)
    │ ├ RelationalExpression (boolean)
    │ │ ├ EntireVariable (integer)
    │ │ │ └ Identifier
    │ │ │   └ a
    │ │ ├ <
    │ │ └ ConstantVariable (integer)
    │ │   └ IntegerConstant (integer)
    │ │     └ 10
    │ └ StatementList
    │   ├ AssignmentStatement (integer)
    │   │ ├ EntireVariable (integer)
    │   │ │ └ Identifier
    │   │ │   └ sum
    │   │ └ AdditiveExpression (integer)
    │   │   ├ ConstantVariable (integer)
    │   │   │ └ IntegerConstant (integer)
    │   │   │   └ 10
    │   │   ├ +
    │   │   └ EntireVariable (integer)
    │   │     └ Identifier
    │   │       └ a
    │   └ AssignmentStatement (integer)
    │     ├ EntireVariable (integer)
    │     │ └ Identifier
    │     │   └ a
    │     └ AdditiveExpression (integer)
    │       ├ EntireVariable (integer)
    │       │ └ Identifier
    │       │   └ a
    │       ├ +
    │       └ ConstantVariable (integer)
    │         └ IntegerConstant (integer)
    │           └ 1
    ├ StatementList
    │ ├ AssignmentStatement (integer)
    │ │ ├ EntireVariable (integer)
    │ │ │ └ Identifier
    │ │ │   └ b
    │ │ └ ConstantVariable (integer)
    │ │   └ IntegerConstant (integer)
    │ │     └ 1
    │ └ WhileStatement (void)
    │   ├ RelationalExpression (boolean)
    │   │ ├ EntireVariable (integer)
    │   │ │ └ Identifier
    │   │ │   └ b
    │   │ ├ <
    │   │ └ ConstantVariable (integer)
    │   │   └ IntegerConstant (integer)
    │   │     └ 11
    │   └ StatementList
    │     ├ AssignmentStatement (integer)
    │     │ ├ IndexedVariable (integer)
    │     │ │ ├ Identifier
    │     │ │ │ └ d
    │     │ │ └ EntireVariable (integer)
    │     │ │   └ Identifier
    │     │ │     └ b
    │     │ └ AdditiveExpression (integer)
    │     │   ├ EntireVariable (integer)
    │     │   │ └ Identifier
    │     │   │   └ b
    │     │   ├ +
    │     │   └ MultiplicativeExpression (integer)
    │     │     ├ EntireVariable (integer)
    │     │     │ └ Identifier
    │     │     │   └ b
    │     │     ├ *
    │     │     └ AdditiveExpression (integer)
    │     │       ├ EntireVariable (integer)
    │     │       │ └ Identifier
    │     │       │   └ b
    │     │       ├ -
    │     │       └ ConstantVariable (integer)
    │     │         └ IntegerConstant (integer)
    │     │           └ 1
    │     └ AssignmentStatement (integer)
    │       ├ EntireVariable (integer)
    │       │ └ Identifier
    │       │   └ b
    │       └ AdditiveExpression (integer)
    │         ├ EntireVariable (integer)
    │         │ └ Identifier
    │         │   └ b
    │         ├ +
    │         └ ConstantVariable (integer)
    │           └ IntegerConstant (integer)
    │             └ 1
    ├ AssignmentStatement (real)
    │ ├ IndexedVariable (real)
    │ │ ├ Identifier
    │ │ │ └ k
    │ │ ├ ConstantVariable (integer)
    │ │ │ └ IntegerConstant (integer)
    │ │ │   └ 25
    │ │ └ ConstantVariable (integer)
    │ │   └ IntegerConstant (integer)
    │ │     └ 26
    │ └ ConstantVariable (converted to real)
    │   └ IntegerConstant (integer)
    │     └ 3
    ├ AssignmentStatement (real)
    │ ├ IndexedVariable (real)
    │ │ ├ Identifier
    │ │ │ └ k
    │ │ ├ ConstantVariable (integer)
    │ │ │ └ IntegerConstant (integer)
    │ │ │   └ 25
    │ │ └ ConstantVariable (integer)
    │ │   └ IntegerConstant (integer)
    │ │     └ 26
    │ └ AdditiveExpression (real)
    │   ├ IndexedVariable (real)
    │   │ ├ Identifier
    │   │ │ └ k
    │   │ ├ ConstantVariable (integer)
    │   │ │ └ IntegerConstant (integer)
    │   │ │   └ 25
    │   │ └ ConstantVariable (integer)
    │   │   └ IntegerConstant (integer)
    │   │     └ 26
    │   ├ +
    │   └ ConstantVariable (converted to real)
    │     └ IntegerConstant (integer)
    │       └ 3
    └ AssignmentStatement (real)
      ├ IndexedVariable (real)
      │ ├ Identifier
      │ │ └ k
      │ ├ AdditiveExpression (integer)
      │ │ ├ EntireVariable (integer)
      │ │ │ └ Identifier
      │ │ │   └ a
      │ │ ├ +
      │ │ └ ConstantVariable (integer)
      │ │   └ IntegerConstant (integer)
      │ │     └ 35
      │ └ AdditiveExpression (integer)
      │   ├ EntireVariable (integer)
      │   │ └ Identifier
      │   │   └ a
      │   ├ +
      │   └ ConstantVariable (integer)
      │     └ IntegerConstant (integer)
      │       └ 30
      └ ConstantVariable (converted to real)
        └ IntegerConstant (integer)
          └ 3


======== BYTECODE ========
Traceback (most recent call last):
  File "F:\Projects\pepega\pepega\tests.py", line 32, in run_tests
    compiler.generate_code()
  File "F:\Projects\pepega\pepega\src\Compiler.py", line 27, in generate_code
    translator_visitor.visit(self.AST)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 46, in ff
    return dispatcher(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 66, in __call__
    return d(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Translation\TranslatorVisitor.py", line 23, in visit
    self.visit(child)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 46, in ff
    return dispatcher(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 66, in __call__
    return d(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Translation\TranslatorVisitor.py", line 29, in visit
    self.visit(child)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 46, in ff
    return dispatcher(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 66, in __call__
    return d(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Translation\TranslatorVisitor.py", line 83, in visit
    self.visit(child)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 46, in ff
    return dispatcher(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 66, in __call__
    return d(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Translation\TranslatorVisitor.py", line 96, in visit
    self.visit(node.right)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 46, in ff
    return dispatcher(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 66, in __call__
    return d(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Translation\TranslatorVisitor.py", line 193, in visit
    self.visit(node[index])
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 46, in ff
    return dispatcher(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 66, in __call__
    return d(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Translation\TranslatorVisitor.py", line 218, in visit
    raise TranslatorError("IndexedVariable is not supported!")
src.Exceptions.TranslatorError: IndexedVariable is not supported!

