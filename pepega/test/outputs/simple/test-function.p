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
  │   │ └ b (str)
  │   └ Type
  │     └ integer (SimpleType)
  ├ SubprogramDeclarations
  │ └ SubprogramDeclaration
  │   ├ SubprogramHeader
  │   │ ├ Identifier
  │   │ │ └ simplesum (str)
  │   │ ├ Arguments
  │   │ │ ├ Identifier
  │   │ │ │ └ a (str)
  │   │ │ └ Type
  │   │ │   └ integer (SimpleType)
  │   │ └ Type
  │   │   └ integer (SimpleType)
  │   └ StatementList
  │     └ AssignmentStatement
  │       ├ Identifier
  │       │ └ simplesum (str)
  │       └ MultiplicativeExpression
  │         ├ Identifier
  │         │ └ a (str)
  │         ├ * (MultiplicativeOperator)
  │         └ Identifier
  │           └ b (str)
  └ StatementList
    ├ AssignmentStatement
    │ ├ Identifier
    │ │ └ a (str)
    │ └ IntegerConstant
    │   └ 7 (Integer)
    ├ AssignmentStatement
    │ ├ Identifier
    │ │ └ b (str)
    │ └ IntegerConstant
    │   └ 13 (Integer)
    ├ AssignmentStatement
    │ ├ Identifier
    │ │ └ a (str)
    │ └ AdditiveExpression
    │   ├ IntegerConstant
    │   │ └ 3 (Integer)
    │   ├ + (AdditiveOperator)
    │   └ Factor
    │     ├ Identifier
    │     │ └ simplesum (str)
    │     └ IntegerConstant
    │       └ 10 (Integer)
    └ AssignmentStatement
      ├ Identifier
      │ └ b (str)
      └ MultiplicativeExpression
        ├ IntegerConstant
        │ └ 1 (Integer)
        ├ * (MultiplicativeOperator)
        └ Factor
          ├ Identifier
          │ └ simplesum (str)
          └ SignedFactor
            ├ - (Sign)
            └ IntegerConstant
              └ 10 (Integer)
