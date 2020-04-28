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
  └ StatementList
    ├ AssignmentStatement
    │ ├ Identifier
    │ │ └ a (str)
    │ └ IntegerConstant
    │   └ 6 (Integer)
    ├ AssignmentStatement
    │ ├ Identifier
    │ │ └ b (str)
    │ └ MultiplicativeExpression
    │   ├ Identifier
    │   │ └ a (str)
    │   ├ * (MultiplicativeOperator)
    │   └ IntegerConstant
    │     └ 15 (Integer)
    ├ IfStatement
    │ ├ RelationalExpression
    │ │ ├ Identifier
    │ │ │ └ b (str)
    │ │ ├ > (RelationalOperator)
    │ │ └ Identifier
    │ │   └ a (str)
    │ ├ AssignmentStatement
    │ │ ├ Identifier
    │ │ │ └ a (str)
    │ │ └ MultiplicativeExpression
    │ │   ├ Identifier
    │ │   │ └ a (str)
    │ │   ├ * (MultiplicativeOperator)
    │ │   └ IntegerConstant
    │ │     └ 2 (Integer)
    │ └ AssignmentStatement
    │   ├ Identifier
    │   │ └ a (str)
    │   └ MultiplicativeExpression
    │     ├ Identifier
    │     │ └ a (str)
    │     ├ * (MultiplicativeOperator)
    │     └ IntegerConstant
    │       └ 3 (Integer)
    ├ IfStatement
    │ ├ RelationalExpression
    │ │ ├ Identifier
    │ │ │ └ b (str)
    │ │ ├ > (RelationalOperator)
    │ │ └ Identifier
    │ │   └ a (str)
    │ ├ IfStatement
    │ │ ├ RelationalExpression
    │ │ │ ├ Identifier
    │ │ │ │ └ b (str)
    │ │ │ ├ < (RelationalOperator)
    │ │ │ └ AdditiveExpression
    │ │ │   ├ Identifier
    │ │ │   │ └ a (str)
    │ │ │   ├ - (AdditiveOperator)
    │ │ │   └ IntegerConstant
    │ │ │     └ 2 (Integer)
    │ │ ├ AssignmentStatement
    │ │ │ ├ Identifier
    │ │ │ │ └ a (str)
    │ │ │ └ MultiplicativeExpression
    │ │ │   ├ Identifier
    │ │ │   │ └ a (str)
    │ │ │   ├ * (MultiplicativeOperator)
    │ │ │   └ IntegerConstant
    │ │ │     └ 5 (Integer)
    │ │ └ AssignmentStatement
    │ │   ├ Identifier
    │ │   │ └ a (str)
    │ │   └ MultiplicativeExpression
    │ │     ├ Identifier
    │ │     │ └ a (str)
    │ │     ├ * (MultiplicativeOperator)
    │ │     └ IntegerConstant
    │ │       └ 7 (Integer)
    │ └ AssignmentStatement
    │   ├ Identifier
    │   │ └ a (str)
    │   └ MultiplicativeExpression
    │     ├ Identifier
    │     │ └ a (str)
    │     ├ / (MultiplicativeOperator)
    │     ├ IntegerConstant
    │     │ └ 11 (Integer)
    │     ├ * (MultiplicativeOperator)
    │     └ Identifier
    │       └ a (str)
    ├ IfStatement
    │ ├ RelationalExpression
    │ │ ├ Identifier
    │ │ │ └ b (str)
    │ │ ├ > (RelationalOperator)
    │ │ └ Identifier
    │ │   └ a (str)
    │ ├ AssignmentStatement
    │ │ ├ Identifier
    │ │ │ └ a (str)
    │ │ └ MultiplicativeExpression
    │ │   ├ Identifier
    │ │   │ └ a (str)
    │ │   ├ * (MultiplicativeOperator)
    │ │   └ IntegerConstant
    │ │     └ 2 (Integer)
    │ └ IfStatement
    │   ├ RelationalExpression
    │   │ ├ Identifier
    │   │ │ └ b (str)
    │   │ ├ > (RelationalOperator)
    │   │ └ AdditiveExpression
    │   │   ├ IntegerConstant
    │   │   │ └ 5 (Integer)
    │   │   ├ + (AdditiveOperator)
    │   │   └ Identifier
    │   │     └ a (str)
    │   ├ AssignmentStatement
    │   │ ├ Identifier
    │   │ │ └ a (str)
    │   │ └ AdditiveExpression
    │   │   ├ IntegerConstant
    │   │   │ └ 23 (Integer)
    │   │   ├ - (AdditiveOperator)
    │   │   └ Identifier
    │   │     └ a (str)
    │   └ AssignmentStatement
    │     ├ Identifier
    │     │ └ a (str)
    │     └ MultiplicativeExpression
    │       ├ IntegerConstant
    │       │ └ 948 (Integer)
    │       ├ / (MultiplicativeOperator)
    │       └ Identifier
    │         └ b (str)
    ├ WhileStatement
    │ ├ RelationalExpression
    │ │ ├ Identifier
    │ │ │ └ b (str)
    │ │ ├ > (RelationalOperator)
    │ │ └ Identifier
    │ │   └ a (str)
    │ └ AssignmentStatement
    │   ├ Identifier
    │   │ └ a (str)
    │   └ MultiplicativeExpression
    │     ├ Identifier
    │     │ └ a (str)
    │     ├ * (MultiplicativeOperator)
    │     └ IntegerConstant
    │       └ 7 (Integer)
    ├ WhileStatement
    │ ├ RelationalExpression
    │ │ ├ Identifier
    │ │ │ └ b (str)
    │ │ ├ > (RelationalOperator)
    │ │ └ Identifier
    │ │   └ a (str)
    │ └ Statement
    │   └ StatementList
    │     ├ AssignmentStatement
    │     │ ├ Identifier
    │     │ │ └ b (str)
    │     │ └ AdditiveExpression
    │     │   ├ Identifier
    │     │   │ └ b (str)
    │     │   ├ + (AdditiveOperator)
    │     │   └ IntegerConstant
    │     │     └ 3 (Integer)
    │     └ AssignmentStatement
    │       ├ Identifier
    │       │ └ a (str)
    │       └ MultiplicativeExpression
    │         ├ Identifier
    │         │ └ a (str)
    │         ├ * (MultiplicativeOperator)
    │         └ IntegerConstant
    │           └ 7 (Integer)
    └ WhileStatement
      ├ RelationalExpression
      │ ├ Identifier
      │ │ └ b (str)
      │ ├ > (RelationalOperator)
      │ └ Identifier
      │   └ a (str)
      └ WhileStatement
        ├ RelationalExpression
        │ ├ Identifier
        │ │ └ c (str)
        │ ├ > (RelationalOperator)
        │ └ AdditiveExpression
        │   ├ Identifier
        │   │ └ a (str)
        │   ├ + (AdditiveOperator)
        │   └ Identifier
        │     └ b (str)
        └ Statement
          └ StatementList
            ├ AssignmentStatement
            │ ├ Identifier
            │ │ └ b (str)
            │ └ AdditiveExpression
            │   ├ Identifier
            │   │ └ b (str)
            │   ├ + (AdditiveOperator)
            │   └ IntegerConstant
            │     └ 3 (Integer)
            └ AssignmentStatement
              ├ Identifier
              │ └ a (str)
              └ MultiplicativeExpression
                ├ Identifier
                │ └ a (str)
                ├ * (MultiplicativeOperator)
                └ IntegerConstant
                  └ 7 (Integer)
