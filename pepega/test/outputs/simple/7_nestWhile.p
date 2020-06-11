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
    │ │ └ c
    │ └ IntegerConstant
    │   └ 0
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ a
    │ └ IntegerConstant
    │   └ 2
    ├ WhileStatement
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ a
    │ │ ├ <=
    │ │ └ IntegerConstant
    │ │   └ 9
    │ └ StatementList
    │   ├ AssignmentStatement
    │   │ ├ EntireVariable
    │   │ │ └ b
    │   │ └ IntegerConstant
    │   │   └ 1
    │   ├ WhileStatement
    │   │ ├ RelationalExpression
    │   │ │ ├ EntireVariable
    │   │ │ │ └ b
    │   │ │ ├ <=
    │   │ │ └ IntegerConstant
    │   │ │   └ 9
    │   │ └ StatementList
    │   │   ├ AssignmentStatement
    │   │   │ ├ EntireVariable
    │   │   │ │ └ c
    │   │   │ └ AdditiveExpression
    │   │   │   ├ EntireVariable
    │   │   │   │ └ c
    │   │   │   ├ +
    │   │   │   └ MultiplicativeExpression
    │   │   │     ├ EntireVariable
    │   │   │     │ └ a
    │   │   │     ├ *
    │   │   │     └ EntireVariable
    │   │   │       └ b
    │   │   └ AssignmentStatement
    │   │     ├ EntireVariable
    │   │     │ └ b
    │   │     └ AdditiveExpression
    │   │       ├ EntireVariable
    │   │       │ └ b
    │   │       ├ +
    │   │       └ IntegerConstant
    │   │         └ 1
    │   └ AssignmentStatement
    │     ├ EntireVariable
    │     │ └ a
    │     └ AdditiveExpression
    │       ├ EntireVariable
    │       │ └ a
    │       ├ +
    │       └ IntegerConstant
    │         └ 1
    └ ProcedureStatement
      ├ Identifier
      │ └ printint
      └ ExpressionList
        └ EntireVariable
          └ c
