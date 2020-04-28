Program
├ Identifier
│ └ foo
├ Identifier
│ └ input
├ Identifier
│ └ output
├ Identifier
│ └ error
└ Block
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ g
  │   └ Type
  │     └ integer
  ├ SubprogramDeclarations
  │ └ SubprogramDeclaration
  │   ├ SubprogramHeader
  │   │ ├ Identifier
  │   │ │ └ sum
  │   │ └ Arguments
  │   │   ├ Identifier
  │   │   │ └ a
  │   │   ├ Identifier
  │   │   │ └ b
  │   │   └ Type
  │   │     └ integer
  │   └ StatementList
  │     └ IfStatement
  │       ├ RelationalExpression
  │       │ ├ Identifier
  │       │ │ └ a
  │       │ ├ <=
  │       │ └ IntegerConstant
  │       │   └ 0
  │       ├ AssignmentStatement
  │       │ ├ Identifier
  │       │ │ └ g
  │       │ └ AdditiveExpression
  │       │   ├ Identifier
  │       │   │ └ b
  │       │   ├ +
  │       │   └ IntegerConstant
  │       │     └ 9
  │       └ AssignmentStatement
  │         ├ Identifier
  │         │ └ g
  │         └ MultiplicativeExpression
  │           ├ Identifier
  │           │ └ b
  │           ├ *
  │           └ IntegerConstant
  │             └ 3
  └ StatementList
    ├ AssignmentStatement
    │ ├ Identifier
    │ │ └ g
    │ └ IntegerConstant
    │   └ 7
    ├ ProcedureStatement
    │ ├ Identifier
    │ │ └ sum
    │ └ ExpressionList
    │   ├ IntegerConstant
    │   │ └ 10
    │   └ IntegerConstant
    │     └ 32
    └ ProcedureStatement
      ├ Identifier
      │ └ sum
      └ ExpressionList
        ├ SignedFactor
        │ ├ -
        │ └ IntegerConstant
        │   └ 10
        └ IntegerConstant
          └ 21
