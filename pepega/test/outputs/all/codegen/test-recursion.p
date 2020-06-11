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
  │               └ AdditiveExpression
  │                 ├ Identifier
  │                 │ └ a
  │                 ├ -
  │                 └ IntegerConstant
  │                   └ 1
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
    └ AssignmentStatement
      ├ Identifier
      │ └ b
      └ Factor
        ├ Identifier
        │ └ sum
        └ ExpressionList
          └ SignedFactor
            ├ -
            └ IntegerConstant
              └ 10
