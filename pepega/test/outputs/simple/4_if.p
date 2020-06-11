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
    │ │ └ a
    │ └ IntegerConstant
    │   └ 3
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ b
    │ └ MultiplicativeExpression
    │   ├ EntireVariable
    │   │ └ a
    │   ├ *
    │   └ IntegerConstant
    │     └ 3
    ├ IfStatement
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ b
    │ │ ├ >
    │ │ └ IntegerConstant
    │ │   └ 50
    │ ├ StatementList
    │ │ └ AssignmentStatement
    │ │   ├ EntireVariable
    │ │   │ └ c
    │ │   └ AdditiveExpression
    │ │     ├ EntireVariable
    │ │     │ └ a
    │ │     ├ +
    │ │     ├ EntireVariable
    │ │     │ └ b
    │ │     ├ -
    │ │     └ IntegerConstant
    │ │       └ 2
    │ └ StatementList
    │   └ AssignmentStatement
    │     ├ EntireVariable
    │     │ └ c
    │     └ AdditiveExpression
    │       ├ MultiplicativeExpression
    │       │ ├ EntireVariable
    │       │ │ └ b
    │       │ ├ *
    │       │ └ EntireVariable
    │       │   └ a
    │       ├ -
    │       └ IntegerConstant
    │         └ 7
    ├ IfStatement
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ c
    │ │ ├ >
    │ │ └ IntegerConstant
    │ │   └ 5
    │ ├ StatementList
    │ │ └ AssignmentStatement
    │ │   ├ EntireVariable
    │ │   │ └ d
    │ │   └ AdditiveExpression
    │ │     ├ EntireVariable
    │ │     │ └ c
    │ │     ├ +
    │ │     ├ EntireVariable
    │ │     │ └ a
    │ │     ├ -
    │ │     └ EntireVariable
    │ │       └ b
    │ └ StatementList
    │   └ AssignmentStatement
    │     ├ EntireVariable
    │     │ └ d
    │     └ AdditiveExpression
    │       ├ EntireVariable
    │       │ └ c
    │       ├ -
    │       ├ EntireVariable
    │       │ └ a
    │       ├ +
    │       └ EntireVariable
    │         └ b
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ e
    │ └ IntegerConstant
    │   └ 7
    └ ProcedureStatement
      ├ Identifier
      │ └ printint
      └ ExpressionList
        └ AdditiveExpression
          ├ MultiplicativeExpression
          │ ├ EntireVariable
          │ │ └ a
          │ ├ *
          │ └ EntireVariable
          │   └ b
          ├ +
          ├ MultiplicativeExpression
          │ ├ EntireVariable
          │ │ └ c
          │ ├ /
          │ └ EntireVariable
          │   └ d
          ├ -
          └ EntireVariable
            └ e
