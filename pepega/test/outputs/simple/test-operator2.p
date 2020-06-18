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
    │     └ 6
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
    │       └ 15
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
    │ │ ├ >
    │ │ └ EntireVariable
    │ │   └ Identifier
    │ │     └ a
    │ ├ IfStatement
    │ │ ├ RelationalExpression
    │ │ │ ├ EntireVariable
    │ │ │ │ └ Identifier
    │ │ │ │   └ b
    │ │ │ ├ <
    │ │ │ └ AdditiveExpression
    │ │ │   ├ EntireVariable
    │ │ │   │ └ Identifier
    │ │ │   │   └ a
    │ │ │   ├ -
    │ │ │   └ ConstantVariable
    │ │ │     └ IntegerConstant
    │ │ │       └ 2
    │ │ ├ AssignmentStatement
    │ │ │ ├ EntireVariable
    │ │ │ │ └ Identifier
    │ │ │ │   └ a
    │ │ │ └ MultiplicativeExpression
    │ │ │   ├ EntireVariable
    │ │ │   │ └ Identifier
    │ │ │   │   └ a
    │ │ │   ├ *
    │ │ │   └ ConstantVariable
    │ │ │     └ IntegerConstant
    │ │ │       └ 5
    │ │ └ AssignmentStatement
    │ │   ├ EntireVariable
    │ │   │ └ Identifier
    │ │   │   └ a
    │ │   └ MultiplicativeExpression
    │ │     ├ EntireVariable
    │ │     │ └ Identifier
    │ │     │   └ a
    │ │     ├ *
    │ │     └ ConstantVariable
    │ │       └ IntegerConstant
    │ │         └ 7
    │ └ AssignmentStatement
    │   ├ EntireVariable
    │   │ └ Identifier
    │   │   └ a
    │   └ MultiplicativeExpression
    │     ├ EntireVariable
    │     │ └ Identifier
    │     │   └ a
    │     ├ /
    │     ├ ConstantVariable
    │     │ └ IntegerConstant
    │     │   └ 11
    │     ├ *
    │     └ ConstantVariable
    │       └ IntegerConstant
    │         └ 10
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
    │ └ IfStatement
    │   ├ RelationalExpression
    │   │ ├ EntireVariable
    │   │ │ └ Identifier
    │   │ │   └ b
    │   │ ├ >
    │   │ └ AdditiveExpression
    │   │   ├ ConstantVariable
    │   │   │ └ IntegerConstant
    │   │   │   └ 5
    │   │   ├ +
    │   │   └ EntireVariable
    │   │     └ Identifier
    │   │       └ a
    │   ├ AssignmentStatement
    │   │ ├ EntireVariable
    │   │ │ └ Identifier
    │   │ │   └ a
    │   │ └ AdditiveExpression
    │   │   ├ ConstantVariable
    │   │   │ └ IntegerConstant
    │   │   │   └ 23
    │   │   ├ -
    │   │   └ EntireVariable
    │   │     └ Identifier
    │   │       └ a
    │   └ AssignmentStatement
    │     ├ EntireVariable
    │     │ └ Identifier
    │     │   └ a
    │     └ MultiplicativeExpression
    │       ├ ConstantVariable
    │       │ └ IntegerConstant
    │       │   └ 948
    │       ├ /
    │       └ EntireVariable
    │         └ Identifier
    │           └ b
    ├ WhileStatement
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ Identifier
    │ │ │   └ b
    │ │ ├ >
    │ │ └ EntireVariable
    │ │   └ Identifier
    │ │     └ a
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
    ├ WhileStatement
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ Identifier
    │ │ │   └ b
    │ │ ├ >
    │ │ └ EntireVariable
    │ │   └ Identifier
    │ │     └ a
    │ └ StatementList
    │   ├ AssignmentStatement
    │   │ ├ EntireVariable
    │   │ │ └ Identifier
    │   │ │   └ b
    │   │ └ AdditiveExpression
    │   │   ├ EntireVariable
    │   │   │ └ Identifier
    │   │   │   └ b
    │   │   ├ +
    │   │   └ ConstantVariable
    │   │     └ IntegerConstant
    │   │       └ 3
    │   └ AssignmentStatement
    │     ├ EntireVariable
    │     │ └ Identifier
    │     │   └ a
    │     └ MultiplicativeExpression
    │       ├ EntireVariable
    │       │ └ Identifier
    │       │   └ a
    │       ├ *
    │       └ ConstantVariable
    │         └ IntegerConstant
    │           └ 7
    └ WhileStatement
      ├ RelationalExpression
      │ ├ EntireVariable
      │ │ └ Identifier
      │ │   └ b
      │ ├ >
      │ └ EntireVariable
      │   └ Identifier
      │     └ a
      └ WhileStatement
        ├ RelationalExpression
        │ ├ EntireVariable
        │ │ └ Identifier
        │ │   └ c
        │ ├ >
        │ └ AdditiveExpression
        │   ├ EntireVariable
        │   │ └ Identifier
        │   │   └ a
        │   ├ +
        │   └ EntireVariable
        │     └ Identifier
        │       └ b
        └ StatementList
          ├ AssignmentStatement
          │ ├ EntireVariable
          │ │ └ Identifier
          │ │   └ b
          │ └ AdditiveExpression
          │   ├ EntireVariable
          │   │ └ Identifier
          │   │   └ b
          │   ├ +
          │   └ ConstantVariable
          │     └ IntegerConstant
          │       └ 3
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
                  └ 7
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
    │     └ 6
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
    │       └ 15
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
    │ │ ├ >
    │ │ └ EntireVariable (integer)
    │ │   └ Identifier
    │ │     └ a
    │ ├ IfStatement (void)
    │ │ ├ RelationalExpression (boolean)
    │ │ │ ├ EntireVariable (integer)
    │ │ │ │ └ Identifier
    │ │ │ │   └ b
    │ │ │ ├ <
    │ │ │ └ AdditiveExpression (integer)
    │ │ │   ├ EntireVariable (integer)
    │ │ │   │ └ Identifier
    │ │ │   │   └ a
    │ │ │   ├ -
    │ │ │   └ ConstantVariable (integer)
    │ │ │     └ IntegerConstant (integer)
    │ │ │       └ 2
    │ │ ├ AssignmentStatement (integer)
    │ │ │ ├ EntireVariable (integer)
    │ │ │ │ └ Identifier
    │ │ │ │   └ a
    │ │ │ └ MultiplicativeExpression (integer)
    │ │ │   ├ EntireVariable (integer)
    │ │ │   │ └ Identifier
    │ │ │   │   └ a
    │ │ │   ├ *
    │ │ │   └ ConstantVariable (integer)
    │ │ │     └ IntegerConstant (integer)
    │ │ │       └ 5
    │ │ └ AssignmentStatement (integer)
    │ │   ├ EntireVariable (integer)
    │ │   │ └ Identifier
    │ │   │   └ a
    │ │   └ MultiplicativeExpression (integer)
    │ │     ├ EntireVariable (integer)
    │ │     │ └ Identifier
    │ │     │   └ a
    │ │     ├ *
    │ │     └ ConstantVariable (integer)
    │ │       └ IntegerConstant (integer)
    │ │         └ 7
    │ └ AssignmentStatement (integer)
    │   ├ EntireVariable (integer)
    │   │ └ Identifier
    │   │   └ a
    │   └ MultiplicativeExpression (integer)
    │     ├ EntireVariable (integer)
    │     │ └ Identifier
    │     │   └ a
    │     ├ /
    │     ├ ConstantVariable (integer)
    │     │ └ IntegerConstant (integer)
    │     │   └ 11
    │     ├ *
    │     └ ConstantVariable (integer)
    │       └ IntegerConstant (integer)
    │         └ 10
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
    │ └ IfStatement (void)
    │   ├ RelationalExpression (boolean)
    │   │ ├ EntireVariable (integer)
    │   │ │ └ Identifier
    │   │ │   └ b
    │   │ ├ >
    │   │ └ AdditiveExpression (integer)
    │   │   ├ ConstantVariable (integer)
    │   │   │ └ IntegerConstant (integer)
    │   │   │   └ 5
    │   │   ├ +
    │   │   └ EntireVariable (integer)
    │   │     └ Identifier
    │   │       └ a
    │   ├ AssignmentStatement (integer)
    │   │ ├ EntireVariable (integer)
    │   │ │ └ Identifier
    │   │ │   └ a
    │   │ └ AdditiveExpression (integer)
    │   │   ├ ConstantVariable (integer)
    │   │   │ └ IntegerConstant (integer)
    │   │   │   └ 23
    │   │   ├ -
    │   │   └ EntireVariable (integer)
    │   │     └ Identifier
    │   │       └ a
    │   └ AssignmentStatement (integer)
    │     ├ EntireVariable (integer)
    │     │ └ Identifier
    │     │   └ a
    │     └ MultiplicativeExpression (integer)
    │       ├ ConstantVariable (integer)
    │       │ └ IntegerConstant (integer)
    │       │   └ 948
    │       ├ /
    │       └ EntireVariable (integer)
    │         └ Identifier
    │           └ b
    ├ WhileStatement (void)
    │ ├ RelationalExpression (boolean)
    │ │ ├ EntireVariable (integer)
    │ │ │ └ Identifier
    │ │ │   └ b
    │ │ ├ >
    │ │ └ EntireVariable (integer)
    │ │   └ Identifier
    │ │     └ a
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
    ├ WhileStatement (void)
    │ ├ RelationalExpression (boolean)
    │ │ ├ EntireVariable (integer)
    │ │ │ └ Identifier
    │ │ │   └ b
    │ │ ├ >
    │ │ └ EntireVariable (integer)
    │ │   └ Identifier
    │ │     └ a
    │ └ StatementList
    │   ├ AssignmentStatement (integer)
    │   │ ├ EntireVariable (integer)
    │   │ │ └ Identifier
    │   │ │   └ b
    │   │ └ AdditiveExpression (integer)
    │   │   ├ EntireVariable (integer)
    │   │   │ └ Identifier
    │   │   │   └ b
    │   │   ├ +
    │   │   └ ConstantVariable (integer)
    │   │     └ IntegerConstant (integer)
    │   │       └ 3
    │   └ AssignmentStatement (integer)
    │     ├ EntireVariable (integer)
    │     │ └ Identifier
    │     │   └ a
    │     └ MultiplicativeExpression (integer)
    │       ├ EntireVariable (integer)
    │       │ └ Identifier
    │       │   └ a
    │       ├ *
    │       └ ConstantVariable (integer)
    │         └ IntegerConstant (integer)
    │           └ 7
    └ WhileStatement (void)
      ├ RelationalExpression (boolean)
      │ ├ EntireVariable (integer)
      │ │ └ Identifier
      │ │   └ b
      │ ├ >
      │ └ EntireVariable (integer)
      │   └ Identifier
      │     └ a
      └ WhileStatement (void)
        ├ RelationalExpression (boolean)
        │ ├ EntireVariable (integer)
        │ │ └ Identifier
        │ │   └ c
        │ ├ >
        │ └ AdditiveExpression (integer)
        │   ├ EntireVariable (integer)
        │   │ └ Identifier
        │   │   └ a
        │   ├ +
        │   └ EntireVariable (integer)
        │     └ Identifier
        │       └ b
        └ StatementList
          ├ AssignmentStatement (integer)
          │ ├ EntireVariable (integer)
          │ │ └ Identifier
          │ │   └ b
          │ └ AdditiveExpression (integer)
          │   ├ EntireVariable (integer)
          │   │ └ Identifier
          │   │   └ b
          │   ├ +
          │   └ ConstantVariable (integer)
          │     └ IntegerConstant (integer)
          │       └ 3
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
                  └ 7
