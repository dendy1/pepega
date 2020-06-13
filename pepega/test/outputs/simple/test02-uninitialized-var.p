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
  │       │ │ └ 1 (None)
  │       │ └ IntegerConstant
  │       │   └ 10 (None)
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
  │   │ └ j
  │   └ Type
  │     └ ArrayType
  │       ├ IndexRange
  │       │ ├ IntegerConstant
  │       │ │ └ 23 (None)
  │       │ └ IntegerConstant
  │       │   └ 57 (None)
  │       └ Type
  │         └ ArrayType
  │           ├ IndexRange
  │           │ ├ IntegerConstant
  │           │ │ └ 23 (None)
  │           │ └ IntegerConstant
  │           │   └ 57 (None)
  │           └ Type
  │             └ ArrayType
  │               ├ IndexRange
  │               │ ├ IntegerConstant
  │               │ │ └ 23 (None)
  │               │ └ IntegerConstant
  │               │   └ 57 (None)
  │               └ Type
  │                 └ ArrayType
  │                   ├ IndexRange
  │                   │ ├ IntegerConstant
  │                   │ │ └ 23 (None)
  │                   │ └ IntegerConstant
  │                   │   └ 57 (None)
  │                   └ Type
  │                     └ ArrayType
  │                       ├ IndexRange
  │                       │ ├ IntegerConstant
  │                       │ │ └ 23 (None)
  │                       │ └ IntegerConstant
  │                       │   └ 57 (None)
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
  │       │ │ └ 23 (None)
  │       │ └ IntegerConstant
  │       │   └ 57 (None)
  │       └ Type
  │         └ ArrayType
  │           ├ IndexRange
  │           │ ├ IntegerConstant
  │           │ │ └ 23 (None)
  │           │ └ IntegerConstant
  │           │   └ 57 (None)
  │           └ Type
  │             └ real
  └ StatementList
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ a
    │ └ AdditiveExpression
    │   ├ EntireVariable
    │   │ └ Identifier
    │   │   └ a
    │   ├ +
    │   └ ConstantVariable
    │     └ IntegerConstant
    │       └ 1 (None)
    └ AssignmentStatement
      ├ IndexedVariable
      │ ├ Identifier
      │ │ └ k
      │ ├ ConstantVariable
      │ │ └ IntegerConstant
      │ │   └ 25 (None)
      │ └ ConstantVariable
      │   └ IntegerConstant
      │     └ 20 (None)
      └ AdditiveExpression
        ├ IndexedVariable
        │ ├ Identifier
        │ │ └ k
        │ ├ ConstantVariable
        │ │ └ IntegerConstant
        │ │   └ 25 (None)
        │ └ ConstantVariable
        │   └ IntegerConstant
        │     └ 20 (None)
        ├ +
        └ ConstantVariable
          └ IntegerConstant
            └ 3 (None)
