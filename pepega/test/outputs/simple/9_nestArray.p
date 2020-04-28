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
  │   │ └ arr
  │   └ Type
  │     └ ArrayType
  │       ├ IndexRange
  │       │ ├ IntegerConstant
  │       │ │ └ 1
  │       │ └ IntegerConstant
  │       │   └ 9
  │       └ Type
  │         └ ArrayType
  │           ├ IndexRange
  │           │ ├ IntegerConstant
  │           │ │ └ 1
  │           │ └ IntegerConstant
  │           │   └ 9
  │           └ Type
  │             └ integer
  └ StatementList
    ├ AssignmentStatement
    │ ├ IndexedVariable
    │ │ ├ Identifier
    │ │ │ └ arr
    │ │ ├ IntegerConstant
    │ │ │ └ 1
    │ │ └ IntegerConstant
    │ │   └ 1
    │ └ IntegerConstant
    │   └ 1234
    ├ AssignmentStatement
    │ ├ IndexedVariable
    │ │ ├ Identifier
    │ │ │ └ arr
    │ │ ├ IntegerConstant
    │ │ │ └ 1
    │ │ └ IntegerConstant
    │ │   └ 2
    │ └ IntegerConstant
    │   └ 5678
    ├ AssignmentStatement
    │ ├ IndexedVariable
    │ │ ├ Identifier
    │ │ │ └ arr
    │ │ ├ IntegerConstant
    │ │ │ └ 2
    │ │ └ IntegerConstant
    │ │   └ 1
    │ └ IntegerConstant
    │   └ 1324
    ├ AssignmentStatement
    │ ├ IndexedVariable
    │ │ ├ Identifier
    │ │ │ └ arr
    │ │ ├ IntegerConstant
    │ │ │ └ 2
    │ │ └ IntegerConstant
    │ │   └ 2
    │ └ IntegerConstant
    │   └ 5768
    └ ProcedureStatement
      ├ Identifier
      │ └ printint
      └ AdditiveExpression
        ├ IndexedVariable
        │ ├ Identifier
        │ │ └ arr
        │ ├ IntegerConstant
        │ │ └ 1
        │ └ IntegerConstant
        │   └ 1
        ├ +
        ├ IndexedVariable
        │ ├ Identifier
        │ │ └ arr
        │ ├ IntegerConstant
        │ │ └ 1
        │ └ IntegerConstant
        │   └ 2
        ├ +
        ├ IndexedVariable
        │ ├ Identifier
        │ │ └ arr
        │ ├ IntegerConstant
        │ │ └ 2
        │ └ IntegerConstant
        │   └ 1
        ├ +
        └ IndexedVariable
          ├ Identifier
          │ └ arr
          ├ IntegerConstant
          │ └ 2
          └ IntegerConstant
            └ 2
