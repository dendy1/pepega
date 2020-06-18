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
    │     └ 5
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ c
    │ └ ConstantVariable
    │   └ IntegerConstant
    │     └ 7
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ d
    │ └ ConstantVariable
    │   └ IntegerConstant
    │     └ 100
    ├ WhileStatement
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ Identifier
    │ │ │   └ b
    │ │ ├ >
    │ │ └ EntireVariable
    │ │   └ Identifier
    │ │     └ a
    │ └ StatementList
    │   └ AssignmentStatement
    │     ├ EntireVariable
    │     │ └ Identifier
    │     │   └ b
    │     └ AdditiveExpression
    │       ├ EntireVariable
    │       │ └ Identifier
    │       │   └ b
    │       ├ -
    │       └ ConstantVariable
    │         └ IntegerConstant
    │           └ 1
    ├ WhileStatement
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ Identifier
    │ │ │   └ c
    │ │ ├ >
    │ │ └ EntireVariable
    │ │   └ Identifier
    │ │     └ b
    │ └ StatementList
    │   └ AssignmentStatement
    │     ├ EntireVariable
    │     │ └ Identifier
    │     │   └ c
    │     └ AdditiveExpression
    │       ├ EntireVariable
    │       │ └ Identifier
    │       │   └ c
    │       ├ -
    │       └ ConstantVariable
    │         └ IntegerConstant
    │           └ 1
    ├ WhileStatement
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ Identifier
    │ │ │   └ d
    │ │ ├ >
    │ │ └ EntireVariable
    │ │   └ Identifier
    │ │     └ c
    │ └ StatementList
    │   └ AssignmentStatement
    │     ├ EntireVariable
    │     │ └ Identifier
    │     │   └ d
    │     └ AdditiveExpression
    │       ├ EntireVariable
    │       │ └ Identifier
    │       │   └ d
    │       ├ -
    │       └ ConstantVariable
    │         └ IntegerConstant
    │           └ 1
    └ ProcedureStatement
      ├ Identifier
      │ └ printint
      └ Arguments
        └ AdditiveExpression
          ├ EntireVariable
          │ └ Identifier
          │   └ a
          ├ +
          ├ EntireVariable
          │ └ Identifier
          │   └ b
          ├ +
          ├ EntireVariable
          │ └ Identifier
          │   └ c
          ├ +
          └ EntireVariable
            └ Identifier
              └ d


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
    │     └ 5
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ c
    │ └ ConstantVariable (integer)
    │   └ IntegerConstant (integer)
    │     └ 7
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ d
    │ └ ConstantVariable (integer)
    │   └ IntegerConstant (integer)
    │     └ 100
    ├ WhileStatement (void)
    │ ├ RelationalExpression (boolean)
    │ │ ├ EntireVariable (integer)
    │ │ │ └ Identifier
    │ │ │   └ b
    │ │ ├ >
    │ │ └ EntireVariable (integer)
    │ │   └ Identifier
    │ │     └ a
    │ └ StatementList
    │   └ AssignmentStatement (integer)
    │     ├ EntireVariable (integer)
    │     │ └ Identifier
    │     │   └ b
    │     └ AdditiveExpression (integer)
    │       ├ EntireVariable (integer)
    │       │ └ Identifier
    │       │   └ b
    │       ├ -
    │       └ ConstantVariable (integer)
    │         └ IntegerConstant (integer)
    │           └ 1
    ├ WhileStatement (void)
    │ ├ RelationalExpression (boolean)
    │ │ ├ EntireVariable (integer)
    │ │ │ └ Identifier
    │ │ │   └ c
    │ │ ├ >
    │ │ └ EntireVariable (integer)
    │ │   └ Identifier
    │ │     └ b
    │ └ StatementList
    │   └ AssignmentStatement (integer)
    │     ├ EntireVariable (integer)
    │     │ └ Identifier
    │     │   └ c
    │     └ AdditiveExpression (integer)
    │       ├ EntireVariable (integer)
    │       │ └ Identifier
    │       │   └ c
    │       ├ -
    │       └ ConstantVariable (integer)
    │         └ IntegerConstant (integer)
    │           └ 1
    ├ WhileStatement (void)
    │ ├ RelationalExpression (boolean)
    │ │ ├ EntireVariable (integer)
    │ │ │ └ Identifier
    │ │ │   └ d
    │ │ ├ >
    │ │ └ EntireVariable (integer)
    │ │   └ Identifier
    │ │     └ c
    │ └ StatementList
    │   └ AssignmentStatement (integer)
    │     ├ EntireVariable (integer)
    │     │ └ Identifier
    │     │   └ d
    │     └ AdditiveExpression (integer)
    │       ├ EntireVariable (integer)
    │       │ └ Identifier
    │       │   └ d
    │       ├ -
    │       └ ConstantVariable (integer)
    │         └ IntegerConstant (integer)
    │           └ 1
    └ ProcedureStatement (void)
      ├ Identifier
      │ └ printint
      └ Arguments
        └ AdditiveExpression (integer)
          ├ EntireVariable (integer)
          │ └ Identifier
          │   └ a
          ├ +
          ├ EntireVariable (integer)
          │ └ Identifier
          │   └ b
          ├ +
          ├ EntireVariable (integer)
          │ └ Identifier
          │   └ c
          ├ +
          └ EntireVariable (integer)
            └ Identifier
              └ d


======== BYTECODE ========
0:		 BEGIN_SCOPE 
1:		 DECLARE_LOCAL a
2:		 DECLARE_LOCAL b
3:		 DECLARE_LOCAL c
4:		 DECLARE_LOCAL d
5:		 DECLARE_LOCAL e
6:		 PUSH 3
7:		 ASSIGN a
8:		 PUSH 5
9:		 ASSIGN b
10:		 PUSH 7
11:		 ASSIGN c
12:		 PUSH 100
13:		 ASSIGN d
14:		 BEGIN_SCOPE 
15:		 PUSH b
16:		 PUSH a
17:		 COMPARE_GT 
18:		 JUMP_NEG 26
19:		 BEGIN_SCOPE 
20:		 PUSH b
21:		 PUSH 1
22:		 SUBTRACT 
23:		 ASSIGN b
24:		 JUMP 14
25:		 END_SCOPE 
26:		 END_SCOPE 
27:		 BEGIN_SCOPE 
28:		 PUSH c
29:		 PUSH b
30:		 COMPARE_GT 
31:		 JUMP_NEG 39
32:		 BEGIN_SCOPE 
33:		 PUSH c
34:		 PUSH 1
35:		 SUBTRACT 
36:		 ASSIGN c
37:		 JUMP 27
38:		 END_SCOPE 
39:		 END_SCOPE 
40:		 BEGIN_SCOPE 
41:		 PUSH d
42:		 PUSH c
43:		 COMPARE_GT 
44:		 JUMP_NEG 52
45:		 BEGIN_SCOPE 
46:		 PUSH d
47:		 PUSH 1
48:		 SUBTRACT 
49:		 ASSIGN d
50:		 JUMP 40
51:		 END_SCOPE 
52:		 END_SCOPE 
53:		 PUSH a
54:		 PUSH b
55:		 SUM 
56:		 PUSH b
57:		 PUSH c
58:		 SUM 
59:		 PUSH c
60:		 PUSH d
61:		 SUM 
62:		 PUSH printint
63:		 CALL 1
64:		 END_SCOPE 


======== PROGRAM RESULT ========
6.0
