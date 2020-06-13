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
  │       │   └ 10 (None)
  │       └ Type
  │         └ integer
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ a
  │   ├ Identifier
  │   │ └ b
  │   └ Type
  │     └ integer
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ c
  │   ├ Identifier
  │   │ └ d
  │   └ Type
  │     └ real
  └ StatementList
    └ ProcedureStatement
      ├ Identifier
      │ └ printreal
      └ Arguments
        └ AdditiveExpression
          ├ MultiplicativeExpression
          │ ├ ConstantVariable
          │ │ └ RealConstant
          │ │   └ 3.5 (None)
          │ ├ *
          │ ├ ConstantVariable
          │ │ └ RealConstant
          │ │   └ 4.7 (None)
          │ ├ *
          │ ├ AdditiveExpression
          │ │ ├ ConstantVariable
          │ │ │ └ IntegerConstant
          │ │ │   └ 3 (None)
          │ │ ├ +
          │ │ └ IndexedVariable
          │ │   ├ Identifier
          │ │   │ └ arr
          │ │   └ ConstantVariable
          │ │     └ IntegerConstant
          │ │       └ 1 (None)
          │ ├ *
          │ └ ConstantVariable
          │   └ IntegerConstant
          │     └ 4 (None)
          ├ +
          ├ AdditiveExpression
          │ ├ MultiplicativeExpression
          │ │ ├ ConstantVariable
          │ │ │ └ RealConstant
          │ │ │   └ 9.3 (None)
          │ │ ├ /
          │ │ └ ConstantVariable
          │ │   └ RealConstant
          │ │     └ 3.1 (None)
          │ ├ +
          │ └ MultiplicativeExpression
          │   ├ EntireVariable
          │   │ └ Identifier
          │   │   └ a
          │   ├ *
          │   ├ EntireVariable
          │   │ └ Identifier
          │   │   └ c
          │   ├ *
          │   └ MultiplicativeExpression
          │     ├ EntireVariable
          │     │ └ Identifier
          │     │   └ c
          │     ├ /
          │     └ EntireVariable
          │       └ Identifier
          │         └ d
          ├ -
          ├ MultiplicativeExpression
          │ ├ ConstantVariable
          │ │ └ RealConstant
          │ │   └ 0.4 (None)
          │ ├ *
          │ └ EntireVariable
          │   └ Identifier
          │     └ b
          ├ +
          └ MultiplicativeExpression
            ├ EntireVariable
            │ └ Identifier
            │   └ c
            ├ /
            ├ EntireVariable
            │ └ Identifier
            │   └ d
            ├ *
            ├ EntireVariable
            │ └ Identifier
            │   └ a
            ├ *
            └ EntireVariable
              └ Identifier
                └ b
