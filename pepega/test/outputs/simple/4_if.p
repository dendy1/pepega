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
    │ └ MultiplicativeExpression
    │   ├ Identifier
    │   │ └ a
    │   ├ *
    │   └ IntegerConstant
    │     └ 3
    ├ IfStatement
    │ ├ Factor
    │ │ └ RelationalExpression
    │ │   ├ Identifier
    │ │   │ └ b
    │ │   ├ >
    │ │   └ IntegerConstant
    │ │     └ 50
    │ ├ Statement
    │ │ └ StatementList
    │ │   └ AssignmentStatement
    │ │     ├ Identifier
    │ │     │ └ c
    │ │     └ AdditiveExpression
    │ │       ├ Identifier
    │ │       │ └ a
    │ │       ├ +
    │ │       ├ Identifier
    │ │       │ └ b
    │ │       ├ -
    │ │       └ IntegerConstant
    │ │         └ 2
    │ └ Statement
    │   └ StatementList
    │     └ AssignmentStatement
    │       ├ Identifier
    │       │ └ c
    │       └ AdditiveExpression
    │         ├ MultiplicativeExpression
    │         │ ├ Identifier
    │         │ │ └ b
    │         │ ├ *
    │         │ └ Identifier
    │         │   └ a
    │         ├ -
    │         └ IntegerConstant
    │           └ 7
    ├ IfStatement
    │ ├ Factor
    │ │ └ RelationalExpression
    │ │   ├ Identifier
    │ │   │ └ c
    │ │   ├ >
    │ │   └ IntegerConstant
    │ │     └ 5
    │ ├ Statement
    │ │ └ StatementList
    │ │   └ AssignmentStatement
    │ │     ├ Identifier
    │ │     │ └ d
    │ │     └ AdditiveExpression
    │ │       ├ Identifier
    │ │       │ └ c
    │ │       ├ +
    │ │       ├ Identifier
    │ │       │ └ a
    │ │       ├ -
    │ │       └ Identifier
    │ │         └ b
    │ └ Statement
    │   └ StatementList
    │     └ AssignmentStatement
    │       ├ Identifier
    │       │ └ d
    │       └ AdditiveExpression
    │         ├ Identifier
    │         │ └ c
    │         ├ -
    │         ├ Identifier
    │         │ └ a
    │         ├ +
    │         └ Identifier
    │           └ b
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
