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
  │ │ │ ├ ParametersList
  │ │ │ │ └ Parameters
  │ │ │ │   ├ Identifier
  │ │ │ │   │ └ a
  │ │ │ │   ├ Identifier
  │ │ │ │   │ └ b
  │ │ │ │   └ Type
  │ │ │ │     └ integer
  │ │ │ └ Type
  │ │ │   └ integer
  │ │ └ Block
  │ │   └ StatementList
  │ │     └ AssignmentStatement
  │ │       ├ EntireVariable
  │ │       │ └ add
  │ │       └ AdditiveExpression
  │ │         ├ EntireVariable
  │ │         │ └ a
  │ │         ├ +
  │ │         └ EntireVariable
  │ │           └ b
  │ ├ SubprogramDeclaration
  │ │ ├ SubprogramHeader
  │ │ │ ├ Identifier
  │ │ │ │ └ mul
  │ │ │ ├ ParametersList
  │ │ │ │ └ Parameters
  │ │ │ │   ├ Identifier
  │ │ │ │   │ └ a
  │ │ │ │   ├ Identifier
  │ │ │ │   │ └ b
  │ │ │ │   └ Type
  │ │ │ │     └ integer
  │ │ │ └ Type
  │ │ │   └ integer
  │ │ └ Block
  │ │   └ StatementList
  │ │     └ AssignmentStatement
  │ │       ├ EntireVariable
  │ │       │ └ mul
  │ │       └ MultiplicativeExpression
  │ │         ├ EntireVariable
  │ │         │ └ a
  │ │         ├ *
  │ │         └ EntireVariable
  │ │           └ b
  │ └ SubprogramDeclaration
  │   ├ SubprogramHeader
  │   │ ├ Identifier
  │   │ │ └ div
  │   │ ├ ParametersList
  │   │ │ ├ Parameters
  │   │ │ │ ├ Identifier
  │   │ │ │ │ └ a
  │   │ │ │ ├ Identifier
  │   │ │ │ │ └ b
  │   │ │ │ └ Type
  │   │ │ │   └ integer
  │   │ │ └ Parameters
  │   │ │   ├ Identifier
  │   │ │   │ └ c
  │   │ │   └ Type
  │   │ │     └ real
  │   │ └ Type
  │   │   └ integer
  │   └ Block
  │     └ StatementList
  │       └ AssignmentStatement
  │         ├ EntireVariable
  │         │ └ div
  │         └ MultiplicativeExpression
  │           ├ EntireVariable
  │           │ └ a
  │           ├ /
  │           └ EntireVariable
  │             └ b
  └ StatementList
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ x
    │ └ ProcedureStatement
    │   ├ Identifier
    │   │ └ add
    │   └ Arguments
    │     ├ IntegerConstant
    │     │ └ 3
    │     └ IntegerConstant
    │       └ 4
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ y
    │ └ ProcedureStatement
    │   ├ Identifier
    │   │ └ mul
    │   └ Arguments
    │     ├ EntireVariable
    │     │ └ x
    │     └ EntireVariable
    │       └ z
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ z
    │ └ ProcedureStatement
    │   ├ Identifier
    │   │ └ div
    │   └ Arguments
    │     ├ EntireVariable
    │     │ └ y
    │     ├ IntegerConstant
    │     │ └ 2
    │     └ IntegerConstant
    │       └ 3
    └ ProcedureStatement
      ├ Identifier
      │ └ printint
      └ Arguments
        └ AdditiveExpression
          ├ EntireVariable
          │ └ x
          ├ +
          ├ EntireVariable
          │ └ y
          ├ +
          └ EntireVariable
            └ z
