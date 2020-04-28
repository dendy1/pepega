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
    │ ├ Identifier
    │ │ └ c
    │ └ IntegerConstant
    │   └ 0
    ├ AssignmentStatement
    │ ├ Identifier
    │ │ └ a
    │ └ IntegerConstant
    │   └ 2
    ├ WhileStatement
    │ ├ Factor
    │ │ └ RelationalExpression
    │ │   ├ Identifier
    │ │   │ └ a
    │ │   ├ <=
    │ │   └ IntegerConstant
    │ │     └ 9
    │ └ Statement
    │   └ StatementList
    │     ├ AssignmentStatement
    │     │ ├ Identifier
    │     │ │ └ b
    │     │ └ IntegerConstant
    │     │   └ 1
    │     ├ WhileStatement
    │     │ ├ Factor
    │     │ │ └ RelationalExpression
    │     │ │   ├ Identifier
    │     │ │   │ └ b
    │     │ │   ├ <=
    │     │ │   └ IntegerConstant
    │     │ │     └ 9
    │     │ └ Statement
    │     │   └ StatementList
    │     │     ├ AssignmentStatement
    │     │     │ ├ Identifier
    │     │     │ │ └ c
    │     │     │ └ AdditiveExpression
    │     │     │   ├ Identifier
    │     │     │   │ └ c
    │     │     │   ├ +
    │     │     │   └ Factor
    │     │     │     └ MultiplicativeExpression
    │     │     │       ├ Identifier
    │     │     │       │ └ a
    │     │     │       ├ *
    │     │     │       └ Identifier
    │     │     │         └ b
    │     │     └ AssignmentStatement
    │     │       ├ Identifier
    │     │       │ └ b
    │     │       └ AdditiveExpression
    │     │         ├ Identifier
    │     │         │ └ b
    │     │         ├ +
    │     │         └ IntegerConstant
    │     │           └ 1
    │     └ AssignmentStatement
    │       ├ Identifier
    │       │ └ a
    │       └ AdditiveExpression
    │         ├ Identifier
    │         │ └ a
    │         ├ +
    │         └ IntegerConstant
    │           └ 1
    └ ProcedureStatement
      ├ Identifier
      │ └ printint
      └ Identifier
        └ c
