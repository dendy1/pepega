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
  ├ SubprogramDeclarations
  │ ├ SubprogramDeclaration
  │ │ ├ SubprogramHeader
  │ │ │ ├ Identifier
  │ │ │ │ └ add (str)
  │ │ │ ├ Arguments
  │ │ │ │ ├ Identifier
  │ │ │ │ │ └ a (str)
  │ │ │ │ ├ Identifier
  │ │ │ │ │ └ b (str)
  │ │ │ │ └ Type
  │ │ │ │   └ integer (SimpleType)
  │ │ │ └ Type
  │ │ │   └ integer (SimpleType)
  │ │ └ StatementList
  │ │   └ AssignmentStatement
  │ │     ├ Identifier
  │ │     │ └ add (str)
  │ │     └ AdditiveExpression
  │ │       ├ Identifier
  │ │       │ └ a (str)
  │ │       ├ + (AdditiveOperator)
  │ │       └ Identifier
  │ │         └ b (str)
  │ └ SubprogramDeclaration
  │   ├ SubprogramHeader
  │   │ ├ Identifier
  │   │ │ └ mul (str)
  │   │ ├ Arguments
  │   │ │ ├ Identifier
  │   │ │ │ └ a (str)
  │   │ │ ├ Identifier
  │   │ │ │ └ b (str)
  │   │ │ └ Type
  │   │ │   └ integer (SimpleType)
  │   │ └ Type
  │   │   └ integer (SimpleType)
  │   └ StatementList
  │     └ AssignmentStatement
  │       ├ Identifier
  │       │ └ mul (str)
  │       └ MultiplicativeExpression
  │         ├ Identifier
  │         │ └ a (str)
  │         ├ * (MultiplicativeOperator)
  │         └ Identifier
  │           └ b (str)
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
    └ ProcedureStatement
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
