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
  │   │ └ abc
  │   └ Type
  │     └ integer
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ abc
  │   └ Type
  │     └ ArrayType
  │       ├ IndexRange
  │       │ ├ IntegerConstant
  │       │ │ └ 23
  │       │ └ IntegerConstant
  │       │   └ 57
  │       └ Type
  │         └ ArrayType
  │           ├ IndexRange
  │           │ ├ IntegerConstant
  │           │ │ └ 23
  │           │ └ IntegerConstant
  │           │   └ 57
  │           └ Type
  │             └ real
  ├ SubprogramDeclarations
  │ └ SubprogramDeclaration
  │   ├ SubprogramHeader
  │   │ ├ Identifier
  │   │ │ └ abc
  │   │ ├ Arguments
  │   │ │ ├ Identifier
  │   │ │ │ └ x
  │   │ │ └ Type
  │   │ │   └ integer
  │   │ └ Type
  │   │   └ integer
  │   └ StatementList
  │     └ AssignmentStatement
  │       ├ Identifier
  │       │ └ x
  │       └ AdditiveExpression
  │         ├ Identifier
  │         │ └ x
  │         ├ +
  │         └ IntegerConstant
  │           └ 1
  └ StatementList
    └ AssignmentStatement
      ├ Identifier
      │ └ abc
      └ IntegerConstant
        └ 1
