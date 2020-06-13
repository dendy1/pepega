======== AST AFTER SEMANTIC ========
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
    │     └ 3 (None)
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
    │       └ 3 (None)
    ├ IfStatement
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ Identifier
    │ │ │   └ b
    │ │ ├ >
    │ │ └ ConstantVariable
    │ │   └ IntegerConstant
    │ │     └ 7 (None)
    │ ├ StatementList
    │ │ ├ AssignmentStatement
    │ │ │ ├ EntireVariable
    │ │ │ │ └ Identifier
    │ │ │ │   └ c
    │ │ │ └ AdditiveExpression
    │ │ │   ├ EntireVariable
    │ │ │   │ └ Identifier
    │ │ │   │   └ a
    │ │ │   ├ +
    │ │ │   ├ EntireVariable
    │ │ │   │ └ Identifier
    │ │ │   │   └ b
    │ │ │   ├ -
    │ │ │   └ ConstantVariable
    │ │ │     └ IntegerConstant
    │ │ │       └ 2 (None)
    │ │ └ IfStatement
    │ │   ├ RelationalExpression
    │ │   │ ├ EntireVariable
    │ │   │ │ └ Identifier
    │ │   │ │   └ c
    │ │   │ ├ <
    │ │   │ └ ConstantVariable
    │ │   │   └ IntegerConstant
    │ │   │     └ 5 (None)
    │ │   ├ StatementList
    │ │   │ └ AssignmentStatement
    │ │   │   ├ EntireVariable
    │ │   │   │ └ Identifier
    │ │   │   │   └ d
    │ │   │   └ AdditiveExpression
    │ │   │     ├ EntireVariable
    │ │   │     │ └ Identifier
    │ │   │     │   └ c
    │ │   │     ├ +
    │ │   │     ├ EntireVariable
    │ │   │     │ └ Identifier
    │ │   │     │   └ a
    │ │   │     ├ -
    │ │   │     └ EntireVariable
    │ │   │       └ Identifier
    │ │   │         └ b
    │ │   └ StatementList
    │ │     └ AssignmentStatement
    │ │       ├ EntireVariable
    │ │       │ └ Identifier
    │ │       │   └ d
    │ │       └ AdditiveExpression
    │ │         ├ EntireVariable
    │ │         │ └ Identifier
    │ │         │   └ c
    │ │         ├ -
    │ │         ├ EntireVariable
    │ │         │ └ Identifier
    │ │         │   └ a
    │ │         ├ +
    │ │         └ EntireVariable
    │ │           └ Identifier
    │ │             └ b
    │ └ StatementList
    │   ├ AssignmentStatement
    │   │ ├ EntireVariable
    │   │ │ └ Identifier
    │   │ │   └ c
    │   │ └ MultiplicativeExpression
    │   │   ├ EntireVariable
    │   │   │ └ Identifier
    │   │   │   └ a
    │   │   ├ *
    │   │   ├ EntireVariable
    │   │   │ └ Identifier
    │   │   │   └ b
    │   │   ├ /
    │   │   └ ConstantVariable
    │   │     └ IntegerConstant
    │   │       └ 2 (None)
    │   └ IfStatement
    │     ├ RelationalExpression
    │     │ ├ EntireVariable
    │     │ │ └ Identifier
    │     │ │   └ c
    │     │ ├ >
    │     │ └ ConstantVariable
    │     │   └ IntegerConstant
    │     │     └ 5 (None)
    │     ├ AssignmentStatement
    │     │ ├ EntireVariable
    │     │ │ └ Identifier
    │     │ │   └ d
    │     │ └ ConstantVariable
    │     │   └ IntegerConstant
    │     │     └ 6 (None)
    │     └ AssignmentStatement
    │       ├ EntireVariable
    │       │ └ Identifier
    │       │   └ d
    │       └ ConstantVariable
    │         └ IntegerConstant
    │           └ 7 (None)
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ e
    │ └ ConstantVariable
    │   └ IntegerConstant
    │     └ 7 (None)
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
