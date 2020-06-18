======== AST ========
Program
├ Identifier
│ └ ab
├ Identifier
│ └ cd
├ Identifier
│ └ ef
├ Identifier
│ └ gh
└ Block
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ ij
  │   ├ Identifier
  │   │ └ op
  │   └ Type
  │     └ integer
  ├ SubprogramDeclarations
  │ └ SubprogramDeclaration
  │   ├ SubprogramHeader
  │   │ ├ Identifier
  │   │ │ └ kl
  │   │ ├ ParametersList
  │   │ │ └ Parameters
  │   │ │   ├ Identifier
  │   │ │   │ └ mn
  │   │ │   └ Type
  │   │ │     └ integer
  │   │ └ Type
  │   │   └ integer
  │   └ Block
  │     └ StatementList
  │       └ AssignmentStatement
  │         ├ EntireVariable
  │         │ └ Identifier
  │         │   └ kl
  │         └ AdditiveExpression
  │           ├ EntireVariable
  │           │ └ Identifier
  │           │   └ ij
  │           ├ +
  │           ├ EntireVariable
  │           │ └ Identifier
  │           │   └ mn
  │           ├ +
  │           └ EntireVariable
  │             └ Identifier
  │               └ op
  └ StatementList
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ ij
    │ └ ConstantVariable
    │   └ IntegerConstant
    │     └ 45
    ├ IfStatement
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ Identifier
    │ │ │   └ ij
    │ │ ├ >
    │ │ └ ConstantVariable
    │ │   └ IntegerConstant
    │ │     └ 1
    │ ├ AssignmentStatement
    │ │ ├ EntireVariable
    │ │ │ └ Identifier
    │ │ │   └ op
    │ │ └ ConstantVariable
    │ │   └ IntegerConstant
    │ │     └ 1
    │ └ AssignmentStatement
    │   ├ EntireVariable
    │   │ └ Identifier
    │   │   └ op
    │   └ ConstantVariable
    │     └ IntegerConstant
    │       └ 2
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ ij
    │ └ ProcedureStatement
    │   ├ Identifier
    │   │ └ kl
    │   └ Arguments
    │     └ ConstantVariable
    │       └ IntegerConstant
    │         └ 55
    └ ProcedureStatement
      ├ Identifier
      │ └ printint
      └ Arguments
        └ EntireVariable
          └ Identifier
            └ ij


======== AST AFTER SEMANTIC ANALYSIS ========
Program
├ Identifier
│ └ ab
├ Identifier
│ └ cd
├ Identifier
│ └ ef
├ Identifier
│ └ gh
└ Block
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ ij
  │   ├ Identifier
  │   │ └ op
  │   └ Type
  │     └ integer
  ├ SubprogramDeclarations
  │ └ SubprogramDeclaration
  │   ├ SubprogramHeader
  │   │ ├ Identifier
  │   │ │ └ kl
  │   │ ├ ParametersList
  │   │ │ └ Parameters
  │   │ │   ├ Identifier
  │   │ │   │ └ mn
  │   │ │   └ Type
  │   │ │     └ integer
  │   │ └ Type
  │   │   └ integer
  │   └ Block
  │     └ StatementList
  │       └ AssignmentStatement (integer)
  │         ├ EntireVariable (integer)
  │         │ └ Identifier
  │         │   └ kl
  │         └ AdditiveExpression (integer)
  │           ├ EntireVariable (integer)
  │           │ └ Identifier
  │           │   └ ij
  │           ├ +
  │           ├ EntireVariable (integer)
  │           │ └ Identifier
  │           │   └ mn
  │           ├ +
  │           └ EntireVariable (integer)
  │             └ Identifier
  │               └ op
  └ StatementList
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ ij
    │ └ ConstantVariable (integer)
    │   └ IntegerConstant (integer)
    │     └ 45
    ├ IfStatement (void)
    │ ├ RelationalExpression (boolean)
    │ │ ├ EntireVariable (integer)
    │ │ │ └ Identifier
    │ │ │   └ ij
    │ │ ├ >
    │ │ └ ConstantVariable (integer)
    │ │   └ IntegerConstant (integer)
    │ │     └ 1
    │ ├ AssignmentStatement (integer)
    │ │ ├ EntireVariable (integer)
    │ │ │ └ Identifier
    │ │ │   └ op
    │ │ └ ConstantVariable (integer)
    │ │   └ IntegerConstant (integer)
    │ │     └ 1
    │ └ AssignmentStatement (integer)
    │   ├ EntireVariable (integer)
    │   │ └ Identifier
    │   │   └ op
    │   └ ConstantVariable (integer)
    │     └ IntegerConstant (integer)
    │       └ 2
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ ij
    │ └ ProcedureStatement (integer)
    │   ├ Identifier
    │   │ └ kl
    │   └ Arguments
    │     └ ConstantVariable (integer)
    │       └ IntegerConstant (integer)
    │         └ 55
    └ ProcedureStatement (void)
      ├ Identifier
      │ └ printint
      └ Arguments
        └ EntireVariable (integer)
          └ Identifier
            └ ij


======== BYTECODE ========
0:		 BEGIN_SCOPE 
1:		 DECLARE_LOCAL ij
2:		 DECLARE_LOCAL op
3:		 FUNCTION kl
4:		 BEGIN_SCOPE 
5:		 ASSIGN mn
6:		 PUSH ij
7:		 PUSH mn
8:		 SUM 
9:		 PUSH mn
10:		 PUSH op
11:		 SUM 
12:		 ASSIGN kl
13:		 PUSH kl
14:		 RETURN 1
15:		 END_SCOPE 
16:		 PUSH 45
17:		 ASSIGN ij
18:		 BEGIN_SCOPE 
19:		 PUSH ij
20:		 PUSH 1
21:		 COMPARE_GT 
22:		 JUMP_NEG 28
23:		 PUSH 1
24:		 ASSIGN op
25:		 JUMP 31
26:		 END_SCOPE 
27:		 BEGIN_SCOPE 
28:		 PUSH 2
29:		 ASSIGN op
30:		 END_SCOPE 
31:		 PUSH 55
32:		 PUSH kl
33:		 CALL 1
34:		 ASSIGN ij
35:		 PUSH ij
36:		 PUSH printint
37:		 CALL 1
38:		 END_SCOPE 


======== PROGRAM RESULT ========
56.0
