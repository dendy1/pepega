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
    │ ├ Identifier
    │ │ └ a
    │ └ AdditiveExpression
    │   ├ IntegerConstant
    │   │ └ 2
    │   ├ +
    │   └ IntegerConstant
    │     └ 99
    ├ AssignmentStatement
    │ ├ Identifier
    │ │ └ b
    │ └ AdditiveExpression
    │   ├ IntegerConstant
    │   │ └ 3
    │   ├ +
    │   ├ MultiplicativeExpression
    │   │ ├ IntegerConstant
    │   │ │ └ 93
    │   │ ├ *
    │   │ └ IntegerConstant
    │   │   └ 5
    │   ├ +
    │   └ MultiplicativeExpression
    │     ├ IntegerConstant
    │     │ └ 87
    │     ├ *
    │     └ AdditiveExpression
    │       ├ IntegerConstant
    │       │ └ 23
    │       ├ +
    │       └ MultiplicativeExpression
    │         ├ IntegerConstant
    │         │ └ 15
    │         ├ *
    │         └ IntegerConstant
    │           └ 6
    ├ AssignmentStatement
    │ ├ IndexedVariable
    │ │ ├ Identifier
    │ │ │ └ c
    │ │ └ AdditiveExpression
    │ │   ├ IntegerConstant
    │ │   │ └ 4
    │ │   ├ +
    │ │   └ IntegerConstant
    │ │     └ 2
    │ └ AdditiveExpression
    │   ├ IntegerConstant
    │   │ └ 3
    │   ├ +
    │   ├ MultiplicativeExpression
    │   │ ├ IntegerConstant
    │   │ │ └ 9
    │   │ ├ *
    │   │ └ IntegerConstant
    │   │   └ 5
    │   ├ +
    │   └ MultiplicativeExpression
    │     ├ IntegerConstant
    │     │ └ 87
    │     ├ *
    │     └ AdditiveExpression
    │       ├ IntegerConstant
    │       │ └ 2
    │       ├ +
    │       └ MultiplicativeExpression
    │         ├ IntegerConstant
    │         │ └ 15
    │         ├ *
    │         └ IntegerConstant
    │           └ 6
    └ AssignmentStatement
      ├ IndexedVariable
      │ ├ Identifier
      │ │ └ c
      │ └ AdditiveExpression
      │   ├ IntegerConstant
      │   │ └ 3
      │   ├ +
      │   ├ MultiplicativeExpression
      │   │ ├ IntegerConstant
      │   │ │ └ 9
      │   │ ├ *
      │   │ └ IntegerConstant
      │   │   └ 5
      │   ├ +
      │   └ MultiplicativeExpression
      │     ├ IntegerConstant
      │     │ └ 87
      │     ├ *
      │     └ AdditiveExpression
      │       ├ IntegerConstant
      │       │ └ 2
      │       ├ +
      │       └ MultiplicativeExpression
      │         ├ IntegerConstant
      │         │ └ 15
      │         ├ *
      │         └ IntegerConstant
      │           └ 6
      └ AdditiveExpression
        ├ IntegerConstant
        │ └ 3
        ├ +
        ├ MultiplicativeExpression
        │ ├ IntegerConstant
        │ │ └ 9
        │ ├ *
        │ └ IntegerConstant
        │   └ 5
        ├ +
        └ MultiplicativeExpression
          ├ IntegerConstant
          │ └ 8
          ├ *
          └ AdditiveExpression
            ├ IntegerConstant
            │ └ 2
            ├ +
            └ MultiplicativeExpression
              ├ IntegerConstant
              │ └ 15
              ├ *
              └ IntegerConstant
                └ 6
