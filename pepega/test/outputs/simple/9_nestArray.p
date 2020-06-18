======== AST ========
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
    │ │ ├ ConstantVariable
    │ │ │ └ IntegerConstant
    │ │ │   └ 1
    │ │ └ ConstantVariable
    │ │   └ IntegerConstant
    │ │     └ 1
    │ └ ConstantVariable
    │   └ IntegerConstant
    │     └ 1234
    ├ AssignmentStatement
    │ ├ IndexedVariable
    │ │ ├ Identifier
    │ │ │ └ arr
    │ │ ├ ConstantVariable
    │ │ │ └ IntegerConstant
    │ │ │   └ 1
    │ │ └ ConstantVariable
    │ │   └ IntegerConstant
    │ │     └ 2
    │ └ ConstantVariable
    │   └ IntegerConstant
    │     └ 5678
    ├ AssignmentStatement
    │ ├ IndexedVariable
    │ │ ├ Identifier
    │ │ │ └ arr
    │ │ ├ ConstantVariable
    │ │ │ └ IntegerConstant
    │ │ │   └ 2
    │ │ └ ConstantVariable
    │ │   └ IntegerConstant
    │ │     └ 1
    │ └ ConstantVariable
    │   └ IntegerConstant
    │     └ 1324
    ├ AssignmentStatement
    │ ├ IndexedVariable
    │ │ ├ Identifier
    │ │ │ └ arr
    │ │ ├ ConstantVariable
    │ │ │ └ IntegerConstant
    │ │ │   └ 2
    │ │ └ ConstantVariable
    │ │   └ IntegerConstant
    │ │     └ 2
    │ └ ConstantVariable
    │   └ IntegerConstant
    │     └ 5768
    └ ProcedureStatement
      ├ Identifier
      │ └ printint
      └ Arguments
        └ AdditiveExpression
          ├ IndexedVariable
          │ ├ Identifier
          │ │ └ arr
          │ ├ ConstantVariable
          │ │ └ IntegerConstant
          │ │   └ 1
          │ └ ConstantVariable
          │   └ IntegerConstant
          │     └ 1
          ├ +
          ├ IndexedVariable
          │ ├ Identifier
          │ │ └ arr
          │ ├ ConstantVariable
          │ │ └ IntegerConstant
          │ │   └ 1
          │ └ ConstantVariable
          │   └ IntegerConstant
          │     └ 2
          ├ +
          ├ IndexedVariable
          │ ├ Identifier
          │ │ └ arr
          │ ├ ConstantVariable
          │ │ └ IntegerConstant
          │ │   └ 2
          │ └ ConstantVariable
          │   └ IntegerConstant
          │     └ 1
          ├ +
          └ IndexedVariable
            ├ Identifier
            │ └ arr
            ├ ConstantVariable
            │ └ IntegerConstant
            │   └ 2
            └ ConstantVariable
              └ IntegerConstant
                └ 2
======== AST AFTER SEMANTIC ANALYSIS ========
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
    ├ AssignmentStatement (integer)
    │ ├ IndexedVariable (integer)
    │ │ ├ Identifier
    │ │ │ └ arr
    │ │ ├ ConstantVariable (integer)
    │ │ │ └ IntegerConstant (integer)
    │ │ │   └ 1
    │ │ └ ConstantVariable (integer)
    │ │   └ IntegerConstant (integer)
    │ │     └ 1
    │ └ ConstantVariable (integer)
    │   └ IntegerConstant (integer)
    │     └ 1234
    ├ AssignmentStatement (integer)
    │ ├ IndexedVariable (integer)
    │ │ ├ Identifier
    │ │ │ └ arr
    │ │ ├ ConstantVariable (integer)
    │ │ │ └ IntegerConstant (integer)
    │ │ │   └ 1
    │ │ └ ConstantVariable (integer)
    │ │   └ IntegerConstant (integer)
    │ │     └ 2
    │ └ ConstantVariable (integer)
    │   └ IntegerConstant (integer)
    │     └ 5678
    ├ AssignmentStatement (integer)
    │ ├ IndexedVariable (integer)
    │ │ ├ Identifier
    │ │ │ └ arr
    │ │ ├ ConstantVariable (integer)
    │ │ │ └ IntegerConstant (integer)
    │ │ │   └ 2
    │ │ └ ConstantVariable (integer)
    │ │   └ IntegerConstant (integer)
    │ │     └ 1
    │ └ ConstantVariable (integer)
    │   └ IntegerConstant (integer)
    │     └ 1324
    ├ AssignmentStatement (integer)
    │ ├ IndexedVariable (integer)
    │ │ ├ Identifier
    │ │ │ └ arr
    │ │ ├ ConstantVariable (integer)
    │ │ │ └ IntegerConstant (integer)
    │ │ │   └ 2
    │ │ └ ConstantVariable (integer)
    │ │   └ IntegerConstant (integer)
    │ │     └ 2
    │ └ ConstantVariable (integer)
    │   └ IntegerConstant (integer)
    │     └ 5768
    └ ProcedureStatement (void)
      ├ Identifier
      │ └ printint
      └ Arguments
        └ AdditiveExpression (integer)
          ├ IndexedVariable (integer)
          │ ├ Identifier
          │ │ └ arr
          │ ├ ConstantVariable (integer)
          │ │ └ IntegerConstant (integer)
          │ │   └ 1
          │ └ ConstantVariable (integer)
          │   └ IntegerConstant (integer)
          │     └ 1
          ├ +
          ├ IndexedVariable (integer)
          │ ├ Identifier
          │ │ └ arr
          │ ├ ConstantVariable (integer)
          │ │ └ IntegerConstant (integer)
          │ │   └ 1
          │ └ ConstantVariable (integer)
          │   └ IntegerConstant (integer)
          │     └ 2
          ├ +
          ├ IndexedVariable (integer)
          │ ├ Identifier
          │ │ └ arr
          │ ├ ConstantVariable (integer)
          │ │ └ IntegerConstant (integer)
          │ │   └ 2
          │ └ ConstantVariable (integer)
          │   └ IntegerConstant (integer)
          │     └ 1
          ├ +
          └ IndexedVariable (integer)
            ├ Identifier
            │ └ arr
            ├ ConstantVariable (integer)
            │ └ IntegerConstant (integer)
            │   └ 2
            └ ConstantVariable (integer)
              └ IntegerConstant (integer)
                └ 2
