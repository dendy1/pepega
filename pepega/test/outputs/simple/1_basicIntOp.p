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
  └ StatementList
    └ ProcedureStatement
      ├ Identifier
      │ └ printint (str)
      └ AdditiveExpression
        ├ MultiplicativeExpression
        │ ├ IntegerConstant
        │ │ └ 3 (Integer)
        │ ├ * (MultiplicativeOperator)
        │ └ IntegerConstant
        │   └ 4 (Integer)
        ├ + (AdditiveOperator)
        ├ MultiplicativeExpression
        │ ├ IntegerConstant
        │ │ └ 5 (Integer)
        │ ├ / (MultiplicativeOperator)
        │ └ IntegerConstant
        │   └ 6 (Integer)
        ├ - (AdditiveOperator)
        └ IntegerConstant
          └ 7 (Integer)
