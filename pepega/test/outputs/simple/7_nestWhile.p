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
  │   └ Type
  │     └ integer
  └ StatementList
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ c
    │ └ ConstantVariable
    │   └ IntegerConstant
    │     └ 0
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ a
    │ └ ConstantVariable
    │   └ IntegerConstant
    │     └ 2
    ├ WhileStatement
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ Identifier
    │ │ │   └ a
    │ │ ├ <=
    │ │ └ ConstantVariable
    │ │   └ IntegerConstant
    │ │     └ 9
    │ └ StatementList
    │   ├ AssignmentStatement
    │   │ ├ EntireVariable
    │   │ │ └ Identifier
    │   │ │   └ b
    │   │ └ ConstantVariable
    │   │   └ IntegerConstant
    │   │     └ 1
    │   ├ WhileStatement
    │   │ ├ RelationalExpression
    │   │ │ ├ EntireVariable
    │   │ │ │ └ Identifier
    │   │ │ │   └ b
    │   │ │ ├ <=
    │   │ │ └ ConstantVariable
    │   │ │   └ IntegerConstant
    │   │ │     └ 9
    │   │ └ StatementList
    │   │   ├ AssignmentStatement
    │   │   │ ├ EntireVariable
    │   │   │ │ └ Identifier
    │   │   │ │   └ c
    │   │   │ └ AdditiveExpression
    │   │   │   ├ EntireVariable
    │   │   │   │ └ Identifier
    │   │   │   │   └ c
    │   │   │   ├ +
    │   │   │   └ MultiplicativeExpression
    │   │   │     ├ EntireVariable
    │   │   │     │ └ Identifier
    │   │   │     │   └ a
    │   │   │     ├ *
    │   │   │     └ EntireVariable
    │   │   │       └ Identifier
    │   │   │         └ b
    │   │   └ AssignmentStatement
    │   │     ├ EntireVariable
    │   │     │ └ Identifier
    │   │     │   └ b
    │   │     └ AdditiveExpression
    │   │       ├ EntireVariable
    │   │       │ └ Identifier
    │   │       │   └ b
    │   │       ├ +
    │   │       └ ConstantVariable
    │   │         └ IntegerConstant
    │   │           └ 1
    │   └ AssignmentStatement
    │     ├ EntireVariable
    │     │ └ Identifier
    │     │   └ a
    │     └ AdditiveExpression
    │       ├ EntireVariable
    │       │ └ Identifier
    │       │   └ a
    │       ├ +
    │       └ ConstantVariable
    │         └ IntegerConstant
    │           └ 1
    └ ProcedureStatement
      ├ Identifier
      │ └ printint
      └ Arguments
        └ EntireVariable
          └ Identifier
            └ c
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
  │   └ Type
  │     └ integer
  └ StatementList
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ c
    │ └ ConstantVariable (integer)
    │   └ IntegerConstant (integer)
    │     └ 0
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ a
    │ └ ConstantVariable (integer)
    │   └ IntegerConstant (integer)
    │     └ 2
    ├ WhileStatement (void)
    │ ├ RelationalExpression (boolean)
    │ │ ├ EntireVariable (integer)
    │ │ │ └ Identifier
    │ │ │   └ a
    │ │ ├ <=
    │ │ └ ConstantVariable (integer)
    │ │   └ IntegerConstant (integer)
    │ │     └ 9
    │ └ StatementList
    │   ├ AssignmentStatement (integer)
    │   │ ├ EntireVariable (integer)
    │   │ │ └ Identifier
    │   │ │   └ b
    │   │ └ ConstantVariable (integer)
    │   │   └ IntegerConstant (integer)
    │   │     └ 1
    │   ├ WhileStatement (void)
    │   │ ├ RelationalExpression (boolean)
    │   │ │ ├ EntireVariable (integer)
    │   │ │ │ └ Identifier
    │   │ │ │   └ b
    │   │ │ ├ <=
    │   │ │ └ ConstantVariable (integer)
    │   │ │   └ IntegerConstant (integer)
    │   │ │     └ 9
    │   │ └ StatementList
    │   │   ├ AssignmentStatement (integer)
    │   │   │ ├ EntireVariable (integer)
    │   │   │ │ └ Identifier
    │   │   │ │   └ c
    │   │   │ └ AdditiveExpression (integer)
    │   │   │   ├ EntireVariable (integer)
    │   │   │   │ └ Identifier
    │   │   │   │   └ c
    │   │   │   ├ +
    │   │   │   └ MultiplicativeExpression (integer)
    │   │   │     ├ EntireVariable (integer)
    │   │   │     │ └ Identifier
    │   │   │     │   └ a
    │   │   │     ├ *
    │   │   │     └ EntireVariable (integer)
    │   │   │       └ Identifier
    │   │   │         └ b
    │   │   └ AssignmentStatement (integer)
    │   │     ├ EntireVariable (integer)
    │   │     │ └ Identifier
    │   │     │   └ b
    │   │     └ AdditiveExpression (integer)
    │   │       ├ EntireVariable (integer)
    │   │       │ └ Identifier
    │   │       │   └ b
    │   │       ├ +
    │   │       └ ConstantVariable (integer)
    │   │         └ IntegerConstant (integer)
    │   │           └ 1
    │   └ AssignmentStatement (integer)
    │     ├ EntireVariable (integer)
    │     │ └ Identifier
    │     │   └ a
    │     └ AdditiveExpression (integer)
    │       ├ EntireVariable (integer)
    │       │ └ Identifier
    │       │   └ a
    │       ├ +
    │       └ ConstantVariable (integer)
    │         └ IntegerConstant (integer)
    │           └ 1
    └ ProcedureStatement (void)
      ├ Identifier
      │ └ printint
      └ Arguments
        └ EntireVariable (integer)
          └ Identifier
            └ c
