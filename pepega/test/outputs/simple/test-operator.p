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
    │     └ 10
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ b
    │ └ AdditiveExpression
    │   ├ EntireVariable
    │   │ └ Identifier
    │   │   └ a
    │   ├ +
    │   └ ConstantVariable
    │     └ IntegerConstant
    │       └ 93
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ b
    │ └ AdditiveExpression
    │   ├ EntireVariable
    │   │ └ Identifier
    │   │   └ a
    │   ├ -
    │   └ ConstantVariable
    │     └ IntegerConstant
    │       └ 93
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
    │       └ 93
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ b
    │ └ MultiplicativeExpression
    │   ├ EntireVariable
    │   │ └ Identifier
    │   │   └ a
    │   ├ /
    │   └ ConstantVariable
    │     └ IntegerConstant
    │       └ 93
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ b
    │ └ AdditiveExpression
    │   ├ ConstantVariable
    │   │ └ IntegerConstant
    │   │   └ 3
    │   ├ +
    │   ├ MultiplicativeExpression
    │   │ ├ ConstantVariable
    │   │ │ └ IntegerConstant
    │   │ │   └ 93
    │   │ ├ *
    │   │ └ ConstantVariable
    │   │   └ IntegerConstant
    │   │     └ 5
    │   ├ +
    │   └ MultiplicativeExpression
    │     ├ EntireVariable
    │     │ └ Identifier
    │     │   └ b
    │     ├ *
    │     └ AdditiveExpression
    │       ├ ConstantVariable
    │       │ └ IntegerConstant
    │       │   └ 23
    │       ├ -
    │       └ MultiplicativeExpression
    │         ├ ConstantVariable
    │         │ └ IntegerConstant
    │         │   └ 15
    │         ├ *
    │         ├ ConstantVariable
    │         │ └ IntegerConstant
    │         │   └ 6
    │         ├ /
    │         └ ConstantVariable
    │           └ IntegerConstant
    │             └ 9
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ a
    │ └ ConstantVariable
    │   └ IntegerConstant
    │     └ 1
    ├ IfStatement
    │ ├ if
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ Identifier
    │ │ │   └ b
    │ │ ├ >
    │ │ └ EntireVariable
    │ │   └ Identifier
    │ │     └ a
    │ ├ then
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
    │ ├ else
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
    │ ├ if
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ Identifier
    │ │ │   └ b
    │ │ ├ <
    │ │ └ EntireVariable
    │ │   └ Identifier
    │ │     └ a
    │ ├ then
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
    │ │       └ 5
    │ ├ else
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
    ├ IfStatement
    │ ├ if
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ Identifier
    │ │ │   └ b
    │ │ ├ ==
    │ │ └ EntireVariable
    │ │   └ Identifier
    │ │     └ a
    │ ├ then
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
    │ │       └ 11
    │ ├ else
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
    │         └ 13
    ├ IfStatement
    │ ├ if
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ Identifier
    │ │ │   └ b
    │ │ ├ >=
    │ │ └ EntireVariable
    │ │   └ Identifier
    │ │     └ a
    │ ├ then
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
    │ │       └ 17
    │ ├ else
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
    │         └ 19
    ├ IfStatement
    │ ├ if
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ Identifier
    │ │ │   └ b
    │ │ ├ <=
    │ │ └ EntireVariable
    │ │   └ Identifier
    │ │     └ a
    │ ├ then
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
    │ │       └ 23
    │ ├ else
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
    │         └ 29
    ├ IfStatement
    │ ├ if
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ Identifier
    │ │ │   └ b
    │ │ ├ !=
    │ │ └ ConstantVariable
    │ │   └ IntegerConstant
    │ │     └ 0
    │ ├ then
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
    │ │       └ 31
    │ ├ else
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
    │         └ 37
    └ IfStatement
      ├ if
      ├ Factor
      │ ├ not
      │ └ RelationalExpression
      │   ├ EntireVariable
      │   │ └ Identifier
      │   │   └ b
      │   ├ >
      │   └ EntireVariable
      │     └ Identifier
      │       └ a
      ├ then
      ├ AssignmentStatement
      │ ├ EntireVariable
      │ │ └ Identifier
      │ │   └ a
      │ └ MultiplicativeExpression
      │   ├ EntireVariable
      │   │ └ Identifier
      │   │   └ a
      │   ├ *
      │   └ ConstantVariable
      │     └ IntegerConstant
      │       └ 41
      ├ else
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
              └ 43


