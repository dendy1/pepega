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
    │ │ ├ RelationalExpression
    │ │ │ ├ EntireVariable
    │ │ │ │ └ Identifier
    │ │ │ │   └ b
    │ │ │ ├ <
    │ │ │ └ ConstantVariable
    │ │ │   └ IntegerConstant
    │ │ │     └ 11
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
        └ RealConstant
          └ 3.14
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
  File "F:\Projects\pepega\pepega\src\Semantic\SemanticVisitor.py", line 168, in visit
    self.visit(child)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 46, in ff
    return dispatcher(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 66, in __call__
    return d(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Semantic\SemanticVisitor.py", line 173, in visit
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
  File "F:\Projects\pepega\pepega\src\Semantic\SemanticVisitor.py", line 246, in visit
    self.visit(child)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 46, in ff
    return dispatcher(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 66, in __call__
    return d(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Semantic\SemanticVisitor.py", line 268, in visit
    node[1] = type_convert(node.right, TypeSymbol.from_base_type(node.left.type_desc.base_type))
  File "F:\Projects\pepega\pepega\src\Semantic\SemanticVisitor.py", line 104, in type_convert
    raise SemanticException("Cannot convert {} to {}".format(node.type_desc, new_type))
src.Semantic.SemanticVisitor.SemanticException: SemanticExpression: Cannot convert integer to array

