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
    │ │ └ a
    │ └ IntegerConstant
    │   └ 6
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ b
    │ └ MultiplicativeExpression
    │   ├ EntireVariable
    │   │ └ a
    │   ├ *
    │   └ IntegerConstant
    │     └ 15
    ├ IfStatement
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ b
    │ │ ├ >
    │ │ └ EntireVariable
    │ │   └ a
    │ ├ AssignmentStatement
    │ │ ├ EntireVariable
    │ │ │ └ a
    │ │ └ MultiplicativeExpression
    │ │   ├ EntireVariable
    │ │   │ └ a
    │ │   ├ *
    │ │   └ IntegerConstant
    │ │     └ 2
    │ └ AssignmentStatement
    │   ├ EntireVariable
    │   │ └ a
    │   └ MultiplicativeExpression
    │     ├ EntireVariable
    │     │ └ a
    │     ├ *
    │     └ IntegerConstant
    │       └ 3
    ├ IfStatement
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ b
    │ │ ├ >
    │ │ └ EntireVariable
    │ │   └ a
    │ ├ IfStatement
    │ │ ├ RelationalExpression
    │ │ │ ├ EntireVariable
    │ │ │ │ └ b
    │ │ │ ├ <
    │ │ │ └ AdditiveExpression
    │ │ │   ├ EntireVariable
    │ │ │   │ └ a
    │ │ │   ├ -
    │ │ │   └ IntegerConstant
    │ │ │     └ 2
    │ │ ├ AssignmentStatement
    │ │ │ ├ EntireVariable
    │ │ │ │ └ a
    │ │ │ └ MultiplicativeExpression
    │ │ │   ├ EntireVariable
    │ │ │   │ └ a
    │ │ │   ├ *
    │ │ │   └ IntegerConstant
    │ │ │     └ 5
    │ │ └ AssignmentStatement
    │ │   ├ EntireVariable
    │ │   │ └ a
    │ │   └ MultiplicativeExpression
    │ │     ├ EntireVariable
    │ │     │ └ a
    │ │     ├ *
    │ │     └ IntegerConstant
    │ │       └ 7
    │ └ AssignmentStatement
    │   ├ EntireVariable
    │   │ └ a
    │   └ MultiplicativeExpression
    │     ├ EntireVariable
    │     │ └ a
    │     ├ /
    │     ├ IntegerConstant
    │     │ └ 11
    │     ├ *
    │     └ SignedFactor
    │       └ Factor
    │         └ Variable
    │           └ EntireVariable
    │             └ a
    ├ IfStatement
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ b
    │ │ ├ >
    │ │ └ EntireVariable
    │ │   └ a
    │ ├ AssignmentStatement
    │ │ ├ EntireVariable
    │ │ │ └ a
    │ │ └ MultiplicativeExpression
    │ │   ├ EntireVariable
    │ │   │ └ a
    │ │   ├ *
    │ │   └ IntegerConstant
    │ │     └ 2
    │ └ IfStatement
    │   ├ RelationalExpression
    │   │ ├ EntireVariable
    │   │ │ └ b
    │   │ ├ >
    │   │ └ AdditiveExpression
    │   │   ├ IntegerConstant
    │   │   │ └ 5
    │   │   ├ +
    │   │   └ EntireVariable
    │   │     └ a
    │   ├ AssignmentStatement
    │   │ ├ EntireVariable
    │   │ │ └ a
    │   │ └ AdditiveExpression
    │   │   ├ IntegerConstant
    │   │   │ └ 23
    │   │   ├ -
    │   │   └ EntireVariable
    │   │     └ a
    │   └ AssignmentStatement
    │     ├ EntireVariable
    │     │ └ a
    │     └ MultiplicativeExpression
    │       ├ IntegerConstant
    │       │ └ 948
    │       ├ /
    │       └ EntireVariable
    │         └ b
    ├ WhileStatement
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ b
    │ │ ├ >
    │ │ └ EntireVariable
    │ │   └ a
    │ └ AssignmentStatement
    │   ├ EntireVariable
    │   │ └ a
    │   └ MultiplicativeExpression
    │     ├ EntireVariable
    │     │ └ a
    │     ├ *
    │     └ IntegerConstant
    │       └ 7
    ├ WhileStatement
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ b
    │ │ ├ >
    │ │ └ EntireVariable
    │ │   └ a
    │ └ StatementList
    │   ├ AssignmentStatement
    │   │ ├ EntireVariable
    │   │ │ └ b
    │   │ └ AdditiveExpression
    │   │   ├ EntireVariable
    │   │   │ └ b
    │   │   ├ +
    │   │   └ IntegerConstant
    │   │     └ 3
    │   └ AssignmentStatement
    │     ├ EntireVariable
    │     │ └ a
    │     └ MultiplicativeExpression
    │       ├ EntireVariable
    │       │ └ a
    │       ├ *
    │       └ IntegerConstant
    │         └ 7
    └ WhileStatement
      ├ RelationalExpression
      │ ├ EntireVariable
      │ │ └ b
      │ ├ >
      │ └ EntireVariable
      │   └ a
      └ WhileStatement
        ├ RelationalExpression
        │ ├ EntireVariable
        │ │ └ c
        │ ├ >
        │ └ AdditiveExpression
        │   ├ EntireVariable
        │   │ └ a
        │   ├ +
        │   └ EntireVariable
        │     └ b
        └ StatementList
          ├ AssignmentStatement
          │ ├ EntireVariable
          │ │ └ b
          │ └ AdditiveExpression
          │   ├ EntireVariable
          │   │ └ b
          │   ├ +
          │   └ IntegerConstant
          │     └ 3
          └ AssignmentStatement
            ├ EntireVariable
            │ └ a
            └ MultiplicativeExpression
              ├ EntireVariable
              │ └ a
              ├ *
              └ IntegerConstant
                └ 7
