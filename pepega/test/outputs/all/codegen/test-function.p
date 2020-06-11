Program
├ Identifier
│ └ foo
├ Identifier
│ └ input
├ Identifier
│ └ output
├ Identifier
│ └ error
└ Block
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ a
  │   ├ Identifier
  │   │ └ b
  │   └ Type
  │     └ integer
  ├ SubprogramDeclarations
  │ └ SubprogramDeclaration
  │   ├ SubprogramHeader
  │   │ ├ Identifier
  │   │ │ └ simplesum
  │   │ ├ ParametersList
  │   │ │ └ Parameters
  │   │ │   ├ Identifier
  │   │ │   │ └ a
  │   │ │   └ Type
  │   │ │     └ integer
  │   │ └ Type
  │   │   └ integer
  │   └ Block
  │     └ StatementList
  │       └ AssignmentStatement
  │         ├ EntireVariable
  │         │ └ simplesum
  │         └ MultiplicativeExpression
  │           ├ EntireVariable
  │           │ └ a
  │           ├ *
  │           └ EntireVariable
  │             └ b
  └ StatementList
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ a
    │ └ IntegerConstant
    │   └ 7
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ b
    │ └ IntegerConstant
    │   └ 13
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ a
    │ └ AdditiveExpression
    │   ├ IntegerConstant
    │   │ └ 3
    │   ├ +
    │   └ ProcedureStatement
    │     ├ Identifier
    │     │ └ simplesum
    │     └ Arguments
    │       └ IntegerConstant
    │         └ 10
    └ AssignmentStatement
      ├ EntireVariable
      │ └ b
      └ MultiplicativeExpression
        ├ IntegerConstant
        │ └ 1
        ├ *
        └ ProcedureStatement
          ├ Identifier
          │ └ simplesum
          └ Arguments
            └ SignedFactor
              ├ -
              └ IntegerConstant
                └ 10
