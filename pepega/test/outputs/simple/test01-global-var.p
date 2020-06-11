Program
├ Identifier
│ └ ab
├ Identifier
│ └ cd
├ Identifier
│ └ ef
├ Identifier
│ └ gh
└ Block
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ ij
  │   ├ Identifier
  │   │ └ op
  │   └ Type
  │     └ integer
  ├ SubprogramDeclarations
  │ └ SubprogramDeclaration
  │   ├ SubprogramHeader
  │   │ ├ Identifier
  │   │ │ └ kl
  │   │ ├ ParametersList
  │   │ │ └ Parameters
  │   │ │   ├ Identifier
  │   │ │   │ └ mn
  │   │ │   └ Type
  │   │ │     └ integer
  │   │ └ Type
  │   │   └ integer
  │   └ Block
  │     └ StatementList
  │       └ AssignmentStatement
  │         ├ EntireVariable
  │         │ └ kl
  │         └ AdditiveExpression
  │           ├ EntireVariable
  │           │ └ ij
  │           ├ +
  │           ├ EntireVariable
  │           │ └ mn
  │           ├ +
  │           └ EntireVariable
  │             └ op
  └ StatementList
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ ij
    │ └ IntegerConstant
    │   └ 45
    ├ IfStatement
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ ij
    │ │ ├ >
    │ │ └ IntegerConstant
    │ │   └ 1
    │ ├ AssignmentStatement
    │ │ ├ EntireVariable
    │ │ │ └ op
    │ │ └ IntegerConstant
    │ │   └ 1
    │ └ AssignmentStatement
    │   ├ EntireVariable
    │   │ └ op
    │   └ IntegerConstant
    │     └ 2
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ ij
    │ └ ProcedureStatement
    │   ├ Identifier
    │   │ └ kl
    │   └ Arguments
    │     └ IntegerConstant
    │       └ 55
    └ ProcedureStatement
      ├ Identifier
      │ └ printint
      └ Arguments
        └ EntireVariable
          └ ij
