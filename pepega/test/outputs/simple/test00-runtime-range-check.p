======== AST AFTER SEMANTIC ========
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
  │       │ │ └ 1 (None)
  │       │ └ IntegerConstant
  │       │   └ 10 (None)
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
  │       │ │ └ 23 (None)
  │       │ └ IntegerConstant
  │       │   └ 57 (None)
  │       └ Type
  │         └ ArrayType
  │           ├ IndexRange
  │           │ ├ IntegerConstant
  │           │ │ └ 23 (None)
  │           │ └ IntegerConstant
  │           │   └ 57 (None)
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
    │     └ 1 (None)
    ├ WhileStatement
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ Identifier
    │ │ │   └ a
    │ │ ├ <
    │ │ └ ConstantVariable
    │ │   └ IntegerConstant
    │ │     └ 10 (None)
    │ └ StatementList
    │   ├ AssignmentStatement
    │   │ ├ EntireVariable
    │   │ │ └ Identifier
    │   │ │   └ sum
    │   │ └ AdditiveExpression
    │   │   ├ ConstantVariable
    │   │   │ └ IntegerConstant
    │   │   │   └ 10 (None)
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
    │           └ 1 (None)
    ├ StatementList
    │ ├ AssignmentStatement
    │ │ ├ EntireVariable
    │ │ │ └ Identifier
    │ │ │   └ b
    │ │ └ ConstantVariable
    │ │   └ IntegerConstant
    │ │     └ 1 (None)
    │ └ WhileStatement
    │   ├ RelationalExpression
    │   │ ├ EntireVariable
    │   │ │ └ Identifier
    │   │ │   └ b
    │   │ ├ <
    │   │ └ ConstantVariable
    │   │   └ IntegerConstant
    │   │     └ 11 (None)
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
    │     │           └ 1 (None)
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
    │             └ 1 (None)
    ├ AssignmentStatement
    │ ├ IndexedVariable
    │ │ ├ Identifier
    │ │ │ └ k
    │ │ ├ ConstantVariable
    │ │ │ └ IntegerConstant
    │ │ │   └ 25 (None)
    │ │ └ ConstantVariable
    │ │   └ IntegerConstant
    │ │     └ 26 (None)
    │ └ ConstantVariable
    │   └ IntegerConstant
    │     └ 3 (None)
    ├ AssignmentStatement
    │ ├ IndexedVariable
    │ │ ├ Identifier
    │ │ │ └ k
    │ │ ├ ConstantVariable
    │ │ │ └ IntegerConstant
    │ │ │   └ 25 (None)
    │ │ └ ConstantVariable
    │ │   └ IntegerConstant
    │ │     └ 26 (None)
    │ └ AdditiveExpression
    │   ├ IndexedVariable
    │   │ ├ Identifier
    │   │ │ └ k
    │   │ ├ ConstantVariable
    │   │ │ └ IntegerConstant
    │   │ │   └ 25 (None)
    │   │ └ ConstantVariable
    │   │   └ IntegerConstant
    │   │     └ 26 (None)
    │   ├ +
    │   └ ConstantVariable
    │     └ IntegerConstant
    │       └ 3 (None)
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
      │ │     └ 35 (None)
      │ └ AdditiveExpression
      │   ├ EntireVariable
      │   │ └ Identifier
      │   │   └ a
      │   ├ +
      │   └ ConstantVariable
      │     └ IntegerConstant
      │       └ 30 (None)
      └ ConstantVariable
        └ IntegerConstant
          └ 3 (None)
