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
  │   │ └ c
  │   └ Type
  │     └ integer
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ b
  │   └ Type
  │     └ real
  └ StatementList
    ├ AssignmentStatement
    │ ├ Identifier
    │ │ └ a
    │ └ AdditiveExpression
    │   ├ SignedFactor
    │   │ ├ -
    │   │ └ IntegerConstant
    │   │   └ 3
    │   ├ -
    │   └ IntegerConstant
    │     └ 4
    ├ AssignmentStatement
    │ ├ Identifier
    │ │ └ c
    │ └ SignedFactor
    │   ├ -
    │   └ SignedFactor
    │     ├ -
    │     └ SignedFactor
    │       ├ -
    │       └ IntegerConstant
    │         └ 5
    └ AssignmentStatement
      ├ Identifier
      │ └ b
      └ AdditiveExpression
        ├ SignedFactor
        │ ├ -
        │ └ IntegerConstant
        │   └ 5
        ├ -
        └ IntegerConstant
          └ 6
