Program
├ Identifier
│ └ test
├ Identifier
│ └ in
├ Identifier
│ └ out
├ Identifier
│ └ err
└ Block
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ x
  │   ├ Identifier
  │   │ └ y
  │   ├ Identifier
  │   │ └ z
  │   └ Type
  │     └ integer
  ├ SubprogramDeclarations
  │ ├ SubprogramDeclaration
  │ │ ├ SubprogramHeader
  │ │ │ ├ Identifier
  │ │ │ │ └ add
  │ │ │ ├ Arguments
  │ │ │ │ ├ Identifier
  │ │ │ │ │ └ a
  │ │ │ │ ├ Identifier
  │ │ │ │ │ └ b
  │ │ │ │ └ Type
  │ │ │ │   └ integer
  │ │ │ └ Type
  │ │ │   └ integer
  │ │ └ StatementList
  │ │   └ AssignmentStatement
  │ │     ├ Identifier
  │ │     │ └ add
  │ │     └ AdditiveExpression
  │ │       ├ Identifier
  │ │       │ └ a
  │ │       ├ +
  │ │       └ Identifier
  │ │         └ b
  │ └ SubprogramDeclaration
  │   ├ SubprogramHeader
  │   │ ├ Identifier
  │   │ │ └ mul
  │   │ ├ Arguments
  │   │ │ ├ Identifier
  │   │ │ │ └ a
  │   │ │ ├ Identifier
  │   │ │ │ └ b
  │   │ │ └ Type
  │   │ │   └ integer
  │   │ └ Type
  │   │   └ integer
  │   └ StatementList
  │     └ AssignmentStatement
  │       ├ Identifier
  │       │ └ mul
  │       └ MultiplicativeExpression
  │         ├ Identifier
  │         │ └ a
  │         ├ *
  │         └ Identifier
  │           └ b
  └ StatementList
    ├ AssignmentStatement
    │ ├ Identifier
    │ │ └ x
    │ └ Factor
    │   ├ Identifier
    │   │ └ add
    │   └ ExpressionList
    │     ├ IntegerConstant
    │     │ └ 3
    │     └ IntegerConstant
    │       └ 4
    ├ AssignmentStatement
    │ ├ Identifier
    │ │ └ y
    │ └ Factor
    │   ├ Identifier
    │   │ └ mul
    │   └ ExpressionList
    │     ├ Identifier
    │     │ └ x
    │     └ Expression
    │       └ RelationalExpression
    │         └ AdditiveExpression
    │           └ MultiplicativeExpression
    │             └ SignedFactor
    │               └ Factor
    │                 └ Variable
    │                   └ EntireVariable
    │                     └ Identifier
    │                       └ x
    ├ AssignmentStatement
    │ ├ Identifier
    │ │ └ z
    │ └ Factor
    │   ├ Identifier
    │   │ └ add
    │   └ ExpressionList
    │     ├ Identifier
    │     │ └ y
    │     └ Factor
    │       ├ Identifier
    │       │ └ mul
    │       └ ExpressionList
    │         ├ Identifier
    │         │ └ x
    │         └ IntegerConstant
    │           └ 1
    └ ProcedureStatement
      ├ Identifier
      │ └ printint
      └ AdditiveExpression
        ├ Identifier
        │ └ x
        ├ +
        ├ Identifier
        │ └ y
        ├ +
        └ Identifier
          └ z
