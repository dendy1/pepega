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
  │   │ └ a
  │   ├ Identifier
  │   │ └ c
  │   └ Type
  │     └ integer
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ b
  │   └ Type
  │     └ real
  └ StatementList
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ a
    │ └ AdditiveExpression
    │   ├ SignedFactor
    │   │ ├ -
    │   │ └ ConstantVariable
    │   │   └ IntegerConstant
    │   │     └ 3
    │   ├ -
    │   └ ConstantVariable
    │     └ IntegerConstant
    │       └ 4
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ c
    │ └ SignedFactor
    │   ├ -
    │   └ ConstantVariable
    │     └ IntegerConstant
    │       └ 5
    └ AssignmentStatement
      ├ EntireVariable
      │ └ Identifier
      │   └ b
      └ AdditiveExpression
        ├ SignedFactor
        │ ├ -
        │ └ ConstantVariable
        │   └ IntegerConstant
        │     └ 5
        ├ -
        └ ConstantVariable
          └ IntegerConstant
            └ 6
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
  │   │ └ a
  │   ├ Identifier
  │   │ └ c
  │   └ Type
  │     └ integer
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ b
  │   └ Type
  │     └ real
  └ StatementList
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ a
    │ └ AdditiveExpression (integer)
    │   ├ SignedFactor (integer)
    │   │ ├ -
    │   │ └ ConstantVariable (integer)
    │   │   └ IntegerConstant (integer)
    │   │     └ 3
    │   ├ -
    │   └ ConstantVariable (integer)
    │     └ IntegerConstant (integer)
    │       └ 4
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ c
    │ └ SignedFactor (integer)
    │   ├ -
    │   └ ConstantVariable (integer)
    │     └ IntegerConstant (integer)
    │       └ 5
    └ AssignmentStatement (real)
      ├ EntireVariable (real)
      │ └ Identifier
      │   └ b
      └ AdditiveExpression (converted to real)
        ├ SignedFactor (integer)
        │ ├ -
        │ └ ConstantVariable (integer)
        │   └ IntegerConstant (integer)
        │     └ 5
        ├ -
        └ ConstantVariable (integer)
          └ IntegerConstant (integer)
            └ 6
