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
  │   │ └ a
  │   ├ Identifier
  │   │ └ b
  │   ├ Identifier
  │   │ └ c
  │   └ Type
  │     └ integer
  └ StatementList
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ c
    │ └ ConstantVariable
    │   └ IntegerConstant
    │     └ 0 (None)
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ a
    │ └ ConstantVariable
    │   └ IntegerConstant
    │     └ 2 (None)
    ├ WhileStatement
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ Identifier
    │ │ │   └ a
    │ │ ├ <=
    │ │ └ ConstantVariable
    │ │   └ IntegerConstant
    │ │     └ 9 (None)
    │ └ StatementList
    │   ├ AssignmentStatement
    │   │ ├ EntireVariable
    │   │ │ └ Identifier
    │   │ │   └ b
    │   │ └ ConstantVariable
    │   │   └ IntegerConstant
    │   │     └ 1 (None)
    │   ├ WhileStatement
    │   │ ├ RelationalExpression
    │   │ │ ├ EntireVariable
    │   │ │ │ └ Identifier
    │   │ │ │   └ b
    │   │ │ ├ <=
    │   │ │ └ ConstantVariable
    │   │ │   └ IntegerConstant
    │   │ │     └ 9 (None)
    │   │ └ StatementList
    │   │   ├ AssignmentStatement
    │   │   │ ├ EntireVariable
    │   │   │ │ └ Identifier
    │   │   │ │   └ c
    │   │   │ └ AdditiveExpression
    │   │   │   ├ EntireVariable
    │   │   │   │ └ Identifier
    │   │   │   │   └ c
    │   │   │   ├ +
    │   │   │   └ MultiplicativeExpression
    │   │   │     ├ EntireVariable
    │   │   │     │ └ Identifier
    │   │   │     │   └ a
    │   │   │     ├ *
    │   │   │     └ EntireVariable
    │   │   │       └ Identifier
    │   │   │         └ b
    │   │   └ AssignmentStatement
    │   │     ├ EntireVariable
    │   │     │ └ Identifier
    │   │     │   └ b
    │   │     └ AdditiveExpression
    │   │       ├ EntireVariable
    │   │       │ └ Identifier
    │   │       │   └ b
    │   │       ├ +
    │   │       └ ConstantVariable
    │   │         └ IntegerConstant
    │   │           └ 1 (None)
    │   └ AssignmentStatement
    │     ├ EntireVariable
    │     │ └ Identifier
    │     │   └ a
    │     └ AdditiveExpression
    │       ├ EntireVariable
    │       │ └ Identifier
    │       │   └ a
    │       ├ +
    │       └ ConstantVariable
    │         └ IntegerConstant
    │           └ 1 (None)
    └ ProcedureStatement
      ├ Identifier
      │ └ printint
      └ Arguments
        └ EntireVariable
          └ Identifier
            └ c
