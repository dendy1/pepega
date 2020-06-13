======== AST AFTER SEMANTIC ========
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
  │       │ │ └ 1 (None)
  │       │ └ IntegerConstant
  │       │   └ 10 (None)
  │       └ Type
  │         └ integer
  └ StatementList
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ a
    │ └ AdditiveExpression
    │   ├ ConstantVariable
    │   │ └ IntegerConstant
    │   │   └ 2 (None)
    │   ├ +
    │   └ ConstantVariable
    │     └ IntegerConstant
    │       └ 99 (None)
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ b
    │ └ AdditiveExpression
    │   ├ ConstantVariable
    │   │ └ IntegerConstant
    │   │   └ 3 (None)
    │   ├ +
    │   ├ MultiplicativeExpression
    │   │ ├ ConstantVariable
    │   │ │ └ IntegerConstant
    │   │ │   └ 93 (None)
    │   │ ├ *
    │   │ └ ConstantVariable
    │   │   └ IntegerConstant
    │   │     └ 5 (None)
    │   ├ +
    │   └ MultiplicativeExpression
    │     ├ ConstantVariable
    │     │ └ IntegerConstant
    │     │   └ 87 (None)
    │     ├ *
    │     └ AdditiveExpression
    │       ├ ConstantVariable
    │       │ └ IntegerConstant
    │       │   └ 23 (None)
    │       ├ +
    │       └ MultiplicativeExpression
    │         ├ ConstantVariable
    │         │ └ IntegerConstant
    │         │   └ 15 (None)
    │         ├ *
    │         └ ConstantVariable
    │           └ IntegerConstant
    │             └ 6 (None)
    ├ AssignmentStatement
    │ ├ IndexedVariable
    │ │ ├ Identifier
    │ │ │ └ c
    │ │ └ AdditiveExpression
    │ │   ├ ConstantVariable
    │ │   │ └ IntegerConstant
    │ │   │   └ 4 (None)
    │ │   ├ +
    │ │   └ ConstantVariable
    │ │     └ IntegerConstant
    │ │       └ 2 (None)
    │ └ AdditiveExpression
    │   ├ ConstantVariable
    │   │ └ IntegerConstant
    │   │   └ 3 (None)
    │   ├ +
    │   ├ MultiplicativeExpression
    │   │ ├ ConstantVariable
    │   │ │ └ IntegerConstant
    │   │ │   └ 9 (None)
    │   │ ├ *
    │   │ └ ConstantVariable
    │   │   └ IntegerConstant
    │   │     └ 5 (None)
    │   ├ +
    │   └ MultiplicativeExpression
    │     ├ ConstantVariable
    │     │ └ IntegerConstant
    │     │   └ 87 (None)
    │     ├ *
    │     └ AdditiveExpression
    │       ├ ConstantVariable
    │       │ └ IntegerConstant
    │       │   └ 2 (None)
    │       ├ +
    │       └ MultiplicativeExpression
    │         ├ ConstantVariable
    │         │ └ IntegerConstant
    │         │   └ 15 (None)
    │         ├ *
    │         └ ConstantVariable
    │           └ IntegerConstant
    │             └ 6 (None)
    └ AssignmentStatement
      ├ IndexedVariable
      │ ├ Identifier
      │ │ └ c
      │ └ AdditiveExpression
      │   ├ ConstantVariable
      │   │ └ IntegerConstant
      │   │   └ 3 (None)
      │   ├ +
      │   ├ MultiplicativeExpression
      │   │ ├ ConstantVariable
      │   │ │ └ IntegerConstant
      │   │ │   └ 9 (None)
      │   │ ├ *
      │   │ └ ConstantVariable
      │   │   └ IntegerConstant
      │   │     └ 5 (None)
      │   ├ +
      │   └ MultiplicativeExpression
      │     ├ ConstantVariable
      │     │ └ IntegerConstant
      │     │   └ 87 (None)
      │     ├ *
      │     └ AdditiveExpression
      │       ├ ConstantVariable
      │       │ └ IntegerConstant
      │       │   └ 2 (None)
      │       ├ +
      │       └ MultiplicativeExpression
      │         ├ ConstantVariable
      │         │ └ IntegerConstant
      │         │   └ 15 (None)
      │         ├ *
      │         └ ConstantVariable
      │           └ IntegerConstant
      │             └ 6 (None)
      └ AdditiveExpression
        ├ ConstantVariable
        │ └ IntegerConstant
        │   └ 3 (None)
        ├ +
        ├ MultiplicativeExpression
        │ ├ ConstantVariable
        │ │ └ IntegerConstant
        │ │   └ 9 (None)
        │ ├ *
        │ └ ConstantVariable
        │   └ IntegerConstant
        │     └ 5 (None)
        ├ +
        └ MultiplicativeExpression
          ├ ConstantVariable
          │ └ IntegerConstant
          │   └ 8 (None)
          ├ *
          └ AdditiveExpression
            ├ ConstantVariable
            │ └ IntegerConstant
            │   └ 2 (None)
            ├ +
            └ MultiplicativeExpression
              ├ ConstantVariable
              │ └ IntegerConstant
              │   └ 15 (None)
              ├ *
              └ ConstantVariable
                └ IntegerConstant
                  └ 6 (None)
