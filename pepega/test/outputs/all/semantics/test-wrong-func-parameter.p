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
  │   │ │ └ sum (str)
  │   │ ├ Arguments
  │   │ │ ├ Identifier
  │   │ │ │ └ a (str)
  │   │ │ ├ Identifier
  │   │ │ │ └ b (str)
  │   │ │ └ Type
  │   │ │   └ integer (SimpleType)
  │   │ └ Type
  │   │   └ integer (SimpleType)
  │   └ StatementList
  │     └ IfStatement
  │       ├ RelationalExpression
  │       │ ├ Identifier
  │       │ │ └ a (str)
  │       │ ├ <= (RelationalOperator)
  │       │ └ IntegerConstant
  │       │   └ 0 (Integer)
  │       ├ AssignmentStatement
  │       │ ├ Identifier
  │       │ │ └ sum (str)
  │       │ └ IntegerConstant
  │       │   └ 0 (Integer)
  │       └ AssignmentStatement
  │         ├ Identifier
  │         │ └ sum (str)
  │         └ AdditiveExpression
  │           ├ Identifier
  │           │ └ a (str)
  │           ├ + (AdditiveOperator)
  │           └ Factor
  │             ├ Identifier
  │             │ └ sum (str)
  │             └ ExpressionList
  │               ├ AdditiveExpression
  │               │ ├ Identifier
  │               │ │ └ a (str)
  │               │ ├ - (AdditiveOperator)
  │               │ └ IntegerConstant
  │               │   └ 1 (Integer)
  │               └ IntegerConstant
  │                 └ 0 (Integer)
  └ StatementList
    ├ AssignmentStatement
    │ ├ Identifier
    │ │ └ a (str)
    │ └ Factor
    │   ├ Identifier
    │   │ └ sum (str)
    │   └ IntegerConstant
    │     └ 10 (Integer)
    ├ AssignmentStatement
    │ ├ Identifier
    │ │ └ a (str)
    │ └ Factor
    │   ├ Identifier
    │   │ └ sum (str)
    │   └ ExpressionList
    │     ├ IntegerConstant
    │     │ └ 10 (Integer)
    │     └ IntegerConstant
    │       └ 20 (Integer)
    └ AssignmentStatement
      ├ Identifier
      │ └ b (str)
      └ Factor
        ├ Identifier
        │ └ sum (str)
        └ ExpressionList
          ├ SignedFactor
          │ ├ - (Sign)
          │ └ IntegerConstant
          │   └ 10 (Integer)
          ├ IntegerConstant
          │ └ 4 (Integer)
          └ IntegerConstant
            └ 7 (Integer)
