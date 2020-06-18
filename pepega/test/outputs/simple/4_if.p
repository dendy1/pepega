======== AST ========
Program
├ Identifier
│ └ test
├ Identifier
│ └ in
├ Identifier
│ └ out
├ Identifier
│ └ err
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
  │   │ └ d
  │   ├ Identifier
  │   │ └ e
  │   └ Type
  │     └ integer
  └ StatementList
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ a
    │ └ ConstantVariable
    │   └ IntegerConstant
    │     └ 3
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
    │       └ 3
    ├ IfStatement
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ Identifier
    │ │ │   └ b
    │ │ ├ >
    │ │ └ ConstantVariable
    │ │   └ IntegerConstant
    │ │     └ 50
    │ ├ StatementList
    │ │ └ AssignmentStatement
    │ │   ├ EntireVariable
    │ │   │ └ Identifier
    │ │   │   └ c
    │ │   └ AdditiveExpression
    │ │     ├ EntireVariable
    │ │     │ └ Identifier
    │ │     │   └ a
    │ │     ├ +
    │ │     ├ EntireVariable
    │ │     │ └ Identifier
    │ │     │   └ b
    │ │     ├ -
    │ │     └ ConstantVariable
    │ │       └ IntegerConstant
    │ │         └ 2
    │ └ StatementList
    │   └ AssignmentStatement
    │     ├ EntireVariable
    │     │ └ Identifier
    │     │   └ c
    │     └ AdditiveExpression
    │       ├ MultiplicativeExpression
    │       │ ├ EntireVariable
    │       │ │ └ Identifier
    │       │ │   └ b
    │       │ ├ *
    │       │ └ EntireVariable
    │       │   └ Identifier
    │       │     └ a
    │       ├ -
    │       └ ConstantVariable
    │         └ IntegerConstant
    │           └ 7
    ├ IfStatement
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ Identifier
    │ │ │   └ c
    │ │ ├ >
    │ │ └ ConstantVariable
    │ │   └ IntegerConstant
    │ │     └ 5
    │ ├ StatementList
    │ │ └ AssignmentStatement
    │ │   ├ EntireVariable
    │ │   │ └ Identifier
    │ │   │   └ d
    │ │   └ AdditiveExpression
    │ │     ├ EntireVariable
    │ │     │ └ Identifier
    │ │     │   └ c
    │ │     ├ +
    │ │     ├ EntireVariable
    │ │     │ └ Identifier
    │ │     │   └ a
    │ │     ├ -
    │ │     └ EntireVariable
    │ │       └ Identifier
    │ │         └ b
    │ └ StatementList
    │   └ AssignmentStatement
    │     ├ EntireVariable
    │     │ └ Identifier
    │     │   └ d
    │     └ AdditiveExpression
    │       ├ EntireVariable
    │       │ └ Identifier
    │       │   └ c
    │       ├ -
    │       ├ EntireVariable
    │       │ └ Identifier
    │       │   └ a
    │       ├ +
    │       └ EntireVariable
    │         └ Identifier
    │           └ b
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ e
    │ └ ConstantVariable
    │   └ IntegerConstant
    │     └ 7
    └ ProcedureStatement
      ├ Identifier
      │ └ printint
      └ Arguments
        └ AdditiveExpression
          ├ MultiplicativeExpression
          │ ├ EntireVariable
          │ │ └ Identifier
          │ │   └ a
          │ ├ *
          │ └ EntireVariable
          │   └ Identifier
          │     └ b
          ├ +
          ├ MultiplicativeExpression
          │ ├ EntireVariable
          │ │ └ Identifier
          │ │   └ c
          │ ├ /
          │ └ EntireVariable
          │   └ Identifier
          │     └ d
          ├ -
          └ EntireVariable
            └ Identifier
              └ e
