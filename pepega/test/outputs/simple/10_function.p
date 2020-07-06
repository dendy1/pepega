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
  │   │ └ x
  │   ├ Identifier
  │   │ └ y
  │   ├ Identifier
  │   │ └ z
  │   └ Type
  │     └ integer
  ├ SubprogramDeclarations
  │ └ SubprogramDeclaration
  │   ├ SubprogramHeader
  │   │ ├ Identifier
  │   │ │ └ div
  │   │ ├ ParametersList
  │   │ │ └ Parameters
  │   │ │   ├ Identifier
  │   │ │   │ └ a
  │   │ │   ├ Identifier
  │   │ │   │ └ b
  │   │ │   └ Type
  │   │ │     └ integer
  │   │ └ Type
  │   │   └ integer
  │   └ Block
  │     └ StatementList
  │       └ AssignmentStatement
  │         ├ EntireVariable
  │         │ └ Identifier
  │         │   └ div
  │         └ MultiplicativeExpression
  │           ├ EntireVariable
  │           │ └ Identifier
  │           │   └ a
  │           ├ /
  │           └ EntireVariable
  │             └ Identifier
  │               └ b
  └ StatementList
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ x
    │ └ ProcedureStatement
    │   ├ Identifier
    │   │ └ div
    │   └ Arguments
    │     ├ ConstantVariable
    │     │ └ IntegerConstant
    │     │   └ 1
    │     └ ConstantVariable
    │       └ IntegerConstant
    │         └ 2
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ y
    │ └ ConstantVariable
    │   └ IntegerConstant
    │     └ 4
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ x
    │ └ AdditiveExpression
    │   ├ EntireVariable
    │   │ └ Identifier
    │   │   └ x
    │   ├ +
    │   └ ProcedureStatement
    │     ├ Identifier
    │     │ └ div
    │     └ Arguments
    │       ├ ConstantVariable
    │       │ └ IntegerConstant
    │       │   └ 10
    │       └ ConstantVariable
    │         └ IntegerConstant
    │           └ 5
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ x
    │ └ AdditiveExpression
    │   ├ EntireVariable
    │   │ └ Identifier
    │   │   └ x
    │   ├ +
    │   └ ConstantVariable
    │     └ IntegerConstant
    │       └ 3
    └ ProcedureStatement
      ├ Identifier
      │ └ printint
      └ Arguments
        └ EntireVariable
          └ Identifier
            └ x


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
  │   │ └ x
  │   ├ Identifier
  │   │ └ y
  │   ├ Identifier
  │   │ └ z
  │   └ Type
  │     └ integer
  ├ SubprogramDeclarations
  │ └ SubprogramDeclaration
  │   ├ SubprogramHeader
  │   │ ├ Identifier
  │   │ │ └ div
  │   │ ├ ParametersList
  │   │ │ └ Parameters
  │   │ │   ├ Identifier
  │   │ │   │ └ a
  │   │ │   ├ Identifier
  │   │ │   │ └ b
  │   │ │   └ Type
  │   │ │     └ integer
  │   │ └ Type
  │   │   └ integer
  │   └ Block
  │     └ StatementList
  │       └ AssignmentStatement (integer)
  │         ├ EntireVariable (integer)
  │         │ └ Identifier
  │         │   └ div
  │         └ MultiplicativeExpression (integer)
  │           ├ EntireVariable (integer)
  │           │ └ Identifier
  │           │   └ a
  │           ├ /
  │           └ EntireVariable (integer)
  │             └ Identifier
  │               └ b
  └ StatementList
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ x
    │ └ ProcedureStatement (integer)
    │   ├ Identifier
    │   │ └ div
    │   └ Arguments
    │     ├ ConstantVariable (integer)
    │     │ └ IntegerConstant (integer)
    │     │   └ 1
    │     └ ConstantVariable (integer)
    │       └ IntegerConstant (integer)
    │         └ 2
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ y
    │ └ ConstantVariable (integer)
    │   └ IntegerConstant (integer)
    │     └ 4
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ x
    │ └ AdditiveExpression (integer)
    │   ├ EntireVariable (integer)
    │   │ └ Identifier
    │   │   └ x
    │   ├ +
    │   └ ProcedureStatement (integer)
    │     ├ Identifier
    │     │ └ div
    │     └ Arguments
    │       ├ ConstantVariable (integer)
    │       │ └ IntegerConstant (integer)
    │       │   └ 10
    │       └ ConstantVariable (integer)
    │         └ IntegerConstant (integer)
    │           └ 5
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ x
    │ └ AdditiveExpression (integer)
    │   ├ EntireVariable (integer)
    │   │ └ Identifier
    │   │   └ x
    │   ├ +
    │   └ ConstantVariable (integer)
    │     └ IntegerConstant (integer)
    │       └ 3
    └ ProcedureStatement (void)
      ├ Identifier
      │ └ printint
      └ Arguments
        └ EntireVariable (integer)
          └ Identifier
            └ x


======== BYTECODE ========
0:		 BEGIN_SCOPE 
1:		 DECLARE_LOCAL x
2:		 DECLARE_LOCAL y
3:		 DECLARE_LOCAL z
4:		 FUNCTION div
5:		 BEGIN_SCOPE 
6:		 DECLARE_LOCAL b
7:		 ASSIGN b
8:		 DECLARE_LOCAL a
9:		 ASSIGN a
10:		 PUSH a
11:		 PUSH b
12:		 DIVIDE 
13:		 ASSIGN div
14:		 PUSH div
15:		 RETURN 1
16:		 END_SCOPE 
17:		 PUSH 1
18:		 PUSH 2
19:		 PUSH div
20:		 CALL 2
21:		 ASSIGN x
22:		 PUSH 4
23:		 ASSIGN y
24:		 PUSH x
25:		 PUSH 10
26:		 PUSH 5
27:		 PUSH div
28:		 CALL 2
29:		 SUM 
30:		 ASSIGN x
31:		 PUSH x
32:		 PUSH 3
33:		 SUM 
34:		 ASSIGN x
35:		 PUSH x
36:		 PUSH printint
37:		 CALL 1
38:		 END_SCOPE 


======== PROGRAM RESULT ========
5.5
