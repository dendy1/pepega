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
    │ ├ if
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ Identifier
    │ │ │   └ ij
    │ │ ├ >
    │ │ └ ConstantVariable
    │ │   └ IntegerConstant
    │ │     └ 1
    │ ├ then
    │ ├ AssignmentStatement
    │ │ ├ EntireVariable
    │ │ │ └ Identifier
    │ │ │   └ op
    │ │ └ ConstantVariable
    │ │   └ IntegerConstant
    │ │     └ 1
    │ ├ else
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
    │ ├ if
    │ ├ RelationalExpression (boolean)
    │ │ ├ EntireVariable (integer)
    │ │ │ └ Identifier
    │ │ │   └ ij
    │ │ ├ >
    │ │ └ ConstantVariable (integer)
    │ │   └ IntegerConstant (integer)
    │ │     └ 1
    │ ├ then
    │ ├ AssignmentStatement (integer)
    │ │ ├ EntireVariable (integer)
    │ │ │ └ Identifier
    │ │ │   └ op
    │ │ └ ConstantVariable (integer)
    │ │   └ IntegerConstant (integer)
    │ │     └ 1
    │ ├ else
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
5:		 DECLARE_LOCAL mn
6:		 ASSIGN mn
7:		 PUSH ij
8:		 PUSH mn
9:		 SUM 
10:		 PUSH mn
11:		 PUSH op
12:		 SUM 
13:		 ASSIGN kl
14:		 PUSH kl
15:		 RETURN 1
16:		 END_SCOPE 
17:		 PUSH 45
18:		 ASSIGN ij
19:		 BEGIN_SCOPE 
20:		 PUSH ij
21:		 PUSH 1
22:		 COMPARE_GT 
23:		 JUMP_NEG 29
24:		 PUSH 1
25:		 ASSIGN op
26:		 JUMP 32
27:		 END_SCOPE 
28:		 BEGIN_SCOPE 
29:		 PUSH 2
30:		 ASSIGN op
31:		 END_SCOPE 
32:		 PUSH 55
33:		 PUSH kl
34:		 CALL 1
35:		 ASSIGN ij
36:		 PUSH ij
37:		 PUSH printint
38:		 CALL 1
39:		 END_SCOPE 


======== PROGRAM RESULT ========
56.0
