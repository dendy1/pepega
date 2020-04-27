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
  │   │ └ x (str)
  │   ├ Identifier
  │   │ └ y (str)
  │   ├ Identifier
  │   │ └ z (str)
  │   └ Type
  │     └ integer (SimpleType)
  ├ FunctionDeclarations
  │ ├ FunctionDeclaration
  │ │ ├ FunctionHeader
  │ │ │ ├ Identifier
  │ │ │ │ └ add (str)
  │ │ │ ├ FunctionParameters
  │ │ │ │ ├ Identifier
  │ │ │ │ │ └ a (str)
  │ │ │ │ ├ Identifier
  │ │ │ │ │ └ b (str)
  │ │ │ │ └ Type
  │ │ │ │   └ integer (SimpleType)
  │ │ │ └ Type
  │ │ │   └ integer (SimpleType)
  │ │ └ CompoundStatement
  │ │   └ AssignmentStatement
  │ │     ├ Identifier
  │ │     │ └ add (str)
  │ │     └ AdditiveExpression
  │ │       ├ Identifier
  │ │       │ └ a (str)
  │ │       ├ + (AdditiveOperator)
  │ │       └ Identifier
  │ │         └ b (str)
  │ └ FunctionDeclaration
  │   ├ FunctionHeader
  │   │ ├ Identifier
  │   │ │ └ mul (str)
  │   │ ├ FunctionParameters
  │   │ │ ├ Identifier
  │   │ │ │ └ a (str)
  │   │ │ ├ Identifier
  │   │ │ │ └ b (str)
  │   │ │ └ Type
  │   │ │   └ integer (SimpleType)
  │   │ └ Type
  │   │   └ integer (SimpleType)
  │   └ CompoundStatement
  │     └ AssignmentStatement
  │       ├ Identifier
  │       │ └ mul (str)
  │       └ MultiplicativeExpression
  │         ├ Identifier
  │         │ └ a (str)
  │         ├ * (MultiplicativeOperator)
  │         └ Identifier
  │           └ b (str)
  └ CompoundStatement
    └ StatementList
      ├ AssignmentStatement
      │ ├ Identifier
      │ │ └ x (str)
      │ └ Factor
      │   ├ Identifier
      │   │ └ add (str)
      │   └ ExpressionList
      │     ├ IntegerConstant
      │     │ └ 3 (Integer)
      │     └ IntegerConstant
      │       └ 4 (Integer)
      ├ AssignmentStatement
      │ ├ Identifier
      │ │ └ y (str)
      │ └ Factor
      │   ├ Identifier
      │   │ └ mul (str)
      │   └ ExpressionList
      │     ├ Identifier
      │     │ └ x (str)
      │     └ Identifier
      │       └ x (str)
      ├ AssignmentStatement
      │ ├ Identifier
      │ │ └ z (str)
      │ └ Factor
      │   ├ Identifier
      │   │ └ add (str)
      │   └ ExpressionList
      │     ├ Identifier
      │     │ └ y (str)
      │     └ Factor
      │       ├ Identifier
      │       │ └ mul (str)
      │       └ ExpressionList
      │         ├ Identifier
      │         │ └ x (str)
      │         └ IntegerConstant
      │           └ 1 (Integer)
      └ FunctionStatement
        ├ Identifier
        │ └ printint (str)
        └ AdditiveExpression
          ├ Identifier
          │ └ x (str)
          ├ + (AdditiveOperator)
          ├ Identifier
          │ └ y (str)
          ├ + (AdditiveOperator)
          └ Identifier
            └ z (str)
