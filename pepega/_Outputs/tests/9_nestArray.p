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
  │   │ └ arr (str)
  │   └ Type
  │     └ ArrayType
  │       ├ IndexRange
  │       │ ├ IntegerConstant
  │       │ │ └ 1 (Integer)
  │       │ └ IntegerConstant
  │       │   └ 9 (Integer)
  │       └ Type
  │         └ ArrayType
  │           ├ IndexRange
  │           │ ├ IntegerConstant
  │           │ │ └ 1 (Integer)
  │           │ └ IntegerConstant
  │           │   └ 9 (Integer)
  │           └ Type
  │             └ integer (SimpleType)
  └ CompoundStatement
    └ StatementList
      ├ AssignmentStatement
      │ ├ IndexedVariable
      │ │ ├ Identifier
      │ │ │ └ arr (str)
      │ │ ├ IntegerConstant
      │ │ │ └ 1 (Integer)
      │ │ └ IntegerConstant
      │ │   └ 1 (Integer)
      │ └ IntegerConstant
      │   └ 1234 (Integer)
      ├ AssignmentStatement
      │ ├ IndexedVariable
      │ │ ├ Identifier
      │ │ │ └ arr (str)
      │ │ ├ IntegerConstant
      │ │ │ └ 1 (Integer)
      │ │ └ IntegerConstant
      │ │   └ 2 (Integer)
      │ └ IntegerConstant
      │   └ 5678 (Integer)
      ├ AssignmentStatement
      │ ├ IndexedVariable
      │ │ ├ Identifier
      │ │ │ └ arr (str)
      │ │ ├ IntegerConstant
      │ │ │ └ 2 (Integer)
      │ │ └ IntegerConstant
      │ │   └ 1 (Integer)
      │ └ IntegerConstant
      │   └ 1324 (Integer)
      ├ AssignmentStatement
      │ ├ IndexedVariable
      │ │ ├ Identifier
      │ │ │ └ arr (str)
      │ │ ├ IntegerConstant
      │ │ │ └ 2 (Integer)
      │ │ └ IntegerConstant
      │ │   └ 2 (Integer)
      │ └ IntegerConstant
      │   └ 5768 (Integer)
      └ FunctionStatement
        ├ Identifier
        │ └ printint (str)
        └ AdditiveExpression
          ├ IndexedVariable
          │ ├ Identifier
          │ │ └ arr (str)
          │ ├ IntegerConstant
          │ │ └ 1 (Integer)
          │ └ IntegerConstant
          │   └ 1 (Integer)
          ├ + (AdditiveOperator)
          ├ IndexedVariable
          │ ├ Identifier
          │ │ └ arr (str)
          │ ├ IntegerConstant
          │ │ └ 1 (Integer)
          │ └ IntegerConstant
          │   └ 2 (Integer)
          ├ + (AdditiveOperator)
          ├ IndexedVariable
          │ ├ Identifier
          │ │ └ arr (str)
          │ ├ IntegerConstant
          │ │ └ 2 (Integer)
          │ └ IntegerConstant
          │   └ 1 (Integer)
          ├ + (AdditiveOperator)
          └ IndexedVariable
            ├ Identifier
            │ └ arr (str)
            ├ IntegerConstant
            │ └ 2 (Integer)
            └ IntegerConstant
              └ 2 (Integer)
