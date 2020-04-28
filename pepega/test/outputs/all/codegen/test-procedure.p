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
  │   │ └ g (str)
  │   └ Type
  │     └ integer (SimpleType)
  ├ SubprogramDeclarations
  │ └ SubprogramDeclaration
  │   ├ SubprogramHeader
  │   │ ├ Identifier
  │   │ │ └ sum (str)
  │   │ └ Arguments
  │   │   ├ Identifier
  │   │   │ └ a (str)
  │   │   ├ Identifier
  │   │   │ └ b (str)
  │   │   └ Type
  │   │     └ integer (SimpleType)
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
  │       │ │ └ g (str)
  │       │ └ AdditiveExpression
  │       │   ├ Identifier
  │       │   │ └ b (str)
  │       │   ├ + (AdditiveOperator)
  │       │   └ IntegerConstant
  │       │     └ 9 (Integer)
  │       └ AssignmentStatement
  │         ├ Identifier
  │         │ └ g (str)
  │         └ MultiplicativeExpression
  │           ├ Identifier
  │           │ └ b (str)
  │           ├ * (MultiplicativeOperator)
  │           └ IntegerConstant
  │             └ 3 (Integer)
  └ StatementList
    ├ AssignmentStatement
    │ ├ Identifier
    │ │ └ g (str)
    │ └ IntegerConstant
    │   └ 7 (Integer)
    ├ ProcedureStatement
    │ ├ Identifier
    │ │ └ sum (str)
    │ └ ExpressionList
    │   ├ IntegerConstant
    │   │ └ 10 (Integer)
    │   └ IntegerConstant
    │     └ 32 (Integer)
    └ ProcedureStatement
      ├ Identifier
      │ └ sum (str)
      └ ExpressionList
        ├ SignedFactor
        │ ├ - (Sign)
        │ └ IntegerConstant
        │   └ 10 (Integer)
        └ IntegerConstant
          └ 21 (Integer)
