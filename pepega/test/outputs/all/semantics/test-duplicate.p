Program
├ Identifier
│ └ foo (str)
├ Identifier
│ └ input (str)
├ Identifier
│ └ output (str)
├ Identifier
│ └ error (str)
└ Block
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ abc (str)
  │   └ Type
  │     └ integer (SimpleType)
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ abc (str)
  │   └ Type
  │     └ ArrayType
  │       ├ IndexRange
  │       │ ├ IntegerConstant
  │       │ │ └ 23 (Integer)
  │       │ └ IntegerConstant
  │       │   └ 57 (Integer)
  │       └ Type
  │         └ ArrayType
  │           ├ IndexRange
  │           │ ├ IntegerConstant
  │           │ │ └ 23 (Integer)
  │           │ └ IntegerConstant
  │           │   └ 57 (Integer)
  │           └ Type
  │             └ real (SimpleType)
  ├ SubprogramDeclarations
  │ └ SubprogramDeclaration
  │   ├ SubprogramHeader
  │   │ ├ Identifier
  │   │ │ └ abc (str)
  │   │ ├ Arguments
  │   │ │ ├ Identifier
  │   │ │ │ └ x (str)
  │   │ │ └ Type
  │   │ │   └ integer (SimpleType)
  │   │ └ Type
  │   │   └ integer (SimpleType)
  │   └ StatementList
  │     └ AssignmentStatement
  │       ├ Identifier
  │       │ └ x (str)
  │       └ AdditiveExpression
  │         ├ Identifier
  │         │ └ x (str)
  │         ├ + (AdditiveOperator)
  │         └ IntegerConstant
  │           └ 1 (Integer)
  └ StatementList
    └ AssignmentStatement
      ├ Identifier
      │ └ abc (str)
      └ IntegerConstant
        └ 1 (Integer)
