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
    │ └ IntegerConstant
    │   └ 5
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ c
    │ └ IntegerConstant
    │   └ 7
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ d
    │ └ IntegerConstant
    │   └ 100
    ├ WhileStatement
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ b
    │ │ ├ >
    │ │ └ EntireVariable
    │ │   └ a
    │ └ StatementList
    │   └ AssignmentStatement
    │     ├ EntireVariable
    │     │ └ b
    │     └ AdditiveExpression
    │       ├ EntireVariable
    │       │ └ b
    │       ├ -
    │       └ IntegerConstant
    │         └ 1
    ├ WhileStatement
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ c
    │ │ ├ >
    │ │ └ EntireVariable
    │ │   └ b
    │ └ StatementList
    │   └ AssignmentStatement
    │     ├ EntireVariable
    │     │ └ c
    │     └ AdditiveExpression
    │       ├ EntireVariable
    │       │ └ c
    │       ├ -
    │       └ IntegerConstant
    │         └ 1
    ├ WhileStatement
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ d
    │ │ ├ >
    │ │ └ EntireVariable
    │ │   └ c
    │ └ StatementList
    │   └ AssignmentStatement
    │     ├ EntireVariable
    │     │ └ d
    │     └ AdditiveExpression
    │       ├ EntireVariable
    │       │ └ d
    │       ├ -
    │       └ IntegerConstant
    │         └ 1
    └ ProcedureStatement
      ├ Identifier
      │ └ printint
      └ Arguments
        └ AdditiveExpression
          ├ EntireVariable
          │ └ a
          ├ +
          ├ EntireVariable
          │ └ b
          ├ +
          ├ EntireVariable
          │ └ c
          ├ +
          └ EntireVariable
            └ d
