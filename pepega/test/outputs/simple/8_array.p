======== AST ========
Program
├ Identifier
│ └ arrays
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
  │   │ └ arr
  │   └ Type
  │     └ ArrayType
  │       ├ IndexRange
  │       │ ├ IntegerConstant
  │       │ │ └ 1
  │       │ └ IntegerConstant
  │       │   └ 9
  │       └ Type
  │         └ real
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ crr
  │   └ Type
  │     └ ArrayType
  │       ├ IndexRange
  │       │ ├ IntegerConstant
  │       │ │ └ 1
  │       │ └ IntegerConstant
  │       │   └ 9
  │       └ Type
  │         └ string
  └ StatementList
    └ AssignmentStatement
      ├ IndexedVariable
      │ ├ Identifier
      │ │ └ arr
      │ └ ConstantVariable
      │   └ IntegerConstant
      │     └ 1
      └ ConstantVariable
        └ RealConstant
          └ 12.34
======== AST AFTER SEMANTIC ANALYSIS ========
Program
├ Identifier
│ └ arrays
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
  │   │ └ arr
  │   └ Type
  │     └ ArrayType
  │       ├ IndexRange
  │       │ ├ IntegerConstant
  │       │ │ └ 1
  │       │ └ IntegerConstant
  │       │   └ 9
  │       └ Type
  │         └ real
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ crr
  │   └ Type
  │     └ ArrayType
  │       ├ IndexRange
  │       │ ├ IntegerConstant
  │       │ │ └ 1
  │       │ └ IntegerConstant
  │       │   └ 9
  │       └ Type
  │         └ string
  └ StatementList
    └ AssignmentStatement (real)
      ├ IndexedVariable (real)
      │ ├ Identifier
      │ │ └ arr
      │ └ ConstantVariable (integer)
      │   └ IntegerConstant (integer)
      │     └ 1
      └ ConstantVariable (real)
        └ RealConstant (real)
          └ 12.34
