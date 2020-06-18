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


======== BYTECODE ========
0:		 BEGIN_SCOPE 
1:		 PUSH 2
2:		 PUSH 3
3:		 SUM 
4:		 PUSH printint
5:		 CALL 1
6:		 END_SCOPE 


======== PROGRAM RESULT ========
5.0
