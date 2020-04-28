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
    │ │ └ b
    │ └ AdditiveExpression
    │   ├ Identifier
    │   │ └ a
    │   ├ +
    │   └ IntegerConstant
    │     └ 93
    ├ AssignmentStatement
    │ ├ Identifier
    │ │ └ b
    │ └ AdditiveExpression
    │   ├ Identifier
    │   │ └ a
    │   ├ -
    │   └ IntegerConstant
    │     └ 93
    ├ AssignmentStatement
    │ ├ Identifier
    │ │ └ b
    │ └ MultiplicativeExpression
    │   ├ Identifier
    │   │ └ a
    │   ├ *
    │   └ IntegerConstant
    │     └ 93
    ├ AssignmentStatement
    │ ├ Identifier
    │ │ └ b
    │ └ MultiplicativeExpression
    │   ├ Identifier
    │   │ └ a
    │   ├ /
    │   └ IntegerConstant
    │     └ 93
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
    │     ├ Identifier
    │     │ └ b
    │     ├ *
    │     └ Factor
    │       └ AdditiveExpression
    │         ├ IntegerConstant
    │         │ └ 23
    │         ├ -
    │         └ MultiplicativeExpression
    │           ├ IntegerConstant
    │           │ └ 15
    │           ├ *
    │           ├ IntegerConstant
    │           │ └ 6
    │           ├ /
    │           └ IntegerConstant
    │             └ 9
    ├ AssignmentStatement
    │ ├ Identifier
    │ │ └ a
    │ └ IntegerConstant
    │   └ 1
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
    │ │ ├ <
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
    │ │     └ 5
    │ └ AssignmentStatement
    │   ├ Identifier
    │   │ └ a
    │   └ MultiplicativeExpression
    │     ├ Identifier
    │     │ └ a
    │     ├ *
    │     └ IntegerConstant
    │       └ 7
    ├ IfStatement
    │ ├ RelationalExpression
    │ │ ├ Identifier
    │ │ │ └ b
    │ │ ├ ==
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
    │ │     └ 11
    │ └ AssignmentStatement
    │   ├ Identifier
    │   │ └ a
    │   └ MultiplicativeExpression
    │     ├ Identifier
    │     │ └ a
    │     ├ *
    │     └ IntegerConstant
    │       └ 13
    ├ IfStatement
    │ ├ RelationalExpression
    │ │ ├ Identifier
    │ │ │ └ b
    │ │ ├ >=
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
    │ │     └ 17
    │ └ AssignmentStatement
    │   ├ Identifier
    │   │ └ a
    │   └ MultiplicativeExpression
    │     ├ Identifier
    │     │ └ a
    │     ├ *
    │     └ IntegerConstant
    │       └ 19
    ├ IfStatement
    │ ├ RelationalExpression
    │ │ ├ Identifier
    │ │ │ └ b
    │ │ ├ <=
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
    │ │     └ 23
    │ └ AssignmentStatement
    │   ├ Identifier
    │   │ └ a
    │   └ MultiplicativeExpression
    │     ├ Identifier
    │     │ └ a
    │     ├ *
    │     └ IntegerConstant
    │       └ 29
    ├ IfStatement
    │ ├ RelationalExpression
    │ │ ├ Identifier
    │ │ │ └ b
    │ │ ├ !=
    │ │ └ IntegerConstant
    │ │   └ 0
    │ ├ AssignmentStatement
    │ │ ├ Identifier
    │ │ │ └ a
    │ │ └ MultiplicativeExpression
    │ │   ├ Identifier
    │ │   │ └ a
    │ │   ├ *
    │ │   └ IntegerConstant
    │ │     └ 31
    │ └ AssignmentStatement
    │   ├ Identifier
    │   │ └ a
    │   └ MultiplicativeExpression
    │     ├ Identifier
    │     │ └ a
    │     ├ *
    │     └ IntegerConstant
    │       └ 37
    └ IfStatement
      ├ Factor
      │ ├ Identifier
      │ │ └ not
      │ └ RelationalExpression
      │   ├ Identifier
      │   │ └ b
      │   ├ >
      │   └ Identifier
      │     └ a
      ├ AssignmentStatement
      │ ├ Identifier
      │ │ └ a
      │ └ MultiplicativeExpression
      │   ├ Identifier
      │   │ └ a
      │   ├ *
      │   └ IntegerConstant
      │     └ 41
      └ AssignmentStatement
        ├ Identifier
        │ └ a
        └ MultiplicativeExpression
          ├ Identifier
          │ └ a
          ├ *
          └ IntegerConstant
            └ 43
