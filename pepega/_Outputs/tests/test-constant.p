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
      │ │ └ a (str)
      │ └ AdditiveExpression
      │   ├ IntegerConstant
      │   │ └ 2 (Integer)
      │   ├ + (AdditiveOperator)
      │   └ IntegerConstant
      │     └ 99 (Integer)
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
      │     ├ IntegerConstant
      │     │ └ 87 (Integer)
      │     ├ * (MultiplicativeOperator)
      │     └ Factor
      │       └ AdditiveExpression
      │         ├ IntegerConstant
      │         │ └ 23 (Integer)
      │         ├ + (AdditiveOperator)
      │         └ MultiplicativeExpression
      │           ├ IntegerConstant
      │           │ └ 15 (Integer)
      │           ├ * (MultiplicativeOperator)
      │           └ IntegerConstant
      │             └ 6 (Integer)
      ├ AssignmentStatement
      │ ├ IndexedVariable
      │ │ ├ Identifier
      │ │ │ └ c (str)
      │ │ └ AdditiveExpression
      │ │   ├ IntegerConstant
      │ │   │ └ 4 (Integer)
      │ │   ├ + (AdditiveOperator)
      │ │   └ IntegerConstant
      │ │     └ 2 (Integer)
      │ └ AdditiveExpression
      │   ├ IntegerConstant
      │   │ └ 3 (Integer)
      │   ├ + (AdditiveOperator)
      │   ├ MultiplicativeExpression
      │   │ ├ IntegerConstant
      │   │ │ └ 9 (Integer)
      │   │ ├ * (MultiplicativeOperator)
      │   │ └ IntegerConstant
      │   │   └ 5 (Integer)
      │   ├ + (AdditiveOperator)
      │   └ MultiplicativeExpression
      │     ├ IntegerConstant
      │     │ └ 87 (Integer)
      │     ├ * (MultiplicativeOperator)
      │     └ Factor
      │       └ AdditiveExpression
      │         ├ IntegerConstant
      │         │ └ 2 (Integer)
      │         ├ + (AdditiveOperator)
      │         └ MultiplicativeExpression
      │           ├ IntegerConstant
      │           │ └ 15 (Integer)
      │           ├ * (MultiplicativeOperator)
      │           └ IntegerConstant
      │             └ 6 (Integer)
      └ AssignmentStatement
        ├ IndexedVariable
        │ ├ Identifier
        │ │ └ c (str)
        │ └ AdditiveExpression
        │   ├ IntegerConstant
        │   │ └ 3 (Integer)
        │   ├ + (AdditiveOperator)
        │   ├ MultiplicativeExpression
        │   │ ├ IntegerConstant
        │   │ │ └ 9 (Integer)
        │   │ ├ * (MultiplicativeOperator)
        │   │ └ IntegerConstant
        │   │   └ 5 (Integer)
        │   ├ + (AdditiveOperator)
        │   └ MultiplicativeExpression
        │     ├ IntegerConstant
        │     │ └ 87 (Integer)
        │     ├ * (MultiplicativeOperator)
        │     └ Factor
        │       └ AdditiveExpression
        │         ├ IntegerConstant
        │         │ └ 2 (Integer)
        │         ├ + (AdditiveOperator)
        │         └ MultiplicativeExpression
        │           ├ IntegerConstant
        │           │ └ 15 (Integer)
        │           ├ * (MultiplicativeOperator)
        │           └ IntegerConstant
        │             └ 6 (Integer)
        └ AdditiveExpression
          ├ IntegerConstant
          │ └ 3 (Integer)
          ├ + (AdditiveOperator)
          ├ MultiplicativeExpression
          │ ├ IntegerConstant
          │ │ └ 9 (Integer)
          │ ├ * (MultiplicativeOperator)
          │ └ IntegerConstant
          │   └ 5 (Integer)
          ├ + (AdditiveOperator)
          └ MultiplicativeExpression
            ├ IntegerConstant
            │ └ 8 (Integer)
            ├ * (MultiplicativeOperator)
            └ Factor
              └ AdditiveExpression
                ├ IntegerConstant
                │ └ 2 (Integer)
                ├ + (AdditiveOperator)
                └ MultiplicativeExpression
                  ├ IntegerConstant
                  │ └ 15 (Integer)
                  ├ * (MultiplicativeOperator)
                  └ IntegerConstant
                    └ 6 (Integer)
