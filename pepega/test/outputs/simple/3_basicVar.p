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
    │ ├ Identifier
    │ │ └ a
    │ └ IntegerConstant
    │   └ 3
    ├ AssignmentStatement
    │ ├ Identifier
    │ │ └ b
    │ └ IntegerConstant
    │   └ 4
    ├ AssignmentStatement
    │ ├ Identifier
    │ │ └ c
    │ └ IntegerConstant
    │   └ 5
    ├ AssignmentStatement
    │ ├ Identifier
    │ │ └ d
    │ └ IntegerConstant
    │   └ 6
    ├ AssignmentStatement
    │ ├ Identifier
    │ │ └ e
    │ └ IntegerConstant
    │   └ 7
    └ ProcedureStatement
      ├ Identifier
      │ └ printint
      └ AdditiveExpression
        ├ MultiplicativeExpression
        │ ├ Identifier
        │ │ └ a
        │ ├ *
        │ └ Identifier
        │   └ b
        ├ +
        ├ MultiplicativeExpression
        │ ├ Identifier
        │ │ └ c
        │ ├ /
        │ └ Identifier
        │   └ d
        ├ -
        └ Identifier
          └ e
