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
      │ └ IntegerConstant
      │   └ 5 (Integer)
      ├ AssignmentStatement
      │ ├ Identifier
      │ │ └ c (str)
      │ └ IntegerConstant
      │   └ 7 (Integer)
      ├ AssignmentStatement
      │ ├ Identifier
      │ │ └ d (str)
      │ └ IntegerConstant
      │   └ 100 (Integer)
      ├ Statement
      │ └ WhileStatement
      │   ├ Factor
      │   │ └ RelationalExpression
      │   │   ├ Identifier
      │   │   │ └ b (str)
      │   │   ├ > (RelationalOperator)
      │   │   └ Identifier
      │   │     └ a (str)
      │   └ Statement
      │     └ CompoundStatement
      │       └ AssignmentStatement
      │         ├ Identifier
      │         │ └ b (str)
      │         └ AdditiveExpression
      │           ├ Identifier
      │           │ └ b (str)
      │           ├ - (AdditiveOperator)
      │           └ IntegerConstant
      │             └ 1 (Integer)
      ├ Statement
      │ └ WhileStatement
      │   ├ Factor
      │   │ └ RelationalExpression
      │   │   ├ Identifier
      │   │   │ └ c (str)
      │   │   ├ > (RelationalOperator)
      │   │   └ Identifier
      │   │     └ b (str)
      │   └ Statement
      │     └ CompoundStatement
      │       └ AssignmentStatement
      │         ├ Identifier
      │         │ └ c (str)
      │         └ AdditiveExpression
      │           ├ Identifier
      │           │ └ c (str)
      │           ├ - (AdditiveOperator)
      │           └ IntegerConstant
      │             └ 1 (Integer)
      ├ Statement
      │ └ WhileStatement
      │   ├ Factor
      │   │ └ RelationalExpression
      │   │   ├ Identifier
      │   │   │ └ d (str)
      │   │   ├ > (RelationalOperator)
      │   │   └ Identifier
      │   │     └ c (str)
      │   └ Statement
      │     └ CompoundStatement
      │       └ AssignmentStatement
      │         ├ Identifier
      │         │ └ d (str)
      │         └ AdditiveExpression
      │           ├ Identifier
      │           │ └ d (str)
      │           ├ - (AdditiveOperator)
      │           └ IntegerConstant
      │             └ 1 (Integer)
      └ FunctionStatement
        ├ Identifier
        │ └ printint (str)
        └ AdditiveExpression
          ├ Identifier
          │ └ a (str)
          ├ + (AdditiveOperator)
          ├ Identifier
          │ └ b (str)
          ├ + (AdditiveOperator)
          ├ Identifier
          │ └ c (str)
          ├ + (AdditiveOperator)
          └ Identifier
            └ d (str)
