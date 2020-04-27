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
  └ CompoundStatement
    └ StatementList
      ├ AssignmentStatement
      │ ├ Identifier
      │ │ └ a (str)
      │ └ IntegerConstant
      │   └ 3 (Integer)
      ├ AssignmentStatement
      │ ├ Identifier
      │ │ └ b (str)
      │ └ MultiplicativeExpression
      │   ├ Identifier
      │   │ └ a (str)
      │   ├ * (MultiplicativeOperator)
      │   └ IntegerConstant
      │     └ 3 (Integer)
      ├ Statement
      │ └ IfStatement
      │   ├ Factor
      │   │ └ RelationalExpression
      │   │   ├ Identifier
      │   │   │ └ b (str)
      │   │   ├ > (RelationalOperator)
      │   │   └ IntegerConstant
      │   │     └ 7 (Integer)
      │   ├ Statement
      │   │ └ CompoundStatement
      │   │   └ StatementList
      │   │     ├ AssignmentStatement
      │   │     │ ├ Identifier
      │   │     │ │ └ c (str)
      │   │     │ └ AdditiveExpression
      │   │     │   ├ Identifier
      │   │     │   │ └ a (str)
      │   │     │   ├ + (AdditiveOperator)
      │   │     │   ├ Identifier
      │   │     │   │ └ b (str)
      │   │     │   ├ - (AdditiveOperator)
      │   │     │   └ IntegerConstant
      │   │     │     └ 2 (Integer)
      │   │     └ Statement
      │   │       └ IfStatement
      │   │         ├ Factor
      │   │         │ └ RelationalExpression
      │   │         │   ├ Identifier
      │   │         │   │ └ c (str)
      │   │         │   ├ < (RelationalOperator)
      │   │         │   └ IntegerConstant
      │   │         │     └ 5 (Integer)
      │   │         ├ Statement
      │   │         │ └ CompoundStatement
      │   │         │   └ AssignmentStatement
      │   │         │     ├ Identifier
      │   │         │     │ └ d (str)
      │   │         │     └ AdditiveExpression
      │   │         │       ├ Identifier
      │   │         │       │ └ c (str)
      │   │         │       ├ + (AdditiveOperator)
      │   │         │       ├ Identifier
      │   │         │       │ └ a (str)
      │   │         │       ├ - (AdditiveOperator)
      │   │         │       └ Identifier
      │   │         │         └ b (str)
      │   │         └ Statement
      │   │           └ CompoundStatement
      │   │             └ AssignmentStatement
      │   │               ├ Identifier
      │   │               │ └ d (str)
      │   │               └ AdditiveExpression
      │   │                 ├ Identifier
      │   │                 │ └ c (str)
      │   │                 ├ - (AdditiveOperator)
      │   │                 ├ Identifier
      │   │                 │ └ a (str)
      │   │                 ├ + (AdditiveOperator)
      │   │                 └ Identifier
      │   │                   └ b (str)
      │   └ Statement
      │     └ CompoundStatement
      │       └ StatementList
      │         ├ AssignmentStatement
      │         │ ├ Identifier
      │         │ │ └ c (str)
      │         │ └ MultiplicativeExpression
      │         │   ├ Identifier
      │         │   │ └ a (str)
      │         │   ├ * (MultiplicativeOperator)
      │         │   ├ Identifier
      │         │   │ └ b (str)
      │         │   ├ / (MultiplicativeOperator)
      │         │   └ IntegerConstant
      │         │     └ 2 (Integer)
      │         └ Statement
      │           └ IfStatement
      │             ├ Factor
      │             │ └ RelationalExpression
      │             │   ├ Identifier
      │             │   │ └ c (str)
      │             │   ├ > (RelationalOperator)
      │             │   └ IntegerConstant
      │             │     └ 5 (Integer)
      │             ├ AssignmentStatement
      │             │ ├ Identifier
      │             │ │ └ d (str)
      │             │ └ IntegerConstant
      │             │   └ 6 (Integer)
      │             └ AssignmentStatement
      │               ├ Identifier
      │               │ └ d (str)
      │               └ IntegerConstant
      │                 └ 7 (Integer)
      ├ AssignmentStatement
      │ ├ Identifier
      │ │ └ e (str)
      │ └ IntegerConstant
      │   └ 7 (Integer)
      └ FunctionStatement
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
