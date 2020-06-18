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
    │ └ ConstantVariable
    │   └ IntegerConstant
    │     └ 6
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ b
    │ └ MultiplicativeExpression
    │   ├ EntireVariable
    │   │ └ Identifier
    │   │   └ a
    │   ├ *
    │   └ ConstantVariable
    │     └ IntegerConstant
    │       └ 15
    ├ IfStatement
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ Identifier
    │ │ │   └ b
    │ │ ├ >
    │ │ └ EntireVariable
    │ │   └ Identifier
    │ │     └ a
    │ ├ AssignmentStatement
    │ │ ├ EntireVariable
    │ │ │ └ Identifier
    │ │ │   └ a
    │ │ └ MultiplicativeExpression
    │ │   ├ EntireVariable
    │ │   │ └ Identifier
    │ │   │   └ a
    │ │   ├ *
    │ │   └ ConstantVariable
    │ │     └ IntegerConstant
    │ │       └ 2
    │ └ AssignmentStatement
    │   ├ EntireVariable
    │   │ └ Identifier
    │   │   └ a
    │   └ MultiplicativeExpression
    │     ├ EntireVariable
    │     │ └ Identifier
    │     │   └ a
    │     ├ *
    │     └ ConstantVariable
    │       └ IntegerConstant
    │         └ 3
    ├ IfStatement
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ Identifier
    │ │ │   └ b
    │ │ ├ >
    │ │ └ EntireVariable
    │ │   └ Identifier
    │ │     └ a
    │ ├ IfStatement
    │ │ ├ RelationalExpression
    │ │ │ ├ EntireVariable
    │ │ │ │ └ Identifier
    │ │ │ │   └ b
    │ │ │ ├ <
    │ │ │ └ AdditiveExpression
    │ │ │   ├ EntireVariable
    │ │ │   │ └ Identifier
    │ │ │   │   └ a
    │ │ │   ├ -
    │ │ │   └ ConstantVariable
    │ │ │     └ IntegerConstant
    │ │ │       └ 2
    │ │ ├ AssignmentStatement
    │ │ │ ├ EntireVariable
    │ │ │ │ └ Identifier
    │ │ │ │   └ a
    │ │ │ └ MultiplicativeExpression
    │ │ │   ├ EntireVariable
    │ │ │   │ └ Identifier
    │ │ │   │   └ a
    │ │ │   ├ *
    │ │ │   └ ConstantVariable
    │ │ │     └ IntegerConstant
    │ │ │       └ 5
    │ │ └ AssignmentStatement
    │ │   ├ EntireVariable
    │ │   │ └ Identifier
    │ │   │   └ a
    │ │   └ MultiplicativeExpression
    │ │     ├ EntireVariable
    │ │     │ └ Identifier
    │ │     │   └ a
    │ │     ├ *
    │ │     └ ConstantVariable
    │ │       └ IntegerConstant
    │ │         └ 7
    │ └ AssignmentStatement
    │   ├ EntireVariable
    │   │ └ Identifier
    │   │   └ a
    │   └ MultiplicativeExpression
    │     ├ EntireVariable
    │     │ └ Identifier
    │     │   └ a
    │     ├ /
    │     ├ ConstantVariable
    │     │ └ IntegerConstant
    │     │   └ 11
    │     ├ *
    │     └ SignedFactor
    │       └ Factor
    │         └ Variable
    │           └ EntireVariable
    │             └ Identifier
    │               └ a
    ├ IfStatement
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ Identifier
    │ │ │   └ b
    │ │ ├ >
    │ │ └ EntireVariable
    │ │   └ Identifier
    │ │     └ a
    │ ├ AssignmentStatement
    │ │ ├ EntireVariable
    │ │ │ └ Identifier
    │ │ │   └ a
    │ │ └ MultiplicativeExpression
    │ │   ├ EntireVariable
    │ │   │ └ Identifier
    │ │   │   └ a
    │ │   ├ *
    │ │   └ ConstantVariable
    │ │     └ IntegerConstant
    │ │       └ 2
    │ └ IfStatement
    │   ├ RelationalExpression
    │   │ ├ EntireVariable
    │   │ │ └ Identifier
    │   │ │   └ b
    │   │ ├ >
    │   │ └ AdditiveExpression
    │   │   ├ ConstantVariable
    │   │   │ └ IntegerConstant
    │   │   │   └ 5
    │   │   ├ +
    │   │   └ EntireVariable
    │   │     └ Identifier
    │   │       └ a
    │   ├ AssignmentStatement
    │   │ ├ EntireVariable
    │   │ │ └ Identifier
    │   │ │   └ a
    │   │ └ AdditiveExpression
    │   │   ├ ConstantVariable
    │   │   │ └ IntegerConstant
    │   │   │   └ 23
    │   │   ├ -
    │   │   └ EntireVariable
    │   │     └ Identifier
    │   │       └ a
    │   └ AssignmentStatement
    │     ├ EntireVariable
    │     │ └ Identifier
    │     │   └ a
    │     └ MultiplicativeExpression
    │       ├ ConstantVariable
    │       │ └ IntegerConstant
    │       │   └ 948
    │       ├ /
    │       └ EntireVariable
    │         └ Identifier
    │           └ b
    ├ WhileStatement
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ Identifier
    │ │ │   └ b
    │ │ ├ >
    │ │ └ EntireVariable
    │ │   └ Identifier
    │ │     └ a
    │ └ AssignmentStatement
    │   ├ EntireVariable
    │   │ └ Identifier
    │   │   └ a
    │   └ MultiplicativeExpression
    │     ├ EntireVariable
    │     │ └ Identifier
    │     │   └ a
    │     ├ *
    │     └ ConstantVariable
    │       └ IntegerConstant
    │         └ 7
    ├ WhileStatement
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ Identifier
    │ │ │   └ b
    │ │ ├ >
    │ │ └ EntireVariable
    │ │   └ Identifier
    │ │     └ a
    │ └ StatementList
    │   ├ AssignmentStatement
    │   │ ├ EntireVariable
    │   │ │ └ Identifier
    │   │ │   └ b
    │   │ └ AdditiveExpression
    │   │   ├ EntireVariable
    │   │   │ └ Identifier
    │   │   │   └ b
    │   │   ├ +
    │   │   └ ConstantVariable
    │   │     └ IntegerConstant
    │   │       └ 3
    │   └ AssignmentStatement
    │     ├ EntireVariable
    │     │ └ Identifier
    │     │   └ a
    │     └ MultiplicativeExpression
    │       ├ EntireVariable
    │       │ └ Identifier
    │       │   └ a
    │       ├ *
    │       └ ConstantVariable
    │         └ IntegerConstant
    │           └ 7
    └ WhileStatement
      ├ RelationalExpression
      │ ├ EntireVariable
      │ │ └ Identifier
      │ │   └ b
      │ ├ >
      │ └ EntireVariable
      │   └ Identifier
      │     └ a
      └ WhileStatement
        ├ RelationalExpression
        │ ├ EntireVariable
        │ │ └ Identifier
        │ │   └ c
        │ ├ >
        │ └ AdditiveExpression
        │   ├ EntireVariable
        │   │ └ Identifier
        │   │   └ a
        │   ├ +
        │   └ EntireVariable
        │     └ Identifier
        │       └ b
        └ StatementList
          ├ AssignmentStatement
          │ ├ EntireVariable
          │ │ └ Identifier
          │ │   └ b
          │ └ AdditiveExpression
          │   ├ EntireVariable
          │   │ └ Identifier
          │   │   └ b
          │   ├ +
          │   └ ConstantVariable
          │     └ IntegerConstant
          │       └ 3
          └ AssignmentStatement
            ├ EntireVariable
            │ └ Identifier
            │   └ a
            └ MultiplicativeExpression
              ├ EntireVariable
              │ └ Identifier
              │   └ a
              ├ *
              └ ConstantVariable
                └ IntegerConstant
                  └ 7


======== AST AFTER SEMANTIC ANALYSIS ========
Traceback (most recent call last):
  File "F:\Projects\pepega\pepega\tests.py", line 28, in run_tests
    compiler.semantic_check()
  File "F:\Projects\pepega\pepega\src\Compiler.py", line 24, in semantic_check
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
  File "F:\Projects\pepega\pepega\src\SemanticAnalysis\SemanticVisitor.py", line 285, in visit
    self.visit(node.else_body_stmt)
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
  File "F:\Projects\pepega\pepega\src\SemanticAnalysis\SemanticVisitor.py", line 500, in visit
    self.visit(node[index])
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 46, in ff
    return dispatcher(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 66, in __call__
    return d(*args, **kw)
  File "F:\Projects\pepega\pepega\src\SemanticAnalysis\SemanticVisitor.py", line 608, in visit
    factor = node[1]
IndexError: list index out of range

