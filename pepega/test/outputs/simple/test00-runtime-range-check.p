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
  │   │ ├ Arguments
  │   │ │ ├ Identifier
  │   │ │ │ └ a
  │   │ │ ├ Identifier
  │   │ │ │ └ b
  │   │ │ └ Type
  │   │ │   └ integer
  │   │ └ Type
  │   │   └ integer
  │   ├ VariableDeclarations
  │   │ └ VariableDeclaration
  │   │   ├ Identifier
  │   │   │ └ c
  │   │   └ Type
  │   │     └ integer
  │   └ StatementList
  │     └ AssignmentStatement
  │       ├ Identifier
  │       │ └ addition
  │       └ AdditiveExpression
  │         ├ Identifier
  │         │ └ a
  │         ├ +
  │         └ Identifier
  │           └ b
  └ StatementList
    ├ AssignmentStatement
    │ ├ Identifier
    │ │ └ a
    │ └ IntegerConstant
    │   └ 1
    ├ WhileStatement
    │ ├ Factor
    │ │ └ RelationalExpression
    │ │   ├ Identifier
    │ │   │ └ a
    │ │   ├ <
    │ │   └ IntegerConstant
    │ │     └ 10
    │ └ Statement
    │   └ StatementList
    │     ├ AssignmentStatement
    │     │ ├ Identifier
    │     │ │ └ sum
    │     │ └ AdditiveExpression
    │     │   ├ IntegerConstant
    │     │   │ └ 10
    │     │   ├ +
    │     │   └ Identifier
    │     │     └ a
    │     └ AssignmentStatement
    │       ├ Identifier
    │       │ └ a
    │       └ AdditiveExpression
    │         ├ Identifier
    │         │ └ a
    │         ├ +
    │         └ IntegerConstant
    │           └ 1
    ├ Statement
    │ └ StatementList
    │   ├ AssignmentStatement
    │   │ ├ Identifier
    │   │ │ └ b
    │   │ └ IntegerConstant
    │   │   └ 1
    │   └ WhileStatement
    │     ├ Factor
    │     │ └ RelationalExpression
    │     │   ├ Identifier
    │     │   │ └ b
    │     │   ├ <
    │     │   └ IntegerConstant
    │     │     └ 11
    │     └ Statement
    │       └ StatementList
    │         ├ AssignmentStatement
    │         │ ├ IndexedVariable
    │         │ │ ├ Identifier
    │         │ │ │ └ d
    │         │ │ └ Identifier
    │         │ │   └ b
    │         │ └ AdditiveExpression
    │         │   ├ Identifier
    │         │   │ └ b
    │         │   ├ +
    │         │   └ MultiplicativeExpression
    │         │     ├ Identifier
    │         │     │ └ b
    │         │     ├ *
    │         │     └ Factor
    │         │       └ AdditiveExpression
    │         │         ├ Identifier
    │         │         │ └ b
    │         │         ├ -
    │         │         └ IntegerConstant
    │         │           └ 1
    │         └ AssignmentStatement
    │           ├ Identifier
    │           │ └ b
    │           └ AdditiveExpression
    │             ├ Identifier
    │             │ └ b
    │             ├ +
    │             └ IntegerConstant
    │               └ 1
    ├ AssignmentStatement
    │ ├ IndexedVariable
    │ │ ├ Identifier
    │ │ │ └ k
    │ │ ├ IntegerConstant
    │ │ │ └ 25
    │ │ └ IntegerConstant
    │ │   └ 26
    │ └ IntegerConstant
    │   └ 3
    ├ AssignmentStatement
    │ ├ IndexedVariable
    │ │ ├ Identifier
    │ │ │ └ k
    │ │ ├ IntegerConstant
    │ │ │ └ 25
    │ │ └ IntegerConstant
    │ │   └ 26
    │ └ AdditiveExpression
    │   ├ IndexedVariable
    │   │ ├ Identifier
    │   │ │ └ k
    │   │ ├ IntegerConstant
    │   │ │ └ 25
    │   │ └ IntegerConstant
    │   │   └ 26
    │   ├ +
    │   └ IntegerConstant
    │     └ 3
    └ AssignmentStatement
      ├ IndexedVariable
      │ ├ Identifier
      │ │ └ k
      │ ├ AdditiveExpression
      │ │ ├ Identifier
      │ │ │ └ a
      │ │ ├ +
      │ │ └ IntegerConstant
      │ │   └ 35
      │ └ AdditiveExpression
      │   ├ Identifier
      │   │ └ a
      │   ├ +
      │   └ IntegerConstant
      │     └ 30
      └ IntegerConstant
        └ 3
