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
  │   │ └ a
  │   ├ Identifier
  │   │ └ b
  │   └ Type
  │     └ integer
  ├ SubprogramDeclarations
  │ └ SubprogramDeclaration
  │   ├ SubprogramHeader
  │   │ ├ Identifier
  │   │ │ └ simplesum
  │   │ ├ Arguments
  │   │ │ ├ Identifier
  │   │ │ │ └ a
  │   │ │ └ Type
  │   │ │   └ integer
  │   │ └ Type
  │   │   └ integer
  │   └ StatementList
  │     └ AssignmentStatement
  │       ├ Identifier
  │       │ └ simplesum
  │       └ MultiplicativeExpression
  │         ├ Identifier
  │         │ └ a
  │         ├ *
  │         └ Identifier
  │           └ b
  └ StatementList
    ├ AssignmentStatement
    │ ├ Identifier
    │ │ └ a
    │ └ IntegerConstant
    │   └ 7
    ├ AssignmentStatement
    │ ├ Identifier
    │ │ └ b
    │ └ IntegerConstant
    │   └ 13
    ├ AssignmentStatement
    │ ├ Identifier
    │ │ └ a
    │ └ AdditiveExpression
    │   ├ IntegerConstant
    │   │ └ 3
    │   ├ +
    │   └ Factor
    │     ├ Identifier
    │     │ └ simplesum
    │     └ ExpressionList
    │       └ IntegerConstant
    │         └ 10
    └ AssignmentStatement
      ├ Identifier
      │ └ b
      └ MultiplicativeExpression
        ├ IntegerConstant
        │ └ 1
        ├ *
        └ Factor
          ├ Identifier
          │ └ simplesum
          └ ExpressionList
            └ SignedFactor
              ├ -
              └ IntegerConstant
                └ 10
