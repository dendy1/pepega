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
6:		 ASSIGN b
7:		 ASSIGN a
8:		 PUSH a
9:		 PUSH b
10:		 DIVIDE 
11:		 ASSIGN div
12:		 PUSH div
13:		 RETURN 1
14:		 END_SCOPE 
15:		 PUSH 1
16:		 PUSH 2
17:		 PUSH div
18:		 CALL 2
19:		 ASSIGN x
20:		 PUSH 4
21:		 ASSIGN y
22:		 PUSH x
23:		 PUSH 10
24:		 PUSH 5
25:		 PUSH div
26:		 CALL 2
27:		 SUM 
28:		 ASSIGN x
29:		 PUSH x
30:		 PUSH 3
31:		 SUM 
32:		 ASSIGN x
33:		 PUSH x
34:		 PUSH printint
35:		 CALL 1
36:		 END_SCOPE 


======== PROGRAM RESULT ========
5.5
