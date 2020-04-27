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
  │   ├ Identifier
  │   │ └ c (str)
  │   └ Type
  │     └ integer (SimpleType)
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ d (str)
  │   ├ Identifier
  │   │ └ e (str)
  │   └ Type
  │     └ ArrayType
  │       ├ IndexRange
  │       │ ├ IntegerConstant
  │       │ │ └ 1 (Integer)
  │       │ └ IntegerConstant
  │       │   └ 10 (Integer)
  │       └ Type
  │         └ integer (SimpleType)
  └ CompoundStatement
    └ StatementList
      ├ AssignmentStatement
      │ ├ Identifier
      │ │ └ b (str)
      │ └ AdditiveExpression
      │   ├ Identifier
      │   │ └ a (str)
      │   ├ + (AdditiveOperator)
      │   └ IntegerConstant
      │     └ 93 (Integer)
      ├ AssignmentStatement
      │ ├ Identifier
      │ │ └ b (str)
      │ └ AdditiveExpression
      │   ├ Identifier
      │   │ └ a (str)
      │   ├ - (AdditiveOperator)
      │   └ IntegerConstant
      │     └ 93 (Integer)
      ├ AssignmentStatement
      │ ├ Identifier
      │ │ └ b (str)
      │ └ MultiplicativeExpression
      │   ├ Identifier
      │   │ └ a (str)
      │   ├ * (MultiplicativeOperator)
      │   └ IntegerConstant
      │     └ 93 (Integer)
      ├ AssignmentStatement
      │ ├ Identifier
      │ │ └ b (str)
      │ └ MultiplicativeExpression
      │   ├ Identifier
      │   │ └ a (str)
      │   ├ / (MultiplicativeOperator)
      │   └ IntegerConstant
      │     └ 93 (Integer)
      ├ AssignmentStatement
      │ ├ Identifier
      │ │ └ b (str)
      │ └ AdditiveExpression
      │   ├ IntegerConstant
      │   │ └ 3 (Integer)
      │   ├ + (AdditiveOperator)
      │   ├ MultiplicativeExpression
      │   │ ├ IntegerConstant
      │   │ │ └ 93 (Integer)
      │   │ ├ * (MultiplicativeOperator)
      │   │ └ IntegerConstant
      │   │   └ 5 (Integer)
      │   ├ + (AdditiveOperator)
      │   └ MultiplicativeExpression
      │     ├ Identifier
      │     │ └ b (str)
      │     ├ * (MultiplicativeOperator)
      │     └ Factor
      │       └ AdditiveExpression
      │         ├ IntegerConstant
      │         │ └ 23 (Integer)
      │         ├ - (AdditiveOperator)
      │         └ MultiplicativeExpression
      │           ├ IntegerConstant
      │           │ └ 15 (Integer)
      │           ├ * (MultiplicativeOperator)
      │           ├ IntegerConstant
      │           │ └ 6 (Integer)
      │           ├ / (MultiplicativeOperator)
      │           └ IntegerConstant
      │             └ 9 (Integer)
      ├ AssignmentStatement
      │ ├ Identifier
      │ │ └ a (str)
      │ └ IntegerConstant
      │   └ 1 (Integer)
      ├ Statement
      │ └ IfStatement
      │   ├ RelationalExpression
      │   │ ├ Identifier
      │   │ │ └ b (str)
      │   │ ├ > (RelationalOperator)
      │   │ └ Identifier
      │   │   └ a (str)
      │   ├ AssignmentStatement
      │   │ ├ Identifier
      │   │ │ └ a (str)
      │   │ └ MultiplicativeExpression
      │   │   ├ Identifier
      │   │   │ └ a (str)
      │   │   ├ * (MultiplicativeOperator)
      │   │   └ IntegerConstant
      │   │     └ 2 (Integer)
      │   └ AssignmentStatement
      │     ├ Identifier
      │     │ └ a (str)
      │     └ MultiplicativeExpression
      │       ├ Identifier
      │       │ └ a (str)
      │       ├ * (MultiplicativeOperator)
      │       └ IntegerConstant
      │         └ 3 (Integer)
      ├ Statement
      │ └ IfStatement
      │   ├ RelationalExpression
      │   │ ├ Identifier
      │   │ │ └ b (str)
      │   │ ├ < (RelationalOperator)
      │   │ └ Identifier
      │   │   └ a (str)
      │   ├ AssignmentStatement
      │   │ ├ Identifier
      │   │ │ └ a (str)
      │   │ └ MultiplicativeExpression
      │   │   ├ Identifier
      │   │   │ └ a (str)
      │   │   ├ * (MultiplicativeOperator)
      │   │   └ IntegerConstant
      │   │     └ 5 (Integer)
      │   └ AssignmentStatement
      │     ├ Identifier
      │     │ └ a (str)
      │     └ MultiplicativeExpression
      │       ├ Identifier
      │       │ └ a (str)
      │       ├ * (MultiplicativeOperator)
      │       └ IntegerConstant
      │         └ 7 (Integer)
      ├ Statement
      │ └ IfStatement
      │   ├ RelationalExpression
      │   │ ├ Identifier
      │   │ │ └ b (str)
      │   │ ├ == (RelationalOperator)
      │   │ └ Identifier
      │   │   └ a (str)
      │   ├ AssignmentStatement
      │   │ ├ Identifier
      │   │ │ └ a (str)
      │   │ └ MultiplicativeExpression
      │   │   ├ Identifier
      │   │   │ └ a (str)
      │   │   ├ * (MultiplicativeOperator)
      │   │   └ IntegerConstant
      │   │     └ 11 (Integer)
      │   └ AssignmentStatement
      │     ├ Identifier
      │     │ └ a (str)
      │     └ MultiplicativeExpression
      │       ├ Identifier
      │       │ └ a (str)
      │       ├ * (MultiplicativeOperator)
      │       └ IntegerConstant
      │         └ 13 (Integer)
      ├ Statement
      │ └ IfStatement
      │   ├ RelationalExpression
      │   │ ├ Identifier
      │   │ │ └ b (str)
      │   │ ├ >= (RelationalOperator)
      │   │ └ Identifier
      │   │   └ a (str)
      │   ├ AssignmentStatement
      │   │ ├ Identifier
      │   │ │ └ a (str)
      │   │ └ MultiplicativeExpression
      │   │   ├ Identifier
      │   │   │ └ a (str)
      │   │   ├ * (MultiplicativeOperator)
      │   │   └ IntegerConstant
      │   │     └ 17 (Integer)
      │   └ AssignmentStatement
      │     ├ Identifier
      │     │ └ a (str)
      │     └ MultiplicativeExpression
      │       ├ Identifier
      │       │ └ a (str)
      │       ├ * (MultiplicativeOperator)
      │       └ IntegerConstant
      │         └ 19 (Integer)
      ├ Statement
      │ └ IfStatement
      │   ├ RelationalExpression
      │   │ ├ Identifier
      │   │ │ └ b (str)
      │   │ ├ <= (RelationalOperator)
      │   │ └ Identifier
      │   │   └ a (str)
      │   ├ AssignmentStatement
      │   │ ├ Identifier
      │   │ │ └ a (str)
      │   │ └ MultiplicativeExpression
      │   │   ├ Identifier
      │   │   │ └ a (str)
      │   │   ├ * (MultiplicativeOperator)
      │   │   └ IntegerConstant
      │   │     └ 23 (Integer)
      │   └ AssignmentStatement
      │     ├ Identifier
      │     │ └ a (str)
      │     └ MultiplicativeExpression
      │       ├ Identifier
      │       │ └ a (str)
      │       ├ * (MultiplicativeOperator)
      │       └ IntegerConstant
      │         └ 29 (Integer)
      ├ Statement
      │ └ IfStatement
      │   ├ RelationalExpression
      │   │ ├ Identifier
      │   │ │ └ b (str)
      │   │ ├ != (RelationalOperator)
      │   │ └ IntegerConstant
      │   │   └ 0 (Integer)
      │   ├ AssignmentStatement
      │   │ ├ Identifier
      │   │ │ └ a (str)
      │   │ └ MultiplicativeExpression
      │   │   ├ Identifier
      │   │   │ └ a (str)
      │   │   ├ * (MultiplicativeOperator)
      │   │   └ IntegerConstant
      │   │     └ 31 (Integer)
      │   └ AssignmentStatement
      │     ├ Identifier
      │     │ └ a (str)
      │     └ MultiplicativeExpression
      │       ├ Identifier
      │       │ └ a (str)
      │       ├ * (MultiplicativeOperator)
      │       └ IntegerConstant
      │         └ 37 (Integer)
      └ Statement
        └ IfStatement
          ├ Factor
          │ ├ Identifier
          │ │ └ not (str)
          │ └ RelationalExpression
          │   ├ Identifier
          │   │ └ b (str)
          │   ├ > (RelationalOperator)
          │   └ Identifier
          │     └ a (str)
          ├ AssignmentStatement
          │ ├ Identifier
          │ │ └ a (str)
          │ └ MultiplicativeExpression
          │   ├ Identifier
          │   │ └ a (str)
          │   ├ * (MultiplicativeOperator)
          │   └ IntegerConstant
          │     └ 41 (Integer)
          └ AssignmentStatement
            ├ Identifier
            │ └ a (str)
            └ MultiplicativeExpression
              ├ Identifier
              │ └ a (str)
              ├ * (MultiplicativeOperator)
              └ IntegerConstant
                └ 43 (Integer)
