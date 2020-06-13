======== AST AFTER SEMANTIC ========
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
    │   │   └ 3 (None)
    │   ├ +
    │   └ ConstantVariable
    │     └ IntegerConstant
    │       └ 9 (None)
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
            └ 9 (None)
