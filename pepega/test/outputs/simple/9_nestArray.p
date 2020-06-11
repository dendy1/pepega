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
    │ │ ├ arr
    │ │ ├ IntegerConstant
    │ │ │ └ 1
    │ │ └ IntegerConstant
    │ │   └ 1
    │ └ IntegerConstant
    │   └ 1234
    ├ AssignmentStatement
    │ ├ IndexedVariable
    │ │ ├ arr
    │ │ ├ IntegerConstant
    │ │ │ └ 1
    │ │ └ IntegerConstant
    │ │   └ 2
    │ └ IntegerConstant
    │   └ 5678
    ├ AssignmentStatement
    │ ├ IndexedVariable
    │ │ ├ arr
    │ │ ├ IntegerConstant
    │ │ │ └ 2
    │ │ └ IntegerConstant
    │ │   └ 1
    │ └ IntegerConstant
    │   └ 1324
    ├ AssignmentStatement
    │ ├ IndexedVariable
    │ │ ├ arr
    │ │ ├ IntegerConstant
    │ │ │ └ 2
    │ │ └ IntegerConstant
    │ │   └ 2
    │ └ IntegerConstant
    │   └ 5768
    └ ProcedureStatement
      ├ Identifier
      │ └ printint
      └ Arguments
        └ AdditiveExpression
          ├ IndexedVariable
          │ ├ arr
          │ ├ IntegerConstant
          │ │ └ 1
          │ └ IntegerConstant
          │   └ 1
          ├ +
          ├ IndexedVariable
          │ ├ arr
          │ ├ IntegerConstant
          │ │ └ 1
          │ └ IntegerConstant
          │   └ 2
          ├ +
          ├ IndexedVariable
          │ ├ arr
          │ ├ IntegerConstant
          │ │ └ 2
          │ └ IntegerConstant
          │   └ 1
          ├ +
          └ IndexedVariable
            ├ arr
            ├ IntegerConstant
            │ └ 2
            └ IntegerConstant
              └ 2
