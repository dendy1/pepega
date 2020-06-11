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
    │   │   ├ IntegerConstant
    │   │   │ └ 10
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
    │ └ WhileStatement
    │   ├ RelationalExpression
    │   │ ├ EntireVariable
    │   │ │ └ b
    │   │ ├ <
    │   │ └ IntegerConstant
    │   │   └ 11
    │   └ StatementList
    │     ├ AssignmentStatement
    │     │ ├ IndexedVariable
    │     │ │ ├ d
    │     │ │ └ EntireVariable
    │     │ │   └ b
    │     │ └ AdditiveExpression
    │     │   ├ EntireVariable
    │     │   │ └ b
    │     │   ├ +
    │     │   └ MultiplicativeExpression
    │     │     ├ EntireVariable
    │     │     │ └ b
    │     │     ├ *
    │     │     └ AdditiveExpression
    │     │       ├ EntireVariable
    │     │       │ └ b
    │     │       ├ -
    │     │       └ IntegerConstant
    │     │         └ 1
    │     └ AssignmentStatement
    │       ├ EntireVariable
    │       │ └ b
    │       └ AdditiveExpression
    │         ├ EntireVariable
    │         │ └ b
    │         ├ +
    │         └ IntegerConstant
    │           └ 1
    ├ AssignmentStatement
    │ ├ IndexedVariable
    │ │ ├ k
    │ │ ├ IntegerConstant
    │ │ │ └ 25
    │ │ └ IntegerConstant
    │ │   └ 26
    │ └ IntegerConstant
    │   └ 3
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
      └ IntegerConstant
        └ 3
