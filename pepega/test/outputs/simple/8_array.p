======== AST AFTER SEMANTIC ========
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
  │       │ │ └ 1 (None)
  │       │ └ IntegerConstant
  │       │   └ 9 (None)
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
  │       │ │ └ 1 (None)
  │       │ └ IntegerConstant
  │       │   └ 9 (None)
  │       └ Type
  │         └ string
  └ StatementList
    └ AssignmentStatement
      ├ IndexedVariable
      │ ├ Identifier
      │ │ └ arr
      │ └ ConstantVariable
      │   └ IntegerConstant
      │     └ 1 (None)
      └ ConstantVariable
        └ RealConstant
          └ 12.34 (None)
