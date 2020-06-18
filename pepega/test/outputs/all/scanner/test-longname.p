======== AST ========
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
  │   │ └ d123456789d123456789d123456789d123456789d123456789d123456789d123456789d123456789d123456789d123456789
  │   └ Type
  │     └ integer
  └ StatementList
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ d123456789d123456789d123456789d123456789d123456789d123456789d123456789d123456789d123456789d123456789
    │ └ AdditiveExpression
    │   ├ ConstantVariable
    │   │ └ IntegerConstant
    │   │   └ 3
    │   ├ +
    │   └ ConstantVariable
    │     └ IntegerConstant
    │       └ 9
    └ AssignmentStatement
      ├ EntireVariable
      │ └ Identifier
      │   └ d123456789d123456789d123456789d123456789d123456789d123456789d123456789d123456789d123456789d123456789
      └ AdditiveExpression
        ├ EntireVariable
        │ └ Identifier
        │   └ d123456789d123456789d123456789d123456789d123456789d123456789d123456789d123456789d123456789d123456789
        ├ +
        └ ConstantVariable
          └ IntegerConstant
            └ 9
======== AST AFTER SEMANTIC ANALYSIS ========
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
  │   │ └ d123456789d123456789d123456789d123456789d123456789d123456789d123456789d123456789d123456789d123456789
  │   └ Type
  │     └ integer
  └ StatementList
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ d123456789d123456789d123456789d123456789d123456789d123456789d123456789d123456789d123456789d123456789
    │ └ AdditiveExpression (integer)
    │   ├ ConstantVariable (integer)
    │   │ └ IntegerConstant (integer)
    │   │   └ 3
    │   ├ +
    │   └ ConstantVariable (integer)
    │     └ IntegerConstant (integer)
    │       └ 9
    └ AssignmentStatement (integer)
      ├ EntireVariable (integer)
      │ └ Identifier
      │   └ d123456789d123456789d123456789d123456789d123456789d123456789d123456789d123456789d123456789d123456789
      └ AdditiveExpression (integer)
        ├ EntireVariable (integer)
        │ └ Identifier
        │   └ d123456789d123456789d123456789d123456789d123456789d123456789d123456789d123456789d123456789d123456789
        ├ +
        └ ConstantVariable (integer)
          └ IntegerConstant (integer)
            └ 9
