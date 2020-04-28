Program
├ Identifier
│ └ foo (str)
├ Identifier
│ └ input (str)
├ Identifier
│ └ output (str)
├ Identifier
│ └ error (str)
└ Block
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ a (str)
  │   ├ Identifier
  │   │ └ c (str)
  │   └ Type
  │     └ integer (SimpleType)
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ b (str)
  │   └ Type
  │     └ real (SimpleType)
  └ StatementList
    ├ AssignmentStatement
    │ ├ Identifier
    │ │ └ a (str)
    │ └ AdditiveExpression
    │   ├ SignedFactor
    │   │ ├ - (Sign)
    │   │ └ IntegerConstant
    │   │   └ 3 (Integer)
    │   ├ - (AdditiveOperator)
    │   └ IntegerConstant
    │     └ 4 (Integer)
    ├ AssignmentStatement
    │ ├ Identifier
    │ │ └ c (str)
    │ └ SignedFactor
    │   ├ - (Sign)
    │   └ SignedFactor
    │     ├ - (Sign)
    │     └ SignedFactor
    │       ├ - (Sign)
    │       └ IntegerConstant
    │         └ 5 (Integer)
    └ AssignmentStatement
      ├ Identifier
      │ └ b (str)
      └ AdditiveExpression
        ├ SignedFactor
        │ ├ - (Sign)
        │ └ IntegerConstant
        │   └ 5 (Integer)
        ├ - (AdditiveOperator)
        └ IntegerConstant
          └ 6 (Integer)
