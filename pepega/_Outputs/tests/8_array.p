Program
├ Identifier
│ └ test (str)
├ Identifier
│ └ in (str)
├ Identifier
│ └ out (str)
├ Identifier
│ └ err (str)
└ Block
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ crr (str)
  │   └ Type
  │     └ ArrayType
  │       ├ IndexRange
  │       │ ├ IntegerConstant
  │       │ │ └ 1 (Integer)
  │       │ └ IntegerConstant
  │       │   └ 9 (Integer)
  │       └ Type
  │         └ string (SimpleType)
  └ CompoundStatement
    └ StatementList
      ├ AssignmentStatement
      │ ├ IndexedVariable
      │ │ ├ Identifier
      │ │ │ └ crr (str)
      │ │ └ IntegerConstant
      │ │   └ 1 (Integer)
      │ └ StringConstant
      │   └ hello (str)
      └ FunctionStatement
        ├ Identifier
        │ └ printstring (str)
        └ IndexedVariable
          ├ Identifier
          │ └ crr (str)
          └ IntegerConstant
            └ 1 (Integer)
