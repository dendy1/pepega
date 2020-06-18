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
  │   │ └ a
  │   ├ Identifier
  │   │ └ b
  │   ├ Identifier
  │   │ └ c
  │   ├ Identifier
  │   │ └ d
  │   ├ Identifier
  │   │ └ e
  │   └ Type
  │     └ integer
  └ StatementList
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ a
    │ └ ConstantVariable
    │   └ IntegerConstant
    │     └ 3
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ b
    │ └ ConstantVariable
    │   └ IntegerConstant
    │     └ 4
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ c
    │ └ ConstantVariable
    │   └ IntegerConstant
    │     └ 5
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ d
    │ └ ConstantVariable
    │   └ IntegerConstant
    │     └ 6
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ e
    │ └ ConstantVariable
    │   └ IntegerConstant
    │     └ 7
    └ ProcedureStatement
      ├ Identifier
      │ └ printint
      └ Arguments
        └ AdditiveExpression
          ├ MultiplicativeExpression
          │ ├ EntireVariable
          │ │ └ Identifier
          │ │   └ a
          │ ├ *
          │ └ EntireVariable
          │   └ Identifier
          │     └ b
          ├ +
          ├ MultiplicativeExpression
          │ ├ EntireVariable
          │ │ └ Identifier
          │ │   └ c
          │ ├ /
          │ └ EntireVariable
          │   └ Identifier
          │     └ d
          ├ -
          └ EntireVariable
            └ Identifier
              └ e


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
  │   │ └ a
  │   ├ Identifier
  │   │ └ b
  │   ├ Identifier
  │   │ └ c
  │   ├ Identifier
  │   │ └ d
  │   ├ Identifier
  │   │ └ e
  │   └ Type
  │     └ integer
  └ StatementList
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ a
    │ └ ConstantVariable (integer)
    │   └ IntegerConstant (integer)
    │     └ 3
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ b
    │ └ ConstantVariable (integer)
    │   └ IntegerConstant (integer)
    │     └ 4
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ c
    │ └ ConstantVariable (integer)
    │   └ IntegerConstant (integer)
    │     └ 5
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ d
    │ └ ConstantVariable (integer)
    │   └ IntegerConstant (integer)
    │     └ 6
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ e
    │ └ ConstantVariable (integer)
    │   └ IntegerConstant (integer)
    │     └ 7
    └ ProcedureStatement (void)
      ├ Identifier
      │ └ printint
      └ Arguments
        └ AdditiveExpression (integer)
          ├ MultiplicativeExpression (integer)
          │ ├ EntireVariable (integer)
          │ │ └ Identifier
          │ │   └ a
          │ ├ *
          │ └ EntireVariable (integer)
          │   └ Identifier
          │     └ b
          ├ +
          ├ MultiplicativeExpression (integer)
          │ ├ EntireVariable (integer)
          │ │ └ Identifier
          │ │   └ c
          │ ├ /
          │ └ EntireVariable (integer)
          │   └ Identifier
          │     └ d
          ├ -
          └ EntireVariable (integer)
            └ Identifier
              └ e


======== BYTECODE ========
0:		 BEGIN_SCOPE 
1:		 DECLARE_LOCAL a
2:		 DECLARE_LOCAL b
3:		 DECLARE_LOCAL c
4:		 DECLARE_LOCAL d
5:		 DECLARE_LOCAL e
6:		 PUSH 3
7:		 ASSIGN a
8:		 PUSH 4
9:		 ASSIGN b
10:		 PUSH 5
11:		 ASSIGN c
12:		 PUSH 6
13:		 ASSIGN d
14:		 PUSH 7
15:		 ASSIGN e
16:		 PUSH a
17:		 PUSH b
18:		 MULTIPLY 
19:		 PUSH c
20:		 PUSH d
21:		 DIVIDE 
22:		 SUM 
23:		 PUSH c
24:		 PUSH d
25:		 DIVIDE 
26:		 PUSH e
27:		 SUBTRACT 
28:		 PUSH printint
29:		 CALL 1
30:		 END_SCOPE 


======== PROGRAM RESULT ========
-6.166666666666667
