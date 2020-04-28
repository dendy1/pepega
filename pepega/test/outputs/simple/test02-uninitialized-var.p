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
  │   │ └ b
  │   ├ Identifier
  │   │ └ c
  │   └ Type
  │     └ integer
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ d
  │   ├ Identifier
  │   │ └ e
  │   └ Type
  │     └ ArrayType
  │       ├ IndexRange
  │       │ ├ IntegerConstant
  │       │ │ └ 1
  │       │ └ IntegerConstant
  │       │   └ 10
  │       └ Type
  │         └ integer
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ g
  │   ├ Identifier
  │   │ └ h
  │   └ Type
  │     └ real
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ g
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
  │             └ ArrayType
  │               ├ IndexRange
  │               │ ├ IntegerConstant
  │               │ │ └ 23
  │               │ └ IntegerConstant
  │               │   └ 57
  │               └ Type
  │                 └ ArrayType
  │                   ├ IndexRange
  │                   │ ├ IntegerConstant
  │                   │ │ └ 23
  │                   │ └ IntegerConstant
  │                   │   └ 57
  │                   └ Type
  │                     └ ArrayType
  │                       ├ IndexRange
  │                       │ ├ IntegerConstant
  │                       │ │ └ 23
  │                       │ └ IntegerConstant
  │                       │   └ 57
  │                       └ Type
  │                         └ real
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ k
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
  └ StatementList
    ├ AssignmentStatement
    │ ├ Identifier
    │ │ └ a
    │ └ AdditiveExpression
    │   ├ Identifier
    │   │ └ a
    │   ├ +
    │   └ IntegerConstant
    │     └ 1
    └ AssignmentStatement
      ├ IndexedVariable
      │ ├ Identifier
      │ │ └ k
      │ ├ IntegerConstant
      │ │ └ 25
      │ └ IntegerConstant
      │   └ 20
      └ AdditiveExpression
        ├ IndexedVariable
        │ ├ Identifier
        │ │ └ k
        │ ├ IntegerConstant
        │ │ └ 25
        │ └ IntegerConstant
        │   └ 20
        ├ +
        └ IntegerConstant
          └ 3
