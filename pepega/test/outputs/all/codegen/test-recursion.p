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
  │   │ │ └ sum
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
  │       └ IfStatement
  │         ├ RelationalExpression
  │         │ ├ EntireVariable
  │         │ │ └ a
  │         │ ├ <=
  │         │ └ IntegerConstant
  │         │   └ 0
  │         ├ AssignmentStatement
  │         │ ├ EntireVariable
  │         │ │ └ sum
  │         │ └ IntegerConstant
  │         │   └ 0
  │         └ AssignmentStatement
  │           ├ EntireVariable
  │           │ └ sum
  │           └ AdditiveExpression
  │             ├ EntireVariable
  │             │ └ a
  │             ├ +
  │             └ ProcedureStatement
  │               ├ Identifier
  │               │ └ sum
  │               └ Arguments
  │                 └ AdditiveExpression
  │                   ├ EntireVariable
  │                   │ └ a
  │                   ├ -
  │                   └ IntegerConstant
  │                     └ 1
  └ StatementList
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ a
    │ └ ProcedureStatement
    │   ├ Identifier
    │   │ └ sum
    │   └ Arguments
    │     └ IntegerConstant
    │       └ 10
    └ AssignmentStatement
      ├ EntireVariable
      │ └ b
      └ ProcedureStatement
        ├ Identifier
        │ └ sum
        └ Arguments
          └ SignedFactor
            ├ -
            └ IntegerConstant
              └ 10