======== AST AFTER SEMANTIC ANALYSIS ========
Program
├ Identifier
│ └ test
├ Identifier
│ └ in
├ Identifier
│ └ out
├ Identifier
│ └ err
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
  │   │ └ d
  │   ├ Identifier
  │   │ └ e
  │   └ Type
  │     └ integer
  └ StatementList
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ a
    │ └ ConstantVariable (integer)
    │   └ IntegerConstant (integer)
    │     └ 3
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
    │       └ 3
    ├ IfStatement (void)
    │ ├ RelationalExpression (boolean)
    │ │ ├ EntireVariable (integer)
    │ │ │ └ Identifier
    │ │ │   └ b
    │ │ ├ >
    │ │ └ ConstantVariable (integer)
    │ │   └ IntegerConstant (integer)
    │ │     └ 50
    │ ├ StatementList
    │ │ └ AssignmentStatement (integer)
    │ │   ├ EntireVariable (integer)
    │ │   │ └ Identifier
    │ │   │   └ c
    │ │   └ AdditiveExpression (integer)
    │ │     ├ EntireVariable (integer)
    │ │     │ └ Identifier
    │ │     │   └ a
    │ │     ├ +
    │ │     ├ EntireVariable (integer)
    │ │     │ └ Identifier
    │ │     │   └ b
    │ │     ├ -
    │ │     └ ConstantVariable (integer)
    │ │       └ IntegerConstant (integer)
    │ │         └ 2
    │ └ StatementList
    │   └ AssignmentStatement (integer)
    │     ├ EntireVariable (integer)
    │     │ └ Identifier
    │     │   └ c
    │     └ AdditiveExpression (integer)
    │       ├ MultiplicativeExpression (integer)
    │       │ ├ EntireVariable (integer)
    │       │ │ └ Identifier
    │       │ │   └ b
    │       │ ├ *
    │       │ └ EntireVariable (integer)
    │       │   └ Identifier
    │       │     └ a
    │       ├ -
    │       └ ConstantVariable (integer)
    │         └ IntegerConstant (integer)
    │           └ 7
    ├ IfStatement (void)
    │ ├ RelationalExpression (boolean)
    │ │ ├ EntireVariable (integer)
    │ │ │ └ Identifier
    │ │ │   └ c
    │ │ ├ >
    │ │ └ ConstantVariable (integer)
    │ │   └ IntegerConstant (integer)
    │ │     └ 5
    │ ├ StatementList
    │ │ └ AssignmentStatement (integer)
    │ │   ├ EntireVariable (integer)
    │ │   │ └ Identifier
    │ │   │   └ d
    │ │   └ AdditiveExpression (integer)
    │ │     ├ EntireVariable (integer)
    │ │     │ └ Identifier
    │ │     │   └ c
    │ │     ├ +
    │ │     ├ EntireVariable (integer)
    │ │     │ └ Identifier
    │ │     │   └ a
    │ │     ├ -
    │ │     └ EntireVariable (integer)
    │ │       └ Identifier
    │ │         └ b
    │ └ StatementList
    │   └ AssignmentStatement (integer)
    │     ├ EntireVariable (integer)
    │     │ └ Identifier
    │     │   └ d
    │     └ AdditiveExpression (integer)
    │       ├ EntireVariable (integer)
    │       │ └ Identifier
    │       │   └ c
    │       ├ -
    │       ├ EntireVariable (integer)
    │       │ └ Identifier
    │       │   └ a
    │       ├ +
    │       └ EntireVariable (integer)
    │         └ Identifier
    │           └ b
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ e
    │ └ ConstantVariable (integer)
    │   └ IntegerConstant (integer)
    │     └ 7
    └ ProcedureStatement (void)
      ├ Identifier
      │ └ printint
      └ Arguments
        └ AdditiveExpression (integer)
          ├ MultiplicativeExpression (integer)
          │ ├ EntireVariable (integer)
          │ │ └ Identifier
          │ │   └ a
          │ ├ *
          │ └ EntireVariable (integer)
          │   └ Identifier
          │     └ b
          ├ +
          ├ MultiplicativeExpression (integer)
          │ ├ EntireVariable (integer)
          │ │ └ Identifier
          │ │   └ c
          │ ├ /
          │ └ EntireVariable (integer)
          │   └ Identifier
          │     └ d
          ├ -
          └ EntireVariable (integer)
            └ Identifier
              └ e
