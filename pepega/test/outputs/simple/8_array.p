Program
├ Identifier
│ └ arrays
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
  │   │ └ crr
  │   └ Type
  │     └ ArrayType
  │       ├ IndexRange
  │       │ ├ IntegerConstant
  │       │ │ └ 1
  │       │ └ IntegerConstant
  │       │   └ 9
  │       └ Type
  │         └ string
  └ StatementList
    ├ AssignmentStatement
    │ ├ IndexedVariable
    │ │ ├ Identifier
    │ │ │ └ arr
    │ │ └ IntegerConstant
    │ │   └ 1
    │ └ ConstantVariable
    │   └ RealConstant
    │     └ 12.34
    ├ AssignmentStatement
    │ ├ IndexedVariable
    │ │ ├ Identifier
    │ │ │ └ arr
    │ │ └ IntegerConstant
    │ │   └ 2
    │ └ ConstantVariable
    │   └ RealConstant
    │     └ 56.78
    ├ AssignmentStatement
    │ ├ IndexedVariable
    │ │ ├ Identifier
    │ │ │ └ crr
    │ │ └ IntegerConstant
    │ │   └ 1
    │ └ StringConstant
    │   └ hello
    ├ ProcedureStatement
    │ ├ Identifier
    │ │ └ printstring
    │ └ ExpressionList
    │   └ IndexedVariable
    │     ├ Identifier
    │     │ └ crr
    │     └ IntegerConstant
    │       └ 1
    └ ProcedureStatement
      ├ Identifier
      │ └ printreal
      └ ExpressionList
        └ AdditiveExpression
          ├ IndexedVariable
          │ ├ Identifier
          │ │ └ arr
          │ └ IntegerConstant
          │   └ 1
          ├ +
          └ IndexedVariable
            ├ Identifier
            │ └ arr
            └ IntegerConstant
              └ 2
