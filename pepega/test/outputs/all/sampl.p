Program
├ Identifier
│ └ foo
├ Identifier
│ └ boo
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
  │   └ Type
  │     └ integer
  ├ SubprogramDeclarations
  │ └ SubprogramDeclaration
  │   ├ SubprogramHeader
  │   │ ├ Identifier
  │   │ │ └ addition
  │   │ ├ Arguments
  │   │ │ ├ Identifier
  │   │ │ │ └ a
  │   │ │ ├ Identifier
  │   │ │ │ └ b
  │   │ │ └ Type
  │   │ │   └ integer
  │   │ └ Type
  │   │   └ integer
  │   ├ VariableDeclarations
  │   │ └ VariableDeclaration
  │   │   ├ Identifier
  │   │   │ └ c
  │   │   └ Type
  │   │     └ integer
  │   └ StatementList
  │     └ AssignmentStatement
  │       ├ Identifier
  │       │ └ addition
  │       └ AdditiveExpression
  │         ├ Identifier
  │         │ └ a
  │         ├ +
  │         └ Identifier
  │           └ b
  └ StatementList
    ├ AssignmentStatement
    │ ├ Identifier
    │ │ └ a
    │ └ Factor
    │   ├ Identifier
    │   │ └ addition
    │   └ ExpressionList
    │     ├ IntegerConstant
    │     │ └ 1
    │     └ IntegerConstant
    │       └ 2
    └ ProcedureStatement
      ├ Identifier
      │ └ putchar
      └ ExpressionList
        └ Identifier
          └ a
