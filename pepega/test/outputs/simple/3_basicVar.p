Program
├ Identifier
│ └ test (str)
├ Identifier
│ └ in (str)
├ Identifier
│ └ out (str)
├ Identifier
│ └ err (str)
└ Block
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ a (str)
  │   ├ Identifier
  │   │ └ b (str)
  │   ├ Identifier
  │   │ └ c (str)
  │   ├ Identifier
  │   │ └ d (str)
  │   ├ Identifier
  │   │ └ e (str)
  │   └ Type
  │     └ integer (SimpleType)
  └ StatementList
    ├ AssignmentStatement
    │ ├ Identifier
    │ │ └ a (str)
    │ └ IntegerConstant
    │   └ 3 (Integer)
    ├ AssignmentStatement
    │ ├ Identifier
    │ │ └ b (str)
    │ └ IntegerConstant
    │   └ 4 (Integer)
    ├ AssignmentStatement
    │ ├ Identifier
    │ │ └ c (str)
    │ └ IntegerConstant
    │   └ 5 (Integer)
    ├ AssignmentStatement
    │ ├ Identifier
    │ │ └ d (str)
    │ └ IntegerConstant
    │   └ 6 (Integer)
    ├ AssignmentStatement
    │ ├ Identifier
    │ │ └ e (str)
    │ └ IntegerConstant
    │   └ 7 (Integer)
    └ ProcedureStatement
      ├ Identifier
      │ └ printint (str)
      └ AdditiveExpression
        ├ MultiplicativeExpression
        │ ├ Identifier
        │ │ └ a (str)
        │ ├ * (MultiplicativeOperator)
        │ └ Identifier
        │   └ b (str)
        ├ + (AdditiveOperator)
        ├ MultiplicativeExpression
        │ ├ Identifier
        │ │ └ c (str)
        │ ├ / (MultiplicativeOperator)
        │ └ Identifier
        │   └ d (str)
        ├ - (AdditiveOperator)
        └ Identifier
          └ e (str)
