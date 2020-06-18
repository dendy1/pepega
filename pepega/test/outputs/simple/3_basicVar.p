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
    │     └ 4
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ c
    │ └ ConstantVariable
    │   └ IntegerConstant
    │     └ 5
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ d
    │ └ ConstantVariable
    │   └ IntegerConstant
    │     └ 6
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
    │ └ ConstantVariable (integer)
    │   └ IntegerConstant (integer)
    │     └ 4
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ c
    │ └ ConstantVariable (integer)
    │   └ IntegerConstant (integer)
    │     └ 5
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ d
    │ └ ConstantVariable (integer)
    │   └ IntegerConstant (integer)
    │     └ 6
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