======== AST AFTER SEMANTIC ANALYSIS ========
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
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ a
    │ └ ConstantVariable (integer)
    │   └ IntegerConstant (integer)
    │     └ 10
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ b
    │ └ AdditiveExpression (integer)
    │   ├ EntireVariable (integer)
    │   │ └ Identifier
    │   │   └ a
    │   ├ +
    │   └ ConstantVariable (integer)
    │     └ IntegerConstant (integer)
    │       └ 93
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ b
    │ └ AdditiveExpression (integer)
    │   ├ EntireVariable (integer)
    │   │ └ Identifier
    │   │   └ a
    │   ├ -
    │   └ ConstantVariable (integer)
    │     └ IntegerConstant (integer)
    │       └ 93
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ b
    │ └ MultiplicativeExpression (integer)
    │   ├ EntireVariable (integer)
    │   │ └ Identifier
    │   │   └ a
    │   ├ *
    │   └ ConstantVariable (integer)
    │     └ IntegerConstant (integer)
    │       └ 93
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ b
    │ └ MultiplicativeExpression (integer)
    │   ├ EntireVariable (integer)
    │   │ └ Identifier
    │   │   └ a
    │   ├ /
    │   └ ConstantVariable (integer)
    │     └ IntegerConstant (integer)
    │       └ 93
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ b
    │ └ AdditiveExpression (integer)
    │   ├ ConstantVariable (integer)
    │   │ └ IntegerConstant (integer)
    │   │   └ 3
    │   ├ +
    │   ├ MultiplicativeExpression (integer)
    │   │ ├ ConstantVariable (integer)
    │   │ │ └ IntegerConstant (integer)
    │   │ │   └ 93
    │   │ ├ *
    │   │ └ ConstantVariable (integer)
    │   │   └ IntegerConstant (integer)
    │   │     └ 5
    │   ├ +
    │   └ MultiplicativeExpression (integer)
    │     ├ EntireVariable (integer)
    │     │ └ Identifier
    │     │   └ b
    │     ├ *
    │     └ AdditiveExpression (integer)
    │       ├ ConstantVariable (integer)
    │       │ └ IntegerConstant (integer)
    │       │   └ 23
    │       ├ -
    │       └ MultiplicativeExpression (integer)
    │         ├ ConstantVariable (integer)
    │         │ └ IntegerConstant (integer)
    │         │   └ 15
    │         ├ *
    │         ├ ConstantVariable (integer)
    │         │ └ IntegerConstant (integer)
    │         │   └ 6
    │         ├ /
    │         └ ConstantVariable (integer)
    │           └ IntegerConstant (integer)
    │             └ 9
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ a
    │ └ ConstantVariable (integer)
    │   └ IntegerConstant (integer)
    │     └ 1
    ├ IfStatement (void)
    │ ├ if
    │ ├ RelationalExpression (boolean)
    │ │ ├ EntireVariable (integer)
    │ │ │ └ Identifier
    │ │ │   └ b
    │ │ ├ >
    │ │ └ EntireVariable (integer)
    │ │   └ Identifier
    │ │     └ a
    │ ├ then
    │ ├ AssignmentStatement (integer)
    │ │ ├ EntireVariable (integer)
    │ │ │ └ Identifier
    │ │ │   └ a
    │ │ └ MultiplicativeExpression (integer)
    │ │   ├ EntireVariable (integer)
    │ │   │ └ Identifier
    │ │   │   └ a
    │ │   ├ *
    │ │   └ ConstantVariable (integer)
    │ │     └ IntegerConstant (integer)
    │ │       └ 2
    │ ├ else
    │ └ AssignmentStatement (integer)
    │   ├ EntireVariable (integer)
    │   │ └ Identifier
    │   │   └ a
    │   └ MultiplicativeExpression (integer)
    │     ├ EntireVariable (integer)
    │     │ └ Identifier
    │     │   └ a
    │     ├ *
    │     └ ConstantVariable (integer)
    │       └ IntegerConstant (integer)
    │         └ 3
    ├ IfStatement (void)
    │ ├ if
    │ ├ RelationalExpression (boolean)
    │ │ ├ EntireVariable (integer)
    │ │ │ └ Identifier
    │ │ │   └ b
    │ │ ├ <
    │ │ └ EntireVariable (integer)
    │ │   └ Identifier
    │ │     └ a
    │ ├ then
    │ ├ AssignmentStatement (integer)
    │ │ ├ EntireVariable (integer)
    │ │ │ └ Identifier
    │ │ │   └ a
    │ │ └ MultiplicativeExpression (integer)
    │ │   ├ EntireVariable (integer)
    │ │   │ └ Identifier
    │ │   │   └ a
    │ │   ├ *
    │ │   └ ConstantVariable (integer)
    │ │     └ IntegerConstant (integer)
    │ │       └ 5
    │ ├ else
    │ └ AssignmentStatement (integer)
    │   ├ EntireVariable (integer)
    │   │ └ Identifier
    │   │   └ a
    │   └ MultiplicativeExpression (integer)
    │     ├ EntireVariable (integer)
    │     │ └ Identifier
    │     │   └ a
    │     ├ *
    │     └ ConstantVariable (integer)
    │       └ IntegerConstant (integer)
    │         └ 7
    ├ IfStatement (void)
    │ ├ if
    │ ├ RelationalExpression (boolean)
    │ │ ├ EntireVariable (integer)
    │ │ │ └ Identifier
    │ │ │   └ b
    │ │ ├ ==
    │ │ └ EntireVariable (integer)
    │ │   └ Identifier
    │ │     └ a
    │ ├ then
    │ ├ AssignmentStatement (integer)
    │ │ ├ EntireVariable (integer)
    │ │ │ └ Identifier
    │ │ │   └ a
    │ │ └ MultiplicativeExpression (integer)
    │ │   ├ EntireVariable (integer)
    │ │   │ └ Identifier
    │ │   │   └ a
    │ │   ├ *
    │ │   └ ConstantVariable (integer)
    │ │     └ IntegerConstant (integer)
    │ │       └ 11
    │ ├ else
    │ └ AssignmentStatement (integer)
    │   ├ EntireVariable (integer)
    │   │ └ Identifier
    │   │   └ a
    │   └ MultiplicativeExpression (integer)
    │     ├ EntireVariable (integer)
    │     │ └ Identifier
    │     │   └ a
    │     ├ *
    │     └ ConstantVariable (integer)
    │       └ IntegerConstant (integer)
    │         └ 13
    ├ IfStatement (void)
    │ ├ if
    │ ├ RelationalExpression (boolean)
    │ │ ├ EntireVariable (integer)
    │ │ │ └ Identifier
    │ │ │   └ b
    │ │ ├ >=
    │ │ └ EntireVariable (integer)
    │ │   └ Identifier
    │ │     └ a
    │ ├ then
    │ ├ AssignmentStatement (integer)
    │ │ ├ EntireVariable (integer)
    │ │ │ └ Identifier
    │ │ │   └ a
    │ │ └ MultiplicativeExpression (integer)
    │ │   ├ EntireVariable (integer)
    │ │   │ └ Identifier
    │ │   │   └ a
    │ │   ├ *
    │ │   └ ConstantVariable (integer)
    │ │     └ IntegerConstant (integer)
    │ │       └ 17
    │ ├ else
    │ └ AssignmentStatement (integer)
    │   ├ EntireVariable (integer)
    │   │ └ Identifier
    │   │   └ a
    │   └ MultiplicativeExpression (integer)
    │     ├ EntireVariable (integer)
    │     │ └ Identifier
    │     │   └ a
    │     ├ *
    │     └ ConstantVariable (integer)
    │       └ IntegerConstant (integer)
    │         └ 19
    ├ IfStatement (void)
    │ ├ if
    │ ├ RelationalExpression (boolean)
    │ │ ├ EntireVariable (integer)
    │ │ │ └ Identifier
    │ │ │   └ b
    │ │ ├ <=
    │ │ └ EntireVariable (integer)
    │ │   └ Identifier
    │ │     └ a
    │ ├ then
    │ ├ AssignmentStatement (integer)
    │ │ ├ EntireVariable (integer)
    │ │ │ └ Identifier
    │ │ │   └ a
    │ │ └ MultiplicativeExpression (integer)
    │ │   ├ EntireVariable (integer)
    │ │   │ └ Identifier
    │ │   │   └ a
    │ │   ├ *
    │ │   └ ConstantVariable (integer)
    │ │     └ IntegerConstant (integer)
    │ │       └ 23
    │ ├ else
    │ └ AssignmentStatement (integer)
    │   ├ EntireVariable (integer)
    │   │ └ Identifier
    │   │   └ a
    │   └ MultiplicativeExpression (integer)
    │     ├ EntireVariable (integer)
    │     │ └ Identifier
    │     │   └ a
    │     ├ *
    │     └ ConstantVariable (integer)
    │       └ IntegerConstant (integer)
    │         └ 29
    ├ IfStatement (void)
    │ ├ if
    │ ├ RelationalExpression (boolean)
    │ │ ├ EntireVariable (integer)
    │ │ │ └ Identifier
    │ │ │   └ b
    │ │ ├ !=
    │ │ └ ConstantVariable (integer)
    │ │   └ IntegerConstant (integer)
    │ │     └ 0
    │ ├ then
    │ ├ AssignmentStatement (integer)
    │ │ ├ EntireVariable (integer)
    │ │ │ └ Identifier
    │ │ │   └ a
    │ │ └ MultiplicativeExpression (integer)
    │ │   ├ EntireVariable (integer)
    │ │   │ └ Identifier
    │ │   │   └ a
    │ │   ├ *
    │ │   └ ConstantVariable (integer)
    │ │     └ IntegerConstant (integer)
    │ │       └ 31
    │ ├ else
    │ └ AssignmentStatement (integer)
    │   ├ EntireVariable (integer)
    │   │ └ Identifier
    │   │   └ a
    │   └ MultiplicativeExpression (integer)
    │     ├ EntireVariable (integer)
    │     │ └ Identifier
    │     │   └ a
    │     ├ *
    │     └ ConstantVariable (integer)
    │       └ IntegerConstant (integer)
    │         └ 37
    └ IfStatement (void)
      ├ if
      ├ Factor (boolean)
      │ ├ not
      │ └ RelationalExpression (boolean)
      │   ├ EntireVariable (integer)
      │   │ └ Identifier
      │   │   └ b
      │   ├ >
      │   └ EntireVariable (integer)
      │     └ Identifier
      │       └ a
      ├ then
      ├ AssignmentStatement (integer)
      │ ├ EntireVariable (integer)
      │ │ └ Identifier
      │ │   └ a
      │ └ MultiplicativeExpression (integer)
      │   ├ EntireVariable (integer)
      │   │ └ Identifier
      │   │   └ a
      │   ├ *
      │   └ ConstantVariable (integer)
      │     └ IntegerConstant (integer)
      │       └ 41
      ├ else
      └ AssignmentStatement (integer)
        ├ EntireVariable (integer)
        │ └ Identifier
        │   └ a
        └ MultiplicativeExpression (integer)
          ├ EntireVariable (integer)
          │ └ Identifier
          │   └ a
          ├ *
          └ ConstantVariable (integer)
            └ IntegerConstant (integer)
              └ 43


