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
  │   │ └ arr
  │   └ Type
  │     └ ArrayType
  │       ├ IndexRange
  │       │ ├ IntegerConstant
  │       │ │ └ 1
  │       │ └ IntegerConstant
  │       │   └ 10
  │       └ Type
  │         └ integer
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ a
  │   ├ Identifier
  │   │ └ b
  │   └ Type
  │     └ integer
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ c
  │   ├ Identifier
  │   │ └ d
  │   └ Type
  │     └ real
  └ StatementList
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ a
    │ └ ConstantVariable
    │   └ IntegerConstant
    │     └ 10
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ b
    │ └ ConstantVariable
    │   └ IntegerConstant
    │     └ 15
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ c
    │ └ ConstantVariable
    │   └ RealConstant
    │     └ 5.4
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ d
    │ └ ConstantVariable
    │   └ RealConstant
    │     └ 3.7
    └ ProcedureStatement
      ├ Identifier
      │ └ printreal
      └ Arguments
        └ AdditiveExpression
          ├ MultiplicativeExpression
          │ ├ ConstantVariable
          │ │ └ RealConstant
          │ │   └ 3.5
          │ ├ *
          │ ├ ConstantVariable
          │ │ └ RealConstant
          │ │   └ 4.7
          │ ├ *
          │ ├ AdditiveExpression
          │ │ ├ ConstantVariable
          │ │ │ └ IntegerConstant
          │ │ │   └ 3
          │ │ ├ +
          │ │ └ ConstantVariable
          │ │   └ IntegerConstant
          │ │     └ 7
          │ ├ *
          │ └ ConstantVariable
          │   └ IntegerConstant
          │     └ 4
          ├ +
          ├ AdditiveExpression
          │ ├ MultiplicativeExpression
          │ │ ├ ConstantVariable
          │ │ │ └ RealConstant
          │ │ │   └ 9.3
          │ │ ├ /
          │ │ └ ConstantVariable
          │ │   └ RealConstant
          │ │     └ 3.1
          │ ├ +
          │ └ MultiplicativeExpression
          │   ├ EntireVariable
          │   │ └ Identifier
          │   │   └ a
          │   ├ *
          │   ├ EntireVariable
          │   │ └ Identifier
          │   │   └ c
          │   ├ *
          │   └ MultiplicativeExpression
          │     ├ EntireVariable
          │     │ └ Identifier
          │     │   └ c
          │     ├ /
          │     └ EntireVariable
          │       └ Identifier
          │         └ d
          ├ -
          ├ MultiplicativeExpression
          │ ├ ConstantVariable
          │ │ └ RealConstant
          │ │   └ 0.4
          │ ├ *
          │ └ EntireVariable
          │   └ Identifier
          │     └ b
          ├ +
          └ MultiplicativeExpression
            ├ EntireVariable
            │ └ Identifier
            │   └ c
            ├ /
            ├ EntireVariable
            │ └ Identifier
            │   └ d
            ├ *
            ├ EntireVariable
            │ └ Identifier
            │   └ a
            ├ *
            └ EntireVariable
              └ Identifier
                └ b


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
  │   │ └ arr
  │   └ Type
  │     └ ArrayType
  │       ├ IndexRange
  │       │ ├ IntegerConstant
  │       │ │ └ 1
  │       │ └ IntegerConstant
  │       │   └ 10
  │       └ Type
  │         └ integer
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ a
  │   ├ Identifier
  │   │ └ b
  │   └ Type
  │     └ integer
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ c
  │   ├ Identifier
  │   │ └ d
  │   └ Type
  │     └ real
  └ StatementList
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ a
    │ └ ConstantVariable (integer)
    │   └ IntegerConstant (integer)
    │     └ 10
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ b
    │ └ ConstantVariable (integer)
    │   └ IntegerConstant (integer)
    │     └ 15
    ├ AssignmentStatement (real)
    │ ├ EntireVariable (real)
    │ │ └ Identifier
    │ │   └ c
    │ └ ConstantVariable (real)
    │   └ RealConstant (real)
    │     └ 5.4
    ├ AssignmentStatement (real)
    │ ├ EntireVariable (real)
    │ │ └ Identifier
    │ │   └ d
    │ └ ConstantVariable (real)
    │   └ RealConstant (real)
    │     └ 3.7
    └ ProcedureStatement (void)
      ├ Identifier
      │ └ printreal
      └ Arguments
        └ AdditiveExpression (real)
          ├ MultiplicativeExpression (real)
          │ ├ ConstantVariable (real)
          │ │ └ RealConstant (real)
          │ │   └ 3.5
          │ ├ *
          │ ├ ConstantVariable (real)
          │ │ └ RealConstant (real)
          │ │   └ 4.7
          │ ├ *
          │ ├ AdditiveExpression (integer)
          │ │ ├ ConstantVariable (integer)
          │ │ │ └ IntegerConstant (integer)
          │ │ │   └ 3
          │ │ ├ +
          │ │ └ ConstantVariable (integer)
          │ │   └ IntegerConstant (integer)
          │ │     └ 7
          │ ├ *
          │ └ ConstantVariable (integer)
          │   └ IntegerConstant (integer)
          │     └ 4
          ├ +
          ├ AdditiveExpression (real)
          │ ├ MultiplicativeExpression (real)
          │ │ ├ ConstantVariable (real)
          │ │ │ └ RealConstant (real)
          │ │ │   └ 9.3
          │ │ ├ /
          │ │ └ ConstantVariable (real)
          │ │   └ RealConstant (real)
          │ │     └ 3.1
          │ ├ +
          │ └ MultiplicativeExpression (real)
          │   ├ EntireVariable (converted to real)
          │   │ └ Identifier
          │   │   └ a
          │   ├ *
          │   ├ EntireVariable (real)
          │   │ └ Identifier
          │   │   └ c
          │   ├ *
          │   └ MultiplicativeExpression (real)
          │     ├ EntireVariable (real)
          │     │ └ Identifier
          │     │   └ c
          │     ├ /
          │     └ EntireVariable (real)
          │       └ Identifier
          │         └ d
          ├ -
          ├ MultiplicativeExpression (real)
          │ ├ ConstantVariable (real)
          │ │ └ RealConstant (real)
          │ │   └ 0.4
          │ ├ *
          │ └ EntireVariable (converted to real)
          │   └ Identifier
          │     └ b
          ├ +
          └ MultiplicativeExpression (real)
            ├ EntireVariable (real)
            │ └ Identifier
            │   └ c
            ├ /
            ├ EntireVariable (real)
            │ └ Identifier
            │   └ d
            ├ *
            ├ EntireVariable (integer)
            │ └ Identifier
            │   └ a
            ├ *
            └ EntireVariable (integer)
              └ Identifier
                └ b


