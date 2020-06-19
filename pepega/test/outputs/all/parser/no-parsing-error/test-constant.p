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
  └ StatementList
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ a
    │ └ AdditiveExpression
    │   ├ ConstantVariable
    │   │ └ IntegerConstant
    │   │   └ 2
    │   ├ +
    │   └ ConstantVariable
    │     └ IntegerConstant
    │       └ 99
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ b
    │ └ AdditiveExpression
    │   ├ ConstantVariable
    │   │ └ IntegerConstant
    │   │   └ 3
    │   ├ +
    │   ├ MultiplicativeExpression
    │   │ ├ ConstantVariable
    │   │ │ └ IntegerConstant
    │   │ │   └ 93
    │   │ ├ *
    │   │ └ ConstantVariable
    │   │   └ IntegerConstant
    │   │     └ 5
    │   ├ +
    │   └ MultiplicativeExpression
    │     ├ ConstantVariable
    │     │ └ IntegerConstant
    │     │   └ 87
    │     ├ *
    │     └ AdditiveExpression
    │       ├ ConstantVariable
    │       │ └ IntegerConstant
    │       │   └ 23
    │       ├ +
    │       └ MultiplicativeExpression
    │         ├ ConstantVariable
    │         │ └ IntegerConstant
    │         │   └ 15
    │         ├ *
    │         └ ConstantVariable
    │           └ IntegerConstant
    │             └ 6
    ├ AssignmentStatement
    │ ├ IndexedVariable
    │ │ ├ Identifier
    │ │ │ └ c
    │ │ └ AdditiveExpression
    │ │   ├ ConstantVariable
    │ │   │ └ IntegerConstant
    │ │   │   └ 4
    │ │   ├ +
    │ │   └ ConstantVariable
    │ │     └ IntegerConstant
    │ │       └ 2
    │ └ AdditiveExpression
    │   ├ ConstantVariable
    │   │ └ IntegerConstant
    │   │   └ 3
    │   ├ +
    │   ├ MultiplicativeExpression
    │   │ ├ ConstantVariable
    │   │ │ └ IntegerConstant
    │   │ │   └ 9
    │   │ ├ *
    │   │ └ ConstantVariable
    │   │   └ IntegerConstant
    │   │     └ 5
    │   ├ +
    │   └ MultiplicativeExpression
    │     ├ ConstantVariable
    │     │ └ IntegerConstant
    │     │   └ 87
    │     ├ *
    │     └ AdditiveExpression
    │       ├ ConstantVariable
    │       │ └ IntegerConstant
    │       │   └ 2
    │       ├ +
    │       └ MultiplicativeExpression
    │         ├ ConstantVariable
    │         │ └ IntegerConstant
    │         │   └ 15
    │         ├ *
    │         └ ConstantVariable
    │           └ IntegerConstant
    │             └ 6
    └ AssignmentStatement
      ├ IndexedVariable
      │ ├ Identifier
      │ │ └ c
      │ └ AdditiveExpression
      │   ├ ConstantVariable
      │   │ └ IntegerConstant
      │   │   └ 3
      │   ├ +
      │   ├ MultiplicativeExpression
      │   │ ├ ConstantVariable
      │   │ │ └ IntegerConstant
      │   │ │   └ 9
      │   │ ├ *
      │   │ └ ConstantVariable
      │   │   └ IntegerConstant
      │   │     └ 5
      │   ├ +
      │   └ MultiplicativeExpression
      │     ├ ConstantVariable
      │     │ └ IntegerConstant
      │     │   └ 87
      │     ├ *
      │     └ AdditiveExpression
      │       ├ ConstantVariable
      │       │ └ IntegerConstant
      │       │   └ 2
      │       ├ +
      │       └ MultiplicativeExpression
      │         ├ ConstantVariable
      │         │ └ IntegerConstant
      │         │   └ 15
      │         ├ *
      │         └ ConstantVariable
      │           └ IntegerConstant
      │             └ 6
      └ AdditiveExpression
        ├ ConstantVariable
        │ └ IntegerConstant
        │   └ 3
        ├ +
        ├ MultiplicativeExpression
        │ ├ ConstantVariable
        │ │ └ IntegerConstant
        │ │   └ 9
        │ ├ *
        │ └ ConstantVariable
        │   └ IntegerConstant
        │     └ 5
        ├ +
        └ MultiplicativeExpression
          ├ ConstantVariable
          │ └ IntegerConstant
          │   └ 8
          ├ *
          └ AdditiveExpression
            ├ ConstantVariable
            │ └ IntegerConstant
            │   └ 2
            ├ +
            └ MultiplicativeExpression
              ├ ConstantVariable
              │ └ IntegerConstant
              │   └ 15
              ├ *
              └ ConstantVariable
                └ IntegerConstant
                  └ 6


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
  File "F:\Projects\pepega\pepega\src\SemanticAnalysis\SemanticVisitor.py", line 246, in visit
    self.visit(child)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 46, in ff
    return dispatcher(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 66, in __call__
    return d(*args, **kw)
  File "F:\Projects\pepega\pepega\src\SemanticAnalysis\SemanticVisitor.py", line 260, in visit
    self.visit(child)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 46, in ff
    return dispatcher(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 66, in __call__
    return d(*args, **kw)
  File "F:\Projects\pepega\pepega\src\SemanticAnalysis\SemanticVisitor.py", line 582, in visit
    raise SemanticError("Variable {} is not array!".format(node.variable_name))
src.Exceptions.SemanticError: Variable c is not array!

