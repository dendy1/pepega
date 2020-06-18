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
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ Identifier
    │ │ │   └ b
    │ │ ├ >
    │ │ └ EntireVariable
    │ │   └ Identifier
    │ │     └ a
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
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ Identifier
    │ │ │   └ b
    │ │ ├ <
    │ │ └ EntireVariable
    │ │   └ Identifier
    │ │     └ a
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
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ Identifier
    │ │ │   └ b
    │ │ ├ ==
    │ │ └ EntireVariable
    │ │   └ Identifier
    │ │     └ a
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
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ Identifier
    │ │ │   └ b
    │ │ ├ >=
    │ │ └ EntireVariable
    │ │   └ Identifier
    │ │     └ a
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
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ Identifier
    │ │ │   └ b
    │ │ ├ <=
    │ │ └ EntireVariable
    │ │   └ Identifier
    │ │     └ a
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
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ Identifier
    │ │ │   └ b
    │ │ ├ !=
    │ │ └ ConstantVariable
    │ │   └ IntegerConstant
    │ │     └ 0
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
    │ ├ RelationalExpression (boolean)
    │ │ ├ EntireVariable (integer)
    │ │ │ └ Identifier
    │ │ │   └ b
    │ │ ├ >
    │ │ └ EntireVariable (integer)
    │ │   └ Identifier
    │ │     └ a
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
    │ ├ RelationalExpression (boolean)
    │ │ ├ EntireVariable (integer)
    │ │ │ └ Identifier
    │ │ │   └ b
    │ │ ├ <
    │ │ └ EntireVariable (integer)
    │ │   └ Identifier
    │ │     └ a
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
    │ ├ RelationalExpression (boolean)
    │ │ ├ EntireVariable (integer)
    │ │ │ └ Identifier
    │ │ │   └ b
    │ │ ├ ==
    │ │ └ EntireVariable (integer)
    │ │   └ Identifier
    │ │     └ a
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
    │ ├ RelationalExpression (boolean)
    │ │ ├ EntireVariable (integer)
    │ │ │ └ Identifier
    │ │ │   └ b
    │ │ ├ >=
    │ │ └ EntireVariable (integer)
    │ │   └ Identifier
    │ │     └ a
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
    │ ├ RelationalExpression (boolean)
    │ │ ├ EntireVariable (integer)
    │ │ │ └ Identifier
    │ │ │   └ b
    │ │ ├ <=
    │ │ └ EntireVariable (integer)
    │ │   └ Identifier
    │ │     └ a
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
    │ ├ RelationalExpression (boolean)
    │ │ ├ EntireVariable (integer)
    │ │ │ └ Identifier
    │ │ │   └ b
    │ │ ├ !=
    │ │ └ ConstantVariable (integer)
    │ │   └ IntegerConstant (integer)
    │ │     └ 0
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