======== BYTECODE ========
0:		 BEGIN_SCOPE 
1:		 DECLARE_LOCAL arr
2:		 DECLARE_LOCAL a
3:		 DECLARE_LOCAL b
4:		 DECLARE_LOCAL c
5:		 DECLARE_LOCAL d
6:		 PUSH 10
7:		 ASSIGN a
8:		 PUSH 15
9:		 ASSIGN b
10:		 PUSH 5.4
11:		 ASSIGN c
12:		 PUSH 3.7
13:		 ASSIGN d
14:		 PUSH 3.5
15:		 PUSH 4.7
16:		 MULTIPLY 
17:		 PUSH 4.7
18:		 PUSH 3
19:		 PUSH 7
20:		 SUM 
21:		 MULTIPLY 
22:		 PUSH 3
23:		 PUSH 7
24:		 SUM 
25:		 PUSH 4
26:		 MULTIPLY 
27:		 PUSH 9.3
28:		 PUSH 3.1
29:		 DIVIDE 
30:		 PUSH a
31:		 PUSH c
32:		 MULTIPLY 
33:		 PUSH c
34:		 PUSH c
35:		 PUSH d
36:		 DIVIDE 
37:		 MULTIPLY 
38:		 SUM 
39:		 SUM 
40:		 PUSH 9.3
41:		 PUSH 3.1
42:		 DIVIDE 
43:		 PUSH a
44:		 PUSH c
45:		 MULTIPLY 
46:		 PUSH c
47:		 PUSH c
48:		 PUSH d
49:		 DIVIDE 
50:		 MULTIPLY 
51:		 SUM 
52:		 PUSH 0.4
53:		 PUSH b
54:		 MULTIPLY 
55:		 SUBTRACT 
56:		 PUSH 0.4
57:		 PUSH b
58:		 MULTIPLY 
59:		 PUSH c
60:		 PUSH d
61:		 DIVIDE 
62:		 PUSH d
63:		 PUSH a
64:		 MULTIPLY 
65:		 PUSH a
66:		 PUSH b
67:		 MULTIPLY 
68:		 SUM 
69:		 PUSH printreal
70:		 CALL 1
71:		 END_SCOPE 


======== PROGRAM RESULT ========
187.0
