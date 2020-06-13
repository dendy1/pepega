======== AST AFTER SEMANTIC ========
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
  │       │ │ └ 1 (None)
  │       │ └ IntegerConstant
  │       │   └ 9 (None)
  │       └ Type
  │         └ ArrayType
  │           ├ IndexRange
  │           │ ├ IntegerConstant
  │           │ │ └ 1 (None)
  │           │ └ IntegerConstant
  │           │   └ 9 (None)
  │           └ Type
  │             └ integer
  └ StatementList
    ├ AssignmentStatement
    │ ├ IndexedVariable
    │ │ ├ Identifier
    │ │ │ └ arr
    │ │ ├ ConstantVariable
    │ │ │ └ IntegerConstant
    │ │ │   └ 1 (None)
    │ │ └ ConstantVariable
    │ │   └ IntegerConstant
    │ │     └ 1 (None)
    │ └ ConstantVariable
    │   └ IntegerConstant
    │     └ 1234 (None)
    ├ AssignmentStatement
    │ ├ IndexedVariable
    │ │ ├ Identifier
    │ │ │ └ arr
    │ │ ├ ConstantVariable
    │ │ │ └ IntegerConstant
    │ │ │   └ 1 (None)
    │ │ └ ConstantVariable
    │ │   └ IntegerConstant
    │ │     └ 2 (None)
    │ └ ConstantVariable
    │   └ IntegerConstant
    │     └ 5678 (None)
    ├ AssignmentStatement
    │ ├ IndexedVariable
    │ │ ├ Identifier
    │ │ │ └ arr
    │ │ ├ ConstantVariable
    │ │ │ └ IntegerConstant
    │ │ │   └ 2 (None)
    │ │ └ ConstantVariable
    │ │   └ IntegerConstant
    │ │     └ 1 (None)
    │ └ ConstantVariable
    │   └ IntegerConstant
    │     └ 1324 (None)
    ├ AssignmentStatement
    │ ├ IndexedVariable
    │ │ ├ Identifier
    │ │ │ └ arr
    │ │ ├ ConstantVariable
    │ │ │ └ IntegerConstant
    │ │ │   └ 2 (None)
    │ │ └ ConstantVariable
    │ │   └ IntegerConstant
    │ │     └ 2 (None)
    │ └ ConstantVariable
    │   └ IntegerConstant
    │     └ 5768 (None)
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
          │ │   └ 1 (None)
          │ └ ConstantVariable
          │   └ IntegerConstant
          │     └ 1 (None)
          ├ +
          ├ IndexedVariable
          │ ├ Identifier
          │ │ └ arr
          │ ├ ConstantVariable
          │ │ └ IntegerConstant
          │ │   └ 1 (None)
          │ └ ConstantVariable
          │   └ IntegerConstant
          │     └ 2 (None)
          ├ +
          ├ IndexedVariable
          │ ├ Identifier
          │ │ └ arr
          │ ├ ConstantVariable
          │ │ └ IntegerConstant
          │ │   └ 2 (None)
          │ └ ConstantVariable
          │   └ IntegerConstant
          │     └ 1 (None)
          ├ +
          └ IndexedVariable
            ├ Identifier
            │ └ arr
            ├ ConstantVariable
            │ └ IntegerConstant
            │   └ 2 (None)
            └ ConstantVariable
              └ IntegerConstant
                └ 2 (None)
