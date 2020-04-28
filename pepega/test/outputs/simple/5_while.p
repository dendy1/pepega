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
    │   └ 5
    ├ AssignmentStatement
    │ ├ Identifier
    │ │ └ c
    │ └ IntegerConstant
    │   └ 7
    ├ AssignmentStatement
    │ ├ Identifier
    │ │ └ d
    │ └ IntegerConstant
    │   └ 100
    ├ WhileStatement
    │ ├ Factor
    │ │ └ RelationalExpression
    │ │   ├ Identifier
    │ │   │ └ b
    │ │   ├ >
    │ │   └ Identifier
    │ │     └ a
    │ └ Statement
    │   └ StatementList
    │     └ AssignmentStatement
    │       ├ Identifier
    │       │ └ b
    │       └ AdditiveExpression
    │         ├ Identifier
    │         │ └ b
    │         ├ -
    │         └ IntegerConstant
    │           └ 1
    ├ WhileStatement
    │ ├ Factor
    │ │ └ RelationalExpression
    │ │   ├ Identifier
    │ │   │ └ c
    │ │   ├ >
    │ │   └ Identifier
    │ │     └ b
    │ └ Statement
    │   └ StatementList
    │     └ AssignmentStatement
    │       ├ Identifier
    │       │ └ c
    │       └ AdditiveExpression
    │         ├ Identifier
    │         │ └ c
    │         ├ -
    │         └ IntegerConstant
    │           └ 1
    ├ WhileStatement
    │ ├ Factor
    │ │ └ RelationalExpression
    │ │   ├ Identifier
    │ │   │ └ d
    │ │   ├ >
    │ │   └ Identifier
    │ │     └ c
    │ └ Statement
    │   └ StatementList
    │     └ AssignmentStatement
    │       ├ Identifier
    │       │ └ d
    │       └ AdditiveExpression
    │         ├ Identifier
    │         │ └ d
    │         ├ -
    │         └ IntegerConstant
    │           └ 1
    └ ProcedureStatement
      ├ Identifier
      │ └ printint
      └ AdditiveExpression
        ├ Identifier
        │ └ a
        ├ +
        ├ Identifier
        │ └ b
        ├ +
        ├ Identifier
        │ └ c
        ├ +
        └ Identifier
          └ d
