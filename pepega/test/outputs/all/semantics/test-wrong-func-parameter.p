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
  │   │ │ └ sum
  │   │ ├ Arguments
  │   │ │ ├ Identifier
  │   │ │ │ └ a
  │   │ │ ├ Identifier
  │   │ │ │ └ b
  │   │ │ └ Type
  │   │ │   └ integer
  │   │ └ Type
  │   │   └ integer
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
  │       │ │ └ sum
  │       │ └ IntegerConstant
  │       │   └ 0
  │       └ AssignmentStatement
  │         ├ Identifier
  │         │ └ sum
  │         └ AdditiveExpression
  │           ├ Identifier
  │           │ └ a
  │           ├ +
  │           └ Factor
  │             ├ Identifier
  │             │ └ sum
  │             └ ExpressionList
  │               ├ AdditiveExpression
  │               │ ├ Identifier
  │               │ │ └ a
  │               │ ├ -
  │               │ └ IntegerConstant
  │               │   └ 1
  │               └ IntegerConstant
  │                 └ 0
  └ StatementList
    ├ AssignmentStatement
    │ ├ Identifier
    │ │ └ a
    │ └ Factor
    │   ├ Identifier
    │   │ └ sum
    │   └ ExpressionList
    │     └ IntegerConstant
    │       └ 10
    ├ AssignmentStatement
    │ ├ Identifier
    │ │ └ a
    │ └ Factor
    │   ├ Identifier
    │   │ └ sum
    │   └ ExpressionList
    │     ├ IntegerConstant
    │     │ └ 10
    │     └ IntegerConstant
    │       └ 20
    └ AssignmentStatement
      ├ Identifier
      │ └ b
      └ Factor
        ├ Identifier
        │ └ sum
        └ ExpressionList
          ├ SignedFactor
          │ ├ -
          │ └ IntegerConstant
          │   └ 10
          ├ IntegerConstant
          │ └ 4
          └ IntegerConstant
            └ 7