======== BYTECODE ========
0:		 BEGIN_SCOPE 
1:		 DECLARE_LOCAL a
2:		 DECLARE_LOCAL b
3:		 DECLARE_LOCAL c
4:		 DECLARE_LOCAL d
5:		 DECLARE_LOCAL e
6:		 PUSH 10
7:		 ASSIGN a
8:		 PUSH a
9:		 PUSH 93
10:		 SUM 
11:		 ASSIGN b
12:		 PUSH a
13:		 PUSH 93
14:		 SUBTRACT 
15:		 ASSIGN b
16:		 PUSH a
17:		 PUSH 93
18:		 MULTIPLY 
19:		 ASSIGN b
20:		 PUSH a
21:		 PUSH 93
22:		 DIVIDE 
23:		 ASSIGN b
24:		 PUSH 3
25:		 PUSH 93
26:		 PUSH 5
27:		 MULTIPLY 
28:		 SUM 
29:		 PUSH 93
30:		 PUSH 5
31:		 MULTIPLY 
32:		 PUSH b
33:		 PUSH 23
34:		 PUSH 15
35:		 PUSH 6
36:		 MULTIPLY 
37:		 PUSH 6
38:		 PUSH 9
39:		 DIVIDE 
40:		 SUBTRACT 
41:		 MULTIPLY 
42:		 SUM 
43:		 ASSIGN b
44:		 PUSH 1
45:		 ASSIGN a
46:		 BEGIN_SCOPE 
47:		 PUSH b
48:		 PUSH a
49:		 COMPARE_GT 
50:		 JUMP_NEG 58
51:		 PUSH a
52:		 PUSH 2
53:		 MULTIPLY 
54:		 ASSIGN a
55:		 JUMP 63
56:		 END_SCOPE 
57:		 BEGIN_SCOPE 
58:		 PUSH a
59:		 PUSH 3
60:		 MULTIPLY 
61:		 ASSIGN a
62:		 END_SCOPE 
63:		 BEGIN_SCOPE 
64:		 PUSH b
65:		 PUSH a
66:		 COMPARE_LT 
67:		 JUMP_NEG 75
68:		 PUSH a
69:		 PUSH 5
70:		 MULTIPLY 
71:		 ASSIGN a
72:		 JUMP 80
73:		 END_SCOPE 
74:		 BEGIN_SCOPE 
75:		 PUSH a
76:		 PUSH 7
77:		 MULTIPLY 
78:		 ASSIGN a
79:		 END_SCOPE 
80:		 BEGIN_SCOPE 
81:		 PUSH b
82:		 PUSH a
83:		 COMPARE_EQ 
84:		 JUMP_NEG 92
85:		 PUSH a
86:		 PUSH 11
87:		 MULTIPLY 
88:		 ASSIGN a
89:		 JUMP 97
90:		 END_SCOPE 
91:		 BEGIN_SCOPE 
92:		 PUSH a
93:		 PUSH 13
94:		 MULTIPLY 
95:		 ASSIGN a
96:		 END_SCOPE 
97:		 BEGIN_SCOPE 
98:		 PUSH b
99:		 PUSH a
100:		 COMPARE_GE 
101:		 JUMP_NEG 109
102:		 PUSH a
103:		 PUSH 17
104:		 MULTIPLY 
105:		 ASSIGN a
106:		 JUMP 114
107:		 END_SCOPE 
108:		 BEGIN_SCOPE 
109:		 PUSH a
110:		 PUSH 19
111:		 MULTIPLY 
112:		 ASSIGN a
113:		 END_SCOPE 
114:		 BEGIN_SCOPE 
115:		 PUSH b
116:		 PUSH a
117:		 COMPARE_LE 
118:		 JUMP_NEG 126
119:		 PUSH a
120:		 PUSH 23
121:		 MULTIPLY 
122:		 ASSIGN a
123:		 JUMP 131
124:		 END_SCOPE 
125:		 BEGIN_SCOPE 
126:		 PUSH a
127:		 PUSH 29
128:		 MULTIPLY 
129:		 ASSIGN a
130:		 END_SCOPE 
131:		 BEGIN_SCOPE 
132:		 PUSH b
133:		 PUSH 0
134:		 COMPARE_NE 
135:		 JUMP_NEG 143
136:		 PUSH a
137:		 PUSH 31
138:		 MULTIPLY 
139:		 ASSIGN a
140:		 JUMP 148
141:		 END_SCOPE 
142:		 BEGIN_SCOPE 
143:		 PUSH a
144:		 PUSH 37
145:		 MULTIPLY 
146:		 ASSIGN a
147:		 END_SCOPE 
148:		 BEGIN_SCOPE 
149:		 PUSH b
150:		 PUSH a
151:		 COMPARE_GT 
152:		 BOOLEAN_NOT 
153:		 JUMP_NEG 161
154:		 PUSH a
155:		 PUSH 41
156:		 MULTIPLY 
157:		 ASSIGN a
158:		 JUMP 166
159:		 END_SCOPE 
160:		 BEGIN_SCOPE 
161:		 PUSH a
162:		 PUSH 43
163:		 MULTIPLY 
164:		 ASSIGN a
165:		 END_SCOPE 
166:		 END_SCOPE 


======== PROGRAM RESULT ========
