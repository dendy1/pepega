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
    │   └ 4
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ c
    │ └ IntegerConstant
    │   └ 5
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ d
    │ └ IntegerConstant
    │   └ 6
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ e
    │ └ IntegerConstant
    │   └ 7
    └ ProcedureStatement
      ├ Identifier
      │ └ printint
      └ Arguments
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
