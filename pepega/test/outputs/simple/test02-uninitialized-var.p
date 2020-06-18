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
  │   │ └ j
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
    │       └ 1
    └ AssignmentStatement
      ├ IndexedVariable
      │ ├ Identifier
      │ │ └ k
      │ ├ ConstantVariable
      │ │ └ IntegerConstant
      │ │   └ 25
      │ └ ConstantVariable
      │   └ IntegerConstant
      │     └ 20
      └ AdditiveExpression
        ├ IndexedVariable
        │ ├ Identifier
        │ │ └ k
        │ ├ ConstantVariable
        │ │ └ IntegerConstant
        │ │   └ 25
        │ └ ConstantVariable
        │   └ IntegerConstant
        │     └ 20
        ├ +
        └ ConstantVariable
          └ IntegerConstant
            └ 3
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
  │   │ └ j
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
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ a
    │ └ AdditiveExpression (integer)
    │   ├ EntireVariable (integer)
    │   │ └ Identifier
    │   │   └ a
    │   ├ +
    │   └ ConstantVariable (integer)
    │     └ IntegerConstant (integer)
    │       └ 1
    └ AssignmentStatement (real)
      ├ IndexedVariable (real)
      │ ├ Identifier
      │ │ └ k
      │ ├ ConstantVariable (integer)
      │ │ └ IntegerConstant (integer)
      │ │   └ 25
      │ └ ConstantVariable (integer)
      │   └ IntegerConstant (integer)
      │     └ 20
      └ AdditiveExpression (real)
        ├ IndexedVariable (real)
        │ ├ Identifier
        │ │ └ k
        │ ├ ConstantVariable (integer)
        │ │ └ IntegerConstant (integer)
        │ │   └ 25
        │ └ ConstantVariable (integer)
        │   └ IntegerConstant (integer)
        │     └ 20
        ├ +
        └ ConstantVariable (converted to real)
          └ IntegerConstant (integer)
            └ 3
