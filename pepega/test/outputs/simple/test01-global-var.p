======== AST ========
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
  │         │ └ Identifier
  │         │   └ kl
  │         └ AdditiveExpression
  │           ├ EntireVariable
  │           │ └ Identifier
  │           │   └ ij
  │           ├ +
  │           ├ EntireVariable
  │           │ └ Identifier
  │           │   └ mn
  │           ├ +
  │           └ EntireVariable
  │             └ Identifier
  │               └ op
  └ StatementList
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ ij
    │ └ ConstantVariable
    │   └ IntegerConstant
    │     └ 45
    ├ IfStatement
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ Identifier
    │ │ │   └ ij
    │ │ ├ >
    │ │ └ ConstantVariable
    │ │   └ IntegerConstant
    │ │     └ 1
    │ ├ AssignmentStatement
    │ │ ├ EntireVariable
    │ │ │ └ Identifier
    │ │ │   └ op
    │ │ └ ConstantVariable
    │ │   └ IntegerConstant
    │ │     └ 1
    │ └ AssignmentStatement
    │   ├ EntireVariable
    │   │ └ Identifier
    │   │   └ op
    │   └ ConstantVariable
    │     └ IntegerConstant
    │       └ 2
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ ij
    │ └ ProcedureStatement
    │   ├ Identifier
    │   │ └ kl
    │   └ Arguments
    │     └ ConstantVariable
    │       └ IntegerConstant
    │         └ 55
    └ ProcedureStatement
      ├ Identifier
      │ └ printint
      └ Arguments
        └ EntireVariable
          └ Identifier
            └ ij
======== AST AFTER SEMANTIC ANALYSIS ========
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
  │       └ AssignmentStatement (integer)
  │         ├ EntireVariable (integer)
  │         │ └ Identifier
  │         │   └ kl
  │         └ AdditiveExpression (integer)
  │           ├ EntireVariable (integer)
  │           │ └ Identifier
  │           │   └ ij
  │           ├ +
  │           ├ EntireVariable (integer)
  │           │ └ Identifier
  │           │   └ mn
  │           ├ +
  │           └ EntireVariable (integer)
  │             └ Identifier
  │               └ op
  └ StatementList
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ ij
    │ └ ConstantVariable (integer)
    │   └ IntegerConstant (integer)
    │     └ 45
    ├ IfStatement (void)
    │ ├ RelationalExpression (boolean)
    │ │ ├ EntireVariable (integer)
    │ │ │ └ Identifier
    │ │ │   └ ij
    │ │ ├ >
    │ │ └ ConstantVariable (integer)
    │ │   └ IntegerConstant (integer)
    │ │     └ 1
    │ ├ AssignmentStatement (integer)
    │ │ ├ EntireVariable (integer)
    │ │ │ └ Identifier
    │ │ │   └ op
    │ │ └ ConstantVariable (integer)
    │ │   └ IntegerConstant (integer)
    │ │     └ 1
    │ └ AssignmentStatement (integer)
    │   ├ EntireVariable (integer)
    │   │ └ Identifier
    │   │   └ op
    │   └ ConstantVariable (integer)
    │     └ IntegerConstant (integer)
    │       └ 2
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ ij
    │ └ ProcedureStatement (integer)
    │   ├ Identifier
    │   │ └ kl
    │   └ Arguments
    │     └ ConstantVariable (integer)
    │       └ IntegerConstant (integer)
    │         └ 55
    └ ProcedureStatement (void)
      ├ Identifier
      │ └ printint
      └ Arguments
        └ EntireVariable (integer)
          └ Identifier
            └ ij
