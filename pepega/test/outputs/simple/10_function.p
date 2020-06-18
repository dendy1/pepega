======== AST ========
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
    │     │   └ 3
    │     └ ConstantVariable
    │       └ IntegerConstant
    │         └ 4
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
    │     │   └ 2
    │     └ ConstantVariable
    │       └ IntegerConstant
    │         └ 3
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
======== AST AFTER SEMANTIC ANALYSIS ========
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
  │ │     └ AssignmentStatement (integer)
  │ │       ├ EntireVariable (integer)
  │ │       │ └ Identifier
  │ │       │   └ add
  │ │       └ AdditiveExpression (integer)
  │ │         ├ EntireVariable (integer)
  │ │         │ └ Identifier
  │ │         │   └ a
  │ │         ├ +
  │ │         └ EntireVariable (integer)
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
  │ │     └ AssignmentStatement (integer)
  │ │       ├ EntireVariable (integer)
  │ │       │ └ Identifier
  │ │       │   └ mul
  │ │       └ MultiplicativeExpression (integer)
  │ │         ├ EntireVariable (integer)
  │ │         │ └ Identifier
  │ │         │   └ a
  │ │         ├ *
  │ │         └ EntireVariable (integer)
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
  │       └ AssignmentStatement (integer)
  │         ├ EntireVariable (integer)
  │         │ └ Identifier
  │         │   └ div
  │         └ MultiplicativeExpression (integer)
  │           ├ EntireVariable (integer)
  │           │ └ Identifier
  │           │   └ a
  │           ├ /
  │           └ EntireVariable (integer)
  │             └ Identifier
  │               └ b
  └ StatementList
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ x
    │ └ ProcedureStatement (integer)
    │   ├ Identifier
    │   │ └ add
    │   └ Arguments
    │     ├ ConstantVariable (integer)
    │     │ └ IntegerConstant (integer)
    │     │   └ 3
    │     └ ConstantVariable (integer)
    │       └ IntegerConstant (integer)
    │         └ 4
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ y
    │ └ ProcedureStatement (integer)
    │   ├ Identifier
    │   │ └ mul
    │   └ Arguments
    │     ├ EntireVariable (integer)
    │     │ └ Identifier
    │     │   └ x
    │     └ EntireVariable (integer)
    │       └ Identifier
    │         └ z
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ z
    │ └ ProcedureStatement (integer)
    │   ├ Identifier
    │   │ └ div
    │   └ Arguments
    │     ├ EntireVariable (integer)
    │     │ └ Identifier
    │     │   └ y
    │     ├ ConstantVariable (integer)
    │     │ └ IntegerConstant (integer)
    │     │   └ 2
    │     └ ConstantVariable (converted to real)
    │       └ IntegerConstant (integer)
    │         └ 3
    └ ProcedureStatement (void)
      ├ Identifier
      │ └ printint
      └ Arguments
        └ AdditiveExpression (integer)
          ├ EntireVariable (integer)
          │ └ Identifier
          │   └ x
          ├ +
          ├ EntireVariable (integer)
          │ └ Identifier
          │   └ y
          ├ +
          └ EntireVariable (integer)
            └ Identifier
              └ z
