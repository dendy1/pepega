======== AST ========
Program
├ Identifier
│ └ test
└ Block
  └ StatementList
    └ ProcedureStatement
      ├ Identifier
      │ └ printint
      └ Arguments
        └ AdditiveExpression
          ├ ConstantVariable
          │ └ IntegerConstant
          │   └ 2
          ├ +
          └ ConstantVariable
            └ IntegerConstant
              └ 3
======== AST AFTER SEMANTIC ANALYSIS ========
Program
├ Identifier
│ └ test
└ Block
  └ StatementList
    └ ProcedureStatement (void)
      ├ Identifier
      │ └ printint
      └ Arguments
        └ AdditiveExpression (integer)
          ├ ConstantVariable (integer)
          │ └ IntegerConstant (integer)
          │   └ 2
          ├ +
          └ ConstantVariable (integer)
            └ IntegerConstant (integer)
              └ 3
