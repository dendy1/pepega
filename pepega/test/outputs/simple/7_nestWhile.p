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
  │   └ Type
  │     └ integer
  └ StatementList
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ c
    │ └ ConstantVariable
    │   └ IntegerConstant
    │     └ 0
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ a
    │ └ ConstantVariable
    │   └ IntegerConstant
    │     └ 2
    ├ WhileStatement
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ Identifier
    │ │ │   └ a
    │ │ ├ <=
    │ │ └ ConstantVariable
    │ │   └ IntegerConstant
    │ │     └ 9
    │ └ StatementList
    │   ├ AssignmentStatement
    │   │ ├ EntireVariable
    │   │ │ └ Identifier
    │   │ │   └ b
    │   │ └ ConstantVariable
    │   │   └ IntegerConstant
    │   │     └ 1
    │   ├ WhileStatement
    │   │ ├ RelationalExpression
    │   │ │ ├ EntireVariable
    │   │ │ │ └ Identifier
    │   │ │ │   └ b
    │   │ │ ├ <=
    │   │ │ └ ConstantVariable
    │   │ │   └ IntegerConstant
    │   │ │     └ 9
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
    │   │           └ 1
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
    │           └ 1
    └ ProcedureStatement
      ├ Identifier
      │ └ printint
      └ Arguments
        └ EntireVariable
          └ Identifier
            └ c


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
  │   └ Type
  │     └ integer
  └ StatementList
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ c
    │ └ ConstantVariable (integer)
    │   └ IntegerConstant (integer)
    │     └ 0
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ a
    │ └ ConstantVariable (integer)
    │   └ IntegerConstant (integer)
    │     └ 2
    ├ WhileStatement (void)
    │ ├ RelationalExpression (boolean)
    │ │ ├ EntireVariable (integer)
    │ │ │ └ Identifier
    │ │ │   └ a
    │ │ ├ <=
    │ │ └ ConstantVariable (integer)
    │ │   └ IntegerConstant (integer)
    │ │     └ 9
    │ └ StatementList
    │   ├ AssignmentStatement (integer)
    │   │ ├ EntireVariable (integer)
    │   │ │ └ Identifier
    │   │ │   └ b
    │   │ └ ConstantVariable (integer)
    │   │   └ IntegerConstant (integer)
    │   │     └ 1
    │   ├ WhileStatement (void)
    │   │ ├ RelationalExpression (boolean)
    │   │ │ ├ EntireVariable (integer)
    │   │ │ │ └ Identifier
    │   │ │ │   └ b
    │   │ │ ├ <=
    │   │ │ └ ConstantVariable (integer)
    │   │ │   └ IntegerConstant (integer)
    │   │ │     └ 9
    │   │ └ StatementList
    │   │   ├ AssignmentStatement (integer)
    │   │   │ ├ EntireVariable (integer)
    │   │   │ │ └ Identifier
    │   │   │ │   └ c
    │   │   │ └ AdditiveExpression (integer)
    │   │   │   ├ EntireVariable (integer)
    │   │   │   │ └ Identifier
    │   │   │   │   └ c
    │   │   │   ├ +
    │   │   │   └ MultiplicativeExpression (integer)
    │   │   │     ├ EntireVariable (integer)
    │   │   │     │ └ Identifier
    │   │   │     │   └ a
    │   │   │     ├ *
    │   │   │     └ EntireVariable (integer)
    │   │   │       └ Identifier
    │   │   │         └ b
    │   │   └ AssignmentStatement (integer)
    │   │     ├ EntireVariable (integer)
    │   │     │ └ Identifier
    │   │     │   └ b
    │   │     └ AdditiveExpression (integer)
    │   │       ├ EntireVariable (integer)
    │   │       │ └ Identifier
    │   │       │   └ b
    │   │       ├ +
    │   │       └ ConstantVariable (integer)
    │   │         └ IntegerConstant (integer)
    │   │           └ 1
    │   └ AssignmentStatement (integer)
    │     ├ EntireVariable (integer)
    │     │ └ Identifier
    │     │   └ a
    │     └ AdditiveExpression (integer)
    │       ├ EntireVariable (integer)
    │       │ └ Identifier
    │       │   └ a
    │       ├ +
    │       └ ConstantVariable (integer)
    │         └ IntegerConstant (integer)
    │           └ 1
    └ ProcedureStatement (void)
      ├ Identifier
      │ └ printint
      └ Arguments
        └ EntireVariable (integer)
          └ Identifier
            └ c


======== BYTECODE ========
0:		 BEGIN_SCOPE 
1:		 DECLARE_LOCAL a
2:		 DECLARE_LOCAL b
3:		 DECLARE_LOCAL c
4:		 PUSH 0
5:		 ASSIGN c
6:		 PUSH 2
7:		 ASSIGN a
8:		 BEGIN_SCOPE 
9:		 PUSH a
10:		 PUSH 9
11:		 COMPARE_LE 
12:		 JUMP_NEG 41
13:		 BEGIN_SCOPE 
14:		 PUSH 1
15:		 ASSIGN b
16:		 BEGIN_SCOPE 
17:		 PUSH b
18:		 PUSH 9
19:		 COMPARE_LE 
20:		 JUMP_NEG 34
21:		 BEGIN_SCOPE 
22:		 PUSH c
23:		 PUSH a
24:		 PUSH b
25:		 MULTIPLY 
26:		 SUM 
27:		 ASSIGN c
28:		 PUSH b
29:		 PUSH 1
30:		 SUM 
31:		 ASSIGN b
32:		 JUMP 16
33:		 END_SCOPE 
34:		 END_SCOPE 
35:		 PUSH a
36:		 PUSH 1
37:		 SUM 
38:		 ASSIGN a
39:		 JUMP 8
40:		 END_SCOPE 
41:		 END_SCOPE 
42:		 PUSH c
43:		 PUSH printint
44:		 CALL 1
45:		 END_SCOPE 


======== PROGRAM RESULT ========
1980.0
