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
    ├ AssignmentStatement
    │ ├ IndexedVariable
    │ │ ├ Identifier
    │ │ │ └ crr
    │ │ └ IntegerConstant
    │ │   └ 1
    │ └ StringConstant
    │   └ hello
    └ ProcedureStatement
      ├ Identifier
      │ └ printstring
      └ IndexedVariable
        ├ Identifier
        │ └ crr
        └ IntegerConstant
          └ 1
