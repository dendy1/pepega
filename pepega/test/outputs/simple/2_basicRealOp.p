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
  │       │   └ 10
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
          │ │   └ 3.5
          │ ├ *
          │ ├ ConstantVariable
          │ │ └ RealConstant
          │ │   └ 4.7
          │ ├ *
          │ ├ AdditiveExpression
          │ │ ├ ConstantVariable
          │ │ │ └ IntegerConstant
          │ │ │   └ 3
          │ │ ├ +
          │ │ └ IndexedVariable
          │ │   ├ Identifier
          │ │   │ └ arr
          │ │   └ ConstantVariable
          │ │     └ IntegerConstant
          │ │       └ 1
          │ ├ *
          │ └ ConstantVariable
          │   └ IntegerConstant
          │     └ 4
          ├ +
          ├ AdditiveExpression
          │ ├ MultiplicativeExpression
          │ │ ├ ConstantVariable
          │ │ │ └ RealConstant
          │ │ │   └ 9.3
          │ │ ├ /
          │ │ └ ConstantVariable
          │ │   └ RealConstant
          │ │     └ 3.1
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
          │ │   └ 0.4
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
  │       │   └ 10
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
    └ ProcedureStatement (void)
      ├ Identifier
      │ └ printreal
      └ Arguments
        └ AdditiveExpression (real)
          ├ MultiplicativeExpression (real)
          │ ├ ConstantVariable (real)
          │ │ └ RealConstant (real)
          │ │   └ 3.5
          │ ├ *
          │ ├ ConstantVariable (real)
          │ │ └ RealConstant (real)
          │ │   └ 4.7
          │ ├ *
          │ ├ AdditiveExpression (integer)
          │ │ ├ ConstantVariable (integer)
          │ │ │ └ IntegerConstant (integer)
          │ │ │   └ 3
          │ │ ├ +
          │ │ └ IndexedVariable (integer)
          │ │   ├ Identifier
          │ │   │ └ arr
          │ │   └ ConstantVariable (integer)
          │ │     └ IntegerConstant (integer)
          │ │       └ 1
          │ ├ *
          │ └ ConstantVariable (integer)
          │   └ IntegerConstant (integer)
          │     └ 4
          ├ +
          ├ AdditiveExpression (real)
          │ ├ MultiplicativeExpression (real)
          │ │ ├ ConstantVariable (real)
          │ │ │ └ RealConstant (real)
          │ │ │   └ 9.3
          │ │ ├ /
          │ │ └ ConstantVariable (real)
          │ │   └ RealConstant (real)
          │ │     └ 3.1
          │ ├ +
          │ └ MultiplicativeExpression (real)
          │   ├ EntireVariable (converted to real)
          │   │ └ Identifier
          │   │   └ a
          │   ├ *
          │   ├ EntireVariable (real)
          │   │ └ Identifier
          │   │   └ c
          │   ├ *
          │   └ MultiplicativeExpression (real)
          │     ├ EntireVariable (real)
          │     │ └ Identifier
          │     │   └ c
          │     ├ /
          │     └ EntireVariable (real)
          │       └ Identifier
          │         └ d
          ├ -
          ├ MultiplicativeExpression (real)
          │ ├ ConstantVariable (real)
          │ │ └ RealConstant (real)
          │ │   └ 0.4
          │ ├ *
          │ └ EntireVariable (converted to real)
          │   └ Identifier
          │     └ b
          ├ +
          └ MultiplicativeExpression (real)
            ├ EntireVariable (real)
            │ └ Identifier
            │   └ c
            ├ /
            ├ EntireVariable (real)
            │ └ Identifier
            │   └ d
            ├ *
            ├ EntireVariable (integer)
            │ └ Identifier
            │   └ a
            ├ *
            └ EntireVariable (integer)
              └ Identifier
                └ b
