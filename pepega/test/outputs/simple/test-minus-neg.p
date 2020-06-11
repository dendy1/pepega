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
    │ ├ EntireVariable
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
    │ ├ EntireVariable
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
      ├ EntireVariable
      │ └ b
      └ AdditiveExpression
        ├ SignedFactor
        │ ├ -
        │ └ IntegerConstant
        │   └ 5
        ├ -
        └ IntegerConstant
          └ 6
