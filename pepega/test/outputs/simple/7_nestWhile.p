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
  │   └ Type
  │     └ integer (SimpleType)
  └ StatementList
    ├ AssignmentStatement
    │ ├ Identifier
    │ │ └ c (str)
    │ └ IntegerConstant
    │   └ 0 (Integer)
    ├ AssignmentStatement
    │ ├ Identifier
    │ │ └ a (str)
    │ └ IntegerConstant
    │   └ 2 (Integer)
    ├ WhileStatement
    │ ├ Factor
    │ │ └ RelationalExpression
    │ │   ├ Identifier
    │ │   │ └ a (str)
    │ │   ├ <= (RelationalOperator)
    │ │   └ IntegerConstant
    │ │     └ 9 (Integer)
    │ └ Statement
    │   └ StatementList
    │     ├ AssignmentStatement
    │     │ ├ Identifier
    │     │ │ └ b (str)
    │     │ └ IntegerConstant
    │     │   └ 1 (Integer)
    │     ├ WhileStatement
    │     │ ├ Factor
    │     │ │ └ RelationalExpression
    │     │ │   ├ Identifier
    │     │ │   │ └ b (str)
    │     │ │   ├ <= (RelationalOperator)
    │     │ │   └ IntegerConstant
    │     │ │     └ 9 (Integer)
    │     │ └ Statement
    │     │   └ StatementList
    │     │     ├ AssignmentStatement
    │     │     │ ├ Identifier
    │     │     │ │ └ c (str)
    │     │     │ └ AdditiveExpression
    │     │     │   ├ Identifier
    │     │     │   │ └ c (str)
    │     │     │   ├ + (AdditiveOperator)
    │     │     │   └ Factor
    │     │     │     └ MultiplicativeExpression
    │     │     │       ├ Identifier
    │     │     │       │ └ a (str)
    │     │     │       ├ * (MultiplicativeOperator)
    │     │     │       └ Identifier
    │     │     │         └ b (str)
    │     │     └ AssignmentStatement
    │     │       ├ Identifier
    │     │       │ └ b (str)
    │     │       └ AdditiveExpression
    │     │         ├ Identifier
    │     │         │ └ b (str)
    │     │         ├ + (AdditiveOperator)
    │     │         └ IntegerConstant
    │     │           └ 1 (Integer)
    │     └ AssignmentStatement
    │       ├ Identifier
    │       │ └ a (str)
    │       └ AdditiveExpression
    │         ├ Identifier
    │         │ └ a (str)
    │         ├ + (AdditiveOperator)
    │         └ IntegerConstant
    │           └ 1 (Integer)
    └ ProcedureStatement
      ├ Identifier
      │ └ printint (str)
      └ Identifier
        └ c (str)