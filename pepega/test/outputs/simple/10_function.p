======== AST AFTER SEMANTIC ========
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
  │ │       │ └ Identifier
  │ │       │   └ add
  │ │       └ AdditiveExpression
  │ │         ├ EntireVariable
  │ │         │ └ Identifier
  │ │         │   └ a
  │ │         ├ +
  │ │         └ EntireVariable
  │ │           └ Identifier
  │ │             └ b
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
  │ │       │ └ Identifier
  │ │       │   └ mul
  │ │       └ MultiplicativeExpression
  │ │         ├ EntireVariable
  │ │         │ └ Identifier
  │ │         │   └ a
  │ │         ├ *
  │ │         └ EntireVariable
  │ │           └ Identifier
  │ │             └ b
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
  │         │ └ Identifier
  │         │   └ div
  │         └ MultiplicativeExpression
  │           ├ EntireVariable
  │           │ └ Identifier
  │           │   └ a
  │           ├ /
  │           └ EntireVariable
  │             └ Identifier
  │               └ b
  └ StatementList
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ x
    │ └ ProcedureStatement
    │   ├ Identifier
    │   │ └ add
    │   └ Arguments
    │     ├ ConstantVariable
    │     │ └ IntegerConstant
    │     │   └ 3 (None)
    │     └ ConstantVariable
    │       └ IntegerConstant
    │         └ 4 (None)
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ y
    │ └ ProcedureStatement
    │   ├ Identifier
    │   │ └ mul
    │   └ Arguments
    │     ├ EntireVariable
    │     │ └ Identifier
    │     │   └ x
    │     └ EntireVariable
    │       └ Identifier
    │         └ z
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ z
    │ └ ProcedureStatement
    │   ├ Identifier
    │   │ └ div
    │   └ Arguments
    │     ├ EntireVariable
    │     │ └ Identifier
    │     │   └ y
    │     ├ ConstantVariable
    │     │ └ IntegerConstant
    │     │   └ 2 (None)
    │     └ ConstantVariable
    │       └ IntegerConstant
    │         └ 3 (None)
    └ ProcedureStatement
      ├ Identifier
      │ └ printint
      └ Arguments
        └ AdditiveExpression
          ├ EntireVariable
          │ └ Identifier
          │   └ x
          ├ +
          ├ EntireVariable
          │ └ Identifier
          │   └ y
          ├ +
          └ EntireVariable
            └ Identifier
              └ z
