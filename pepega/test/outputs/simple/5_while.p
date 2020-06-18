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
    │ └ ConstantVariable
    │   └ IntegerConstant
    │     └ 5
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ c
    │ └ ConstantVariable
    │   └ IntegerConstant
    │     └ 7
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ d
    │ └ ConstantVariable
    │   └ IntegerConstant
    │     └ 100
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
    │   └ AssignmentStatement
    │     ├ EntireVariable
    │     │ └ Identifier
    │     │   └ b
    │     └ AdditiveExpression
    │       ├ EntireVariable
    │       │ └ Identifier
    │       │   └ b
    │       ├ -
    │       └ ConstantVariable
    │         └ IntegerConstant
    │           └ 1
    ├ WhileStatement
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ Identifier
    │ │ │   └ c
    │ │ ├ >
    │ │ └ EntireVariable
    │ │   └ Identifier
    │ │     └ b
    │ └ StatementList
    │   └ AssignmentStatement
    │     ├ EntireVariable
    │     │ └ Identifier
    │     │   └ c
    │     └ AdditiveExpression
    │       ├ EntireVariable
    │       │ └ Identifier
    │       │   └ c
    │       ├ -
    │       └ ConstantVariable
    │         └ IntegerConstant
    │           └ 1
    ├ WhileStatement
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ Identifier
    │ │ │   └ d
    │ │ ├ >
    │ │ └ EntireVariable
    │ │   └ Identifier
    │ │     └ c
    │ └ StatementList
    │   └ AssignmentStatement
    │     ├ EntireVariable
    │     │ └ Identifier
    │     │   └ d
    │     └ AdditiveExpression
    │       ├ EntireVariable
    │       │ └ Identifier
    │       │   └ d
    │       ├ -
    │       └ ConstantVariable
    │         └ IntegerConstant
    │           └ 1
    └ ProcedureStatement
      ├ Identifier
      │ └ printint
      └ Arguments
        └ AdditiveExpression
          ├ EntireVariable
          │ └ Identifier
          │   └ a
          ├ +
          ├ EntireVariable
          │ └ Identifier
          │   └ b
          ├ +
          ├ EntireVariable
          │ └ Identifier
          │   └ c
          ├ +
          └ EntireVariable
            └ Identifier
              └ d
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
    │ └ ConstantVariable (integer)
    │   └ IntegerConstant (integer)
    │     └ 5
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ c
    │ └ ConstantVariable (integer)
    │   └ IntegerConstant (integer)
    │     └ 7
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ d
    │ └ ConstantVariable (integer)
    │   └ IntegerConstant (integer)
    │     └ 100
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
    │   └ AssignmentStatement (integer)
    │     ├ EntireVariable (integer)
    │     │ └ Identifier
    │     │   └ b
    │     └ AdditiveExpression (integer)
    │       ├ EntireVariable (integer)
    │       │ └ Identifier
    │       │   └ b
    │       ├ -
    │       └ ConstantVariable (integer)
    │         └ IntegerConstant (integer)
    │           └ 1
    ├ WhileStatement (void)
    │ ├ RelationalExpression (boolean)
    │ │ ├ EntireVariable (integer)
    │ │ │ └ Identifier
    │ │ │   └ c
    │ │ ├ >
    │ │ └ EntireVariable (integer)
    │ │   └ Identifier
    │ │     └ b
    │ └ StatementList
    │   └ AssignmentStatement (integer)
    │     ├ EntireVariable (integer)
    │     │ └ Identifier
    │     │   └ c
    │     └ AdditiveExpression (integer)
    │       ├ EntireVariable (integer)
    │       │ └ Identifier
    │       │   └ c
    │       ├ -
    │       └ ConstantVariable (integer)
    │         └ IntegerConstant (integer)
    │           └ 1
    ├ WhileStatement (void)
    │ ├ RelationalExpression (boolean)
    │ │ ├ EntireVariable (integer)
    │ │ │ └ Identifier
    │ │ │   └ d
    │ │ ├ >
    │ │ └ EntireVariable (integer)
    │ │   └ Identifier
    │ │     └ c
    │ └ StatementList
    │   └ AssignmentStatement (integer)
    │     ├ EntireVariable (integer)
    │     │ └ Identifier
    │     │   └ d
    │     └ AdditiveExpression (integer)
    │       ├ EntireVariable (integer)
    │       │ └ Identifier
    │       │   └ d
    │       ├ -
    │       └ ConstantVariable (integer)
    │         └ IntegerConstant (integer)
    │           └ 1
    └ ProcedureStatement (void)
      ├ Identifier
      │ └ printint
      └ Arguments
        └ AdditiveExpression (integer)
          ├ EntireVariable (integer)
          │ └ Identifier
          │   └ a
          ├ +
          ├ EntireVariable (integer)
          │ └ Identifier
          │   └ b
          ├ +
          ├ EntireVariable (integer)
          │ └ Identifier
          │   └ c
          ├ +
          └ EntireVariable (integer)
            └ Identifier
              └ d
