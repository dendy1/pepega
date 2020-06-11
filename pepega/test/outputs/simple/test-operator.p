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
    │ │ └ b
    │ └ AdditiveExpression
    │   ├ EntireVariable
    │   │ └ a
    │   ├ +
    │   └ IntegerConstant
    │     └ 93
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ b
    │ └ AdditiveExpression
    │   ├ EntireVariable
    │   │ └ a
    │   ├ -
    │   └ IntegerConstant
    │     └ 93
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ b
    │ └ MultiplicativeExpression
    │   ├ EntireVariable
    │   │ └ a
    │   ├ *
    │   └ IntegerConstant
    │     └ 93
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ b
    │ └ MultiplicativeExpression
    │   ├ EntireVariable
    │   │ └ a
    │   ├ /
    │   └ IntegerConstant
    │     └ 93
    ├ AssignmentStatement
    │ ├ EntireVariable
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
    │     ├ EntireVariable
    │     │ └ b
    │     ├ *
    │     └ AdditiveExpression
    │       ├ IntegerConstant
    │       │ └ 23
    │       ├ -
    │       └ MultiplicativeExpression
    │         ├ IntegerConstant
    │         │ └ 15
    │         ├ *
    │         ├ IntegerConstant
    │         │ └ 6
    │         ├ /
    │         └ IntegerConstant
    │           └ 9
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ a
    │ └ IntegerConstant
    │   └ 1
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
    │ │ ├ <
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
    │ │     └ 5
    │ └ AssignmentStatement
    │   ├ EntireVariable
    │   │ └ a
    │   └ MultiplicativeExpression
    │     ├ EntireVariable
    │     │ └ a
    │     ├ *
    │     └ IntegerConstant
    │       └ 7
    ├ IfStatement
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ b
    │ │ ├ ==
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
    │ │     └ 11
    │ └ AssignmentStatement
    │   ├ EntireVariable
    │   │ └ a
    │   └ MultiplicativeExpression
    │     ├ EntireVariable
    │     │ └ a
    │     ├ *
    │     └ IntegerConstant
    │       └ 13
    ├ IfStatement
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ b
    │ │ ├ >=
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
    │ │     └ 17
    │ └ AssignmentStatement
    │   ├ EntireVariable
    │   │ └ a
    │   └ MultiplicativeExpression
    │     ├ EntireVariable
    │     │ └ a
    │     ├ *
    │     └ IntegerConstant
    │       └ 19
    ├ IfStatement
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ b
    │ │ ├ <=
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
    │ │     └ 23
    │ └ AssignmentStatement
    │   ├ EntireVariable
    │   │ └ a
    │   └ MultiplicativeExpression
    │     ├ EntireVariable
    │     │ └ a
    │     ├ *
    │     └ IntegerConstant
    │       └ 29
    ├ IfStatement
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ b
    │ │ ├ !=
    │ │ └ IntegerConstant
    │ │   └ 0
    │ ├ AssignmentStatement
    │ │ ├ EntireVariable
    │ │ │ └ a
    │ │ └ MultiplicativeExpression
    │ │   ├ EntireVariable
    │ │   │ └ a
    │ │   ├ *
    │ │   └ IntegerConstant
    │ │     └ 31
    │ └ AssignmentStatement
    │   ├ EntireVariable
    │   │ └ a
    │   └ MultiplicativeExpression
    │     ├ EntireVariable
    │     │ └ a
    │     ├ *
    │     └ IntegerConstant
    │       └ 37
    └ IfStatement
      ├ Factor
      │ ├ not
      │ └ RelationalExpression
      │   ├ EntireVariable
      │   │ └ b
      │   ├ >
      │   └ EntireVariable
      │     └ a
      ├ AssignmentStatement
      │ ├ EntireVariable
      │ │ └ a
      │ └ MultiplicativeExpression
      │   ├ EntireVariable
      │   │ └ a
      │   ├ *
      │   └ IntegerConstant
      │     └ 41
      └ AssignmentStatement
        ├ EntireVariable
        │ └ a
        └ MultiplicativeExpression
          ├ EntireVariable
          │ └ a
          ├ *
          └ IntegerConstant
            └ 43
