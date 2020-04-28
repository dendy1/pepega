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
  │   │ └ a (str)
  │   ├ Identifier
  │   │ └ b (str)
  │   ├ Identifier
  │   │ └ c (str)
  │   └ Type
  │     └ integer (SimpleType)
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ d (str)
  │   ├ Identifier
  │   │ └ e (str)
  │   └ Type
  │     └ ArrayType
  │       ├ IndexRange
  │       │ ├ IntegerConstant
  │       │ │ └ 1 (Integer)
  │       │ └ IntegerConstant
  │       │   └ 10 (Integer)
  │       └ Type
  │         └ integer (SimpleType)
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ g (str)
  │   ├ Identifier
  │   │ └ h (str)
  │   └ Type
  │     └ real (SimpleType)
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ g (str)
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
  │             └ ArrayType
  │               ├ IndexRange
  │               │ ├ IntegerConstant
  │               │ │ └ 23 (Integer)
  │               │ └ IntegerConstant
  │               │   └ 57 (Integer)
  │               └ Type
  │                 └ ArrayType
  │                   ├ IndexRange
  │                   │ ├ IntegerConstant
  │                   │ │ └ 23 (Integer)
  │                   │ └ IntegerConstant
  │                   │   └ 57 (Integer)
  │                   └ Type
  │                     └ ArrayType
  │                       ├ IndexRange
  │                       │ ├ IntegerConstant
  │                       │ │ └ 23 (Integer)
  │                       │ └ IntegerConstant
  │                       │   └ 57 (Integer)
  │                       └ Type
  │                         └ real (SimpleType)
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ k (str)
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
  └ StatementList
    ├ AssignmentStatement
    │ ├ Identifier
    │ │ └ a (str)
    │ └ AdditiveExpression
    │   ├ Identifier
    │   │ └ a (str)
    │   ├ + (AdditiveOperator)
    │   └ IntegerConstant
    │     └ 1 (Integer)
    └ AssignmentStatement
      ├ IndexedVariable
      │ ├ Identifier
      │ │ └ k (str)
      │ ├ IntegerConstant
      │ │ └ 25 (Integer)
      │ └ IntegerConstant
      │   └ 20 (Integer)
      └ AdditiveExpression
        ├ IndexedVariable
        │ ├ Identifier
        │ │ └ k (str)
        │ ├ IntegerConstant
        │ │ └ 25 (Integer)
        │ └ IntegerConstant
        │   └ 20 (Integer)
        ├ + (AdditiveOperator)
        └ FloatConstant
          └ 3.14 (Float)
