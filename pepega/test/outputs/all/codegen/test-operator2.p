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
    │ └ IntegerConstant
    │   └ 6
    ├ AssignmentStatement
    │ ├ Identifier
    │ │ └ b
    │ └ MultiplicativeExpression
    │   ├ Identifier
    │   │ └ a
    │   ├ *
    │   └ IntegerConstant
    │     └ 15
    ├ IfStatement
    │ ├ RelationalExpression
    │ │ ├ Identifier
    │ │ │ └ b
    │ │ ├ >
    │ │ └ Identifier
    │ │   └ a
    │ ├ AssignmentStatement
    │ │ ├ Identifier
    │ │ │ └ a
    │ │ └ MultiplicativeExpression
    │ │   ├ Identifier
    │ │   │ └ a
    │ │   ├ *
    │ │   └ IntegerConstant
    │ │     └ 2
    │ └ AssignmentStatement
    │   ├ Identifier
    │   │ └ a
    │   └ MultiplicativeExpression
    │     ├ Identifier
    │     │ └ a
    │     ├ *
    │     └ IntegerConstant
    │       └ 3
    ├ IfStatement
    │ ├ RelationalExpression
    │ │ ├ Identifier
    │ │ │ └ b
    │ │ ├ >
    │ │ └ Identifier
    │ │   └ a
    │ ├ IfStatement
    │ │ ├ RelationalExpression
    │ │ │ ├ Identifier
    │ │ │ │ └ b
    │ │ │ ├ <
    │ │ │ └ AdditiveExpression
    │ │ │   ├ Identifier
    │ │ │   │ └ a
    │ │ │   ├ -
    │ │ │   └ IntegerConstant
    │ │ │     └ 2
    │ │ ├ AssignmentStatement
    │ │ │ ├ Identifier
    │ │ │ │ └ a
    │ │ │ └ MultiplicativeExpression
    │ │ │   ├ Identifier
    │ │ │   │ └ a
    │ │ │   ├ *
    │ │ │   └ IntegerConstant
    │ │ │     └ 5
    │ │ └ AssignmentStatement
    │ │   ├ Identifier
    │ │   │ └ a
    │ │   └ MultiplicativeExpression
    │ │     ├ Identifier
    │ │     │ └ a
    │ │     ├ *
    │ │     └ IntegerConstant
    │ │       └ 7
    │ └ AssignmentStatement
    │   ├ Identifier
    │   │ └ a
    │   └ MultiplicativeExpression
    │     ├ Identifier
    │     │ └ a
    │     ├ /
    │     ├ IntegerConstant
    │     │ └ 11
    │     ├ *
    │     └ SignedFactor
    │       └ Factor
    │         └ Variable
    │           └ EntireVariable
    │             └ Identifier
    │               └ a
    ├ IfStatement
    │ ├ RelationalExpression
    │ │ ├ Identifier
    │ │ │ └ b
    │ │ ├ >
    │ │ └ Identifier
    │ │   └ a
    │ ├ AssignmentStatement
    │ │ ├ Identifier
    │ │ │ └ a
    │ │ └ MultiplicativeExpression
    │ │   ├ Identifier
    │ │   │ └ a
    │ │   ├ *
    │ │   └ IntegerConstant
    │ │     └ 2
    │ └ IfStatement
    │   ├ RelationalExpression
    │   │ ├ Identifier
    │   │ │ └ b
    │   │ ├ >
    │   │ └ AdditiveExpression
    │   │   ├ IntegerConstant
    │   │   │ └ 5
    │   │   ├ +
    │   │   └ Identifier
    │   │     └ a
    │   ├ AssignmentStatement
    │   │ ├ Identifier
    │   │ │ └ a
    │   │ └ AdditiveExpression
    │   │   ├ IntegerConstant
    │   │   │ └ 23
    │   │   ├ -
    │   │   └ Identifier
    │   │     └ a
    │   └ AssignmentStatement
    │     ├ Identifier
    │     │ └ a
    │     └ MultiplicativeExpression
    │       ├ IntegerConstant
    │       │ └ 948
    │       ├ /
    │       └ Identifier
    │         └ b
    ├ WhileStatement
    │ ├ RelationalExpression
    │ │ ├ Identifier
    │ │ │ └ b
    │ │ ├ >
    │ │ └ Identifier
    │ │   └ a
    │ └ AssignmentStatement
    │   ├ Identifier
    │   │ └ a
    │   └ MultiplicativeExpression
    │     ├ Identifier
    │     │ └ a
    │     ├ *
    │     └ IntegerConstant
    │       └ 7
    ├ WhileStatement
    │ ├ RelationalExpression
    │ │ ├ Identifier
    │ │ │ └ b
    │ │ ├ >
    │ │ └ Identifier
    │ │   └ a
    │ └ StatementList
    │   ├ AssignmentStatement
    │   │ ├ Identifier
    │   │ │ └ b
    │   │ └ AdditiveExpression
    │   │   ├ Identifier
    │   │   │ └ b
    │   │   ├ +
    │   │   └ IntegerConstant
    │   │     └ 3
    │   └ AssignmentStatement
    │     ├ Identifier
    │     │ └ a
    │     └ MultiplicativeExpression
    │       ├ Identifier
    │       │ └ a
    │       ├ *
    │       └ IntegerConstant
    │         └ 7
    └ WhileStatement
      ├ RelationalExpression
      │ ├ Identifier
      │ │ └ b
      │ ├ >
      │ └ Identifier
      │   └ a
      └ WhileStatement
        ├ RelationalExpression
        │ ├ Identifier
        │ │ └ c
        │ ├ >
        │ └ AdditiveExpression
        │   ├ Identifier
        │   │ └ a
        │   ├ +
        │   └ Identifier
        │     └ b
        └ StatementList
          ├ AssignmentStatement
          │ ├ Identifier
          │ │ └ b
          │ └ AdditiveExpression
          │   ├ Identifier
          │   │ └ b
          │   ├ +
          │   └ IntegerConstant
          │     └ 3
          └ AssignmentStatement
            ├ Identifier
            │ └ a
            └ MultiplicativeExpression
              ├ Identifier
              │ └ a
              ├ *
              └ IntegerConstant
                └ 7
