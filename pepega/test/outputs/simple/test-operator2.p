======== AST ========
Program
├ Identifier
│ └ foo
├ Identifier
│ └ input
├ Identifier
│ └ output
├ Identifier
│ └ error
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
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ d
  │   ├ Identifier
  │   │ └ e
  │   └ Type
  │     └ ArrayType
  │       ├ IndexRange
  │       │ ├ IntegerConstant
  │       │ │ └ 1
  │       │ └ IntegerConstant
  │       │   └ 10
  │       └ Type
  │         └ integer
  └ StatementList
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ a
    │ └ ConstantVariable
    │   └ IntegerConstant
    │     └ 6
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ b
    │ └ MultiplicativeExpression
    │   ├ EntireVariable
    │   │ └ Identifier
    │   │   └ a
    │   ├ *
    │   └ ConstantVariable
    │     └ IntegerConstant
    │       └ 15
    ├ IfStatement
    │ ├ if
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ Identifier
    │ │ │   └ b
    │ │ ├ >
    │ │ └ EntireVariable
    │ │   └ Identifier
    │ │     └ a
    │ ├ then
    │ ├ AssignmentStatement
    │ │ ├ EntireVariable
    │ │ │ └ Identifier
    │ │ │   └ a
    │ │ └ MultiplicativeExpression
    │ │   ├ EntireVariable
    │ │   │ └ Identifier
    │ │   │   └ a
    │ │   ├ *
    │ │   └ ConstantVariable
    │ │     └ IntegerConstant
    │ │       └ 2
    │ ├ else
    │ └ AssignmentStatement
    │   ├ EntireVariable
    │   │ └ Identifier
    │   │   └ a
    │   └ MultiplicativeExpression
    │     ├ EntireVariable
    │     │ └ Identifier
    │     │   └ a
    │     ├ *
    │     └ ConstantVariable
    │       └ IntegerConstant
    │         └ 3
    ├ IfStatement
    │ ├ if
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ Identifier
    │ │ │   └ b
    │ │ ├ >
    │ │ └ EntireVariable
    │ │   └ Identifier
    │ │     └ a
    │ ├ then
    │ ├ IfStatement
    │ │ ├ if
    │ │ ├ RelationalExpression
    │ │ │ ├ EntireVariable
    │ │ │ │ └ Identifier
    │ │ │ │   └ b
    │ │ │ ├ <
    │ │ │ └ AdditiveExpression
    │ │ │   ├ EntireVariable
    │ │ │   │ └ Identifier
    │ │ │   │   └ a
    │ │ │   ├ -
    │ │ │   └ ConstantVariable
    │ │ │     └ IntegerConstant
    │ │ │       └ 2
    │ │ ├ then
    │ │ ├ AssignmentStatement
    │ │ │ ├ EntireVariable
    │ │ │ │ └ Identifier
    │ │ │ │   └ a
    │ │ │ └ MultiplicativeExpression
    │ │ │   ├ EntireVariable
    │ │ │   │ └ Identifier
    │ │ │   │   └ a
    │ │ │   ├ *
    │ │ │   └ ConstantVariable
    │ │ │     └ IntegerConstant
    │ │ │       └ 5
    │ │ ├ else
    │ │ └ AssignmentStatement
    │ │   ├ EntireVariable
    │ │   │ └ Identifier
    │ │   │   └ a
    │ │   └ MultiplicativeExpression
    │ │     ├ EntireVariable
    │ │     │ └ Identifier
    │ │     │   └ a
    │ │     ├ *
    │ │     └ ConstantVariable
    │ │       └ IntegerConstant
    │ │         └ 7
    │ ├ else
    │ └ AssignmentStatement
    │   ├ EntireVariable
    │   │ └ Identifier
    │   │   └ a
    │   └ MultiplicativeExpression
    │     ├ EntireVariable
    │     │ └ Identifier
    │     │   └ a
    │     ├ /
    │     ├ ConstantVariable
    │     │ └ IntegerConstant
    │     │   └ 11
    │     ├ *
    │     └ ConstantVariable
    │       └ IntegerConstant
    │         └ 10
    ├ IfStatement
    │ ├ if
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ Identifier
    │ │ │   └ b
    │ │ ├ >
    │ │ └ EntireVariable
    │ │   └ Identifier
    │ │     └ a
    │ ├ then
    │ ├ AssignmentStatement
    │ │ ├ EntireVariable
    │ │ │ └ Identifier
    │ │ │   └ a
    │ │ └ MultiplicativeExpression
    │ │   ├ EntireVariable
    │ │   │ └ Identifier
    │ │   │   └ a
    │ │   ├ *
    │ │   └ ConstantVariable
    │ │     └ IntegerConstant
    │ │       └ 2
    │ ├ else
    │ └ IfStatement
    │   ├ if
    │   ├ RelationalExpression
    │   │ ├ EntireVariable
    │   │ │ └ Identifier
    │   │ │   └ b
    │   │ ├ >
    │   │ └ AdditiveExpression
    │   │   ├ ConstantVariable
    │   │   │ └ IntegerConstant
    │   │   │   └ 5
    │   │   ├ +
    │   │   └ EntireVariable
    │   │     └ Identifier
    │   │       └ a
    │   ├ then
    │   ├ AssignmentStatement
    │   │ ├ EntireVariable
    │   │ │ └ Identifier
    │   │ │   └ a
    │   │ └ AdditiveExpression
    │   │   ├ ConstantVariable
    │   │   │ └ IntegerConstant
    │   │   │   └ 23
    │   │   ├ -
    │   │   └ EntireVariable
    │   │     └ Identifier
    │   │       └ a
    │   ├ else
    │   └ AssignmentStatement
    │     ├ EntireVariable
    │     │ └ Identifier
    │     │   └ a
    │     └ MultiplicativeExpression
    │       ├ ConstantVariable
    │       │ └ IntegerConstant
    │       │   └ 948
    │       ├ /
    │       └ EntireVariable
    │         └ Identifier
    │           └ b
    ├ WhileStatement
    │ ├ while
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ Identifier
    │ │ │   └ b
    │ │ ├ >
    │ │ └ EntireVariable
    │ │   └ Identifier
    │ │     └ a
    │ ├ do
    │ └ AssignmentStatement
    │   ├ EntireVariable
    │   │ └ Identifier
    │   │   └ a
    │   └ MultiplicativeExpression
    │     ├ EntireVariable
    │     │ └ Identifier
    │     │   └ a
    │     ├ *
    │     └ ConstantVariable
    │       └ IntegerConstant
    │         └ 7
    ├ WhileStatement
    │ ├ while
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ Identifier
    │ │ │   └ b
    │ │ ├ >
    │ │ └ EntireVariable
    │ │   └ Identifier
    │ │     └ a
    │ ├ do
    │ └ StatementList
    │   ├ AssignmentStatement
    │   │ ├ EntireVariable
    │   │ │ └ Identifier
    │   │ │   └ b
    │   │ └ AdditiveExpression
    │   │   ├ EntireVariable
    │   │   │ └ Identifier
    │   │   │   └ b
    │   │   ├ +
    │   │   └ ConstantVariable
    │   │     └ IntegerConstant
    │   │       └ 3
    │   └ AssignmentStatement
    │     ├ EntireVariable
    │     │ └ Identifier
    │     │   └ a
    │     └ MultiplicativeExpression
    │       ├ EntireVariable
    │       │ └ Identifier
    │       │   └ a
    │       ├ *
    │       └ ConstantVariable
    │         └ IntegerConstant
    │           └ 7
    └ WhileStatement
      ├ while
      ├ RelationalExpression
      │ ├ EntireVariable
      │ │ └ Identifier
      │ │   └ b
      │ ├ >
      │ └ EntireVariable
      │   └ Identifier
      │     └ a
      ├ do
      └ WhileStatement
        ├ while
        ├ RelationalExpression
        │ ├ EntireVariable
        │ │ └ Identifier
        │ │   └ c
        │ ├ >
        │ └ AdditiveExpression
        │   ├ EntireVariable
        │   │ └ Identifier
        │   │   └ a
        │   ├ +
        │   └ EntireVariable
        │     └ Identifier
        │       └ b
        ├ do
        └ StatementList
          ├ AssignmentStatement
          │ ├ EntireVariable
          │ │ └ Identifier
          │ │   └ b
          │ └ AdditiveExpression
          │   ├ EntireVariable
          │   │ └ Identifier
          │   │   └ b
          │   ├ +
          │   └ ConstantVariable
          │     └ IntegerConstant
          │       └ 3
          └ AssignmentStatement
            ├ EntireVariable
            │ └ Identifier
            │   └ a
            └ MultiplicativeExpression
              ├ EntireVariable
              │ └ Identifier
              │   └ a
              ├ *
              └ ConstantVariable
                └ IntegerConstant
                  └ 7


======== AST AFTER SEMANTIC ANALYSIS ========
Program
├ Identifier
│ └ foo
├ Identifier
│ └ input
├ Identifier
│ └ output
├ Identifier
│ └ error
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
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ d
  │   ├ Identifier
  │   │ └ e
  │   └ Type
  │     └ ArrayType
  │       ├ IndexRange
  │       │ ├ IntegerConstant
  │       │ │ └ 1
  │       │ └ IntegerConstant
  │       │   └ 10
  │       └ Type
  │         └ integer
  └ StatementList
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ a
    │ └ ConstantVariable (integer)
    │   └ IntegerConstant (integer)
    │     └ 6
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ b
    │ └ MultiplicativeExpression (integer)
    │   ├ EntireVariable (integer)
    │   │ └ Identifier
    │   │   └ a
    │   ├ *
    │   └ ConstantVariable (integer)
    │     └ IntegerConstant (integer)
    │       └ 15
    ├ IfStatement (void)
    │ ├ if
    │ ├ RelationalExpression (boolean)
    │ │ ├ EntireVariable (integer)
    │ │ │ └ Identifier
    │ │ │   └ b
    │ │ ├ >
    │ │ └ EntireVariable (integer)
    │ │   └ Identifier
    │ │     └ a
    │ ├ then
    │ ├ AssignmentStatement (integer)
    │ │ ├ EntireVariable (integer)
    │ │ │ └ Identifier
    │ │ │   └ a
    │ │ └ MultiplicativeExpression (integer)
    │ │   ├ EntireVariable (integer)
    │ │   │ └ Identifier
    │ │   │   └ a
    │ │   ├ *
    │ │   └ ConstantVariable (integer)
    │ │     └ IntegerConstant (integer)
    │ │       └ 2
    │ ├ else
    │ └ AssignmentStatement (integer)
    │   ├ EntireVariable (integer)
    │   │ └ Identifier
    │   │   └ a
    │   └ MultiplicativeExpression (integer)
    │     ├ EntireVariable (integer)
    │     │ └ Identifier
    │     │   └ a
    │     ├ *
    │     └ ConstantVariable (integer)
    │       └ IntegerConstant (integer)
    │         └ 3
    ├ IfStatement (void)
    │ ├ if
    │ ├ RelationalExpression (boolean)
    │ │ ├ EntireVariable (integer)
    │ │ │ └ Identifier
    │ │ │   └ b
    │ │ ├ >
    │ │ └ EntireVariable (integer)
    │ │   └ Identifier
    │ │     └ a
    │ ├ then
    │ ├ IfStatement (void)
    │ │ ├ if
    │ │ ├ RelationalExpression (boolean)
    │ │ │ ├ EntireVariable (integer)
    │ │ │ │ └ Identifier
    │ │ │ │   └ b
    │ │ │ ├ <
    │ │ │ └ AdditiveExpression (integer)
    │ │ │   ├ EntireVariable (integer)
    │ │ │   │ └ Identifier
    │ │ │   │   └ a
    │ │ │   ├ -
    │ │ │   └ ConstantVariable (integer)
    │ │ │     └ IntegerConstant (integer)
    │ │ │       └ 2
    │ │ ├ then
    │ │ ├ AssignmentStatement (integer)
    │ │ │ ├ EntireVariable (integer)
    │ │ │ │ └ Identifier
    │ │ │ │   └ a
    │ │ │ └ MultiplicativeExpression (integer)
    │ │ │   ├ EntireVariable (integer)
    │ │ │   │ └ Identifier
    │ │ │   │   └ a
    │ │ │   ├ *
    │ │ │   └ ConstantVariable (integer)
    │ │ │     └ IntegerConstant (integer)
    │ │ │       └ 5
    │ │ ├ else
    │ │ └ AssignmentStatement (integer)
    │ │   ├ EntireVariable (integer)
    │ │   │ └ Identifier
    │ │   │   └ a
    │ │   └ MultiplicativeExpression (integer)
    │ │     ├ EntireVariable (integer)
    │ │     │ └ Identifier
    │ │     │   └ a
    │ │     ├ *
    │ │     └ ConstantVariable (integer)
    │ │       └ IntegerConstant (integer)
    │ │         └ 7
    │ ├ else
    │ └ AssignmentStatement (integer)
    │   ├ EntireVariable (integer)
    │   │ └ Identifier
    │   │   └ a
    │   └ MultiplicativeExpression (integer)
    │     ├ EntireVariable (integer)
    │     │ └ Identifier
    │     │   └ a
    │     ├ /
    │     ├ ConstantVariable (integer)
    │     │ └ IntegerConstant (integer)
    │     │   └ 11
    │     ├ *
    │     └ ConstantVariable (integer)
    │       └ IntegerConstant (integer)
    │         └ 10
    ├ IfStatement (void)
    │ ├ if
    │ ├ RelationalExpression (boolean)
    │ │ ├ EntireVariable (integer)
    │ │ │ └ Identifier
    │ │ │   └ b
    │ │ ├ >
    │ │ └ EntireVariable (integer)
    │ │   └ Identifier
    │ │     └ a
    │ ├ then
    │ ├ AssignmentStatement (integer)
    │ │ ├ EntireVariable (integer)
    │ │ │ └ Identifier
    │ │ │   └ a
    │ │ └ MultiplicativeExpression (integer)
    │ │   ├ EntireVariable (integer)
    │ │   │ └ Identifier
    │ │   │   └ a
    │ │   ├ *
    │ │   └ ConstantVariable (integer)
    │ │     └ IntegerConstant (integer)
    │ │       └ 2
    │ ├ else
    │ └ IfStatement (void)
    │   ├ if
    │   ├ RelationalExpression (boolean)
    │   │ ├ EntireVariable (integer)
    │   │ │ └ Identifier
    │   │ │   └ b
    │   │ ├ >
    │   │ └ AdditiveExpression (integer)
    │   │   ├ ConstantVariable (integer)
    │   │   │ └ IntegerConstant (integer)
    │   │   │   └ 5
    │   │   ├ +
    │   │   └ EntireVariable (integer)
    │   │     └ Identifier
    │   │       └ a
    │   ├ then
    │   ├ AssignmentStatement (integer)
    │   │ ├ EntireVariable (integer)
    │   │ │ └ Identifier
    │   │ │   └ a
    │   │ └ AdditiveExpression (integer)
    │   │   ├ ConstantVariable (integer)
    │   │   │ └ IntegerConstant (integer)
    │   │   │   └ 23
    │   │   ├ -
    │   │   └ EntireVariable (integer)
    │   │     └ Identifier
    │   │       └ a
    │   ├ else
    │   └ AssignmentStatement (integer)
    │     ├ EntireVariable (integer)
    │     │ └ Identifier
    │     │   └ a
    │     └ MultiplicativeExpression (integer)
    │       ├ ConstantVariable (integer)
    │       │ └ IntegerConstant (integer)
    │       │   └ 948
    │       ├ /
    │       └ EntireVariable (integer)
    │         └ Identifier
    │           └ b
    ├ WhileStatement (void)
    │ ├ while
    │ ├ RelationalExpression (boolean)
    │ │ ├ EntireVariable (integer)
    │ │ │ └ Identifier
    │ │ │   └ b
    │ │ ├ >
    │ │ └ EntireVariable (integer)
    │ │   └ Identifier
    │ │     └ a
    │ ├ do
    │ └ AssignmentStatement
    │   ├ EntireVariable
    │   │ └ Identifier
    │   │   └ a
    │   └ MultiplicativeExpression
    │     ├ EntireVariable
    │     │ └ Identifier
    │     │   └ a
    │     ├ *
    │     └ ConstantVariable
    │       └ IntegerConstant
    │         └ 7
    ├ WhileStatement (void)
    │ ├ while
    │ ├ RelationalExpression (boolean)
    │ │ ├ EntireVariable (integer)
    │ │ │ └ Identifier
    │ │ │   └ b
    │ │ ├ >
    │ │ └ EntireVariable (integer)
    │ │   └ Identifier
    │ │     └ a
    │ ├ do
    │ └ StatementList
    │   ├ AssignmentStatement
    │   │ ├ EntireVariable
    │   │ │ └ Identifier
    │   │ │   └ b
    │   │ └ AdditiveExpression
    │   │   ├ EntireVariable
    │   │   │ └ Identifier
    │   │   │   └ b
    │   │   ├ +
    │   │   └ ConstantVariable
    │   │     └ IntegerConstant
    │   │       └ 3
    │   └ AssignmentStatement
    │     ├ EntireVariable
    │     │ └ Identifier
    │     │   └ a
    │     └ MultiplicativeExpression
    │       ├ EntireVariable
    │       │ └ Identifier
    │       │   └ a
    │       ├ *
    │       └ ConstantVariable
    │         └ IntegerConstant
    │           └ 7
    └ WhileStatement (void)
      ├ while
      ├ RelationalExpression (boolean)
      │ ├ EntireVariable (integer)
      │ │ └ Identifier
      │ │   └ b
      │ ├ >
      │ └ EntireVariable (integer)
      │   └ Identifier
      │     └ a
      ├ do
      └ WhileStatement
        ├ while
        ├ RelationalExpression
        │ ├ EntireVariable
        │ │ └ Identifier
        │ │   └ c
        │ ├ >
        │ └ AdditiveExpression
        │   ├ EntireVariable
        │   │ └ Identifier
        │   │   └ a
        │   ├ +
        │   └ EntireVariable
        │     └ Identifier
        │       └ b
        ├ do
        └ StatementList
          ├ AssignmentStatement
          │ ├ EntireVariable
          │ │ └ Identifier
          │ │   └ b
          │ └ AdditiveExpression
          │   ├ EntireVariable
          │   │ └ Identifier
          │   │   └ b
          │   ├ +
          │   └ ConstantVariable
          │     └ IntegerConstant
          │       └ 3
          └ AssignmentStatement
            ├ EntireVariable
            │ └ Identifier
            │   └ a
            └ MultiplicativeExpression
              ├ EntireVariable
              │ └ Identifier
              │   └ a
              ├ *
              └ ConstantVariable
                └ IntegerConstant
                  └ 7


======== BYTECODE ========
0:		 BEGIN_SCOPE 
1:		 DECLARE_LOCAL a
2:		 DECLARE_LOCAL b
3:		 DECLARE_LOCAL c
4:		 DECLARE_LOCAL d
5:		 DECLARE_LOCAL e
6:		 PUSH 6
7:		 ASSIGN a
8:		 PUSH a
9:		 PUSH 15
10:		 MULTIPLY 
11:		 ASSIGN b
12:		 BEGIN_SCOPE 
13:		 PUSH b
14:		 PUSH a
15:		 COMPARE_GT 
16:		 JUMP_NEG 24
17:		 PUSH a
18:		 PUSH 2
19:		 MULTIPLY 
20:		 ASSIGN a
21:		 JUMP 29
22:		 END_SCOPE 
23:		 BEGIN_SCOPE 
24:		 PUSH a
25:		 PUSH 3
26:		 MULTIPLY 
27:		 ASSIGN a
28:		 END_SCOPE 
29:		 BEGIN_SCOPE 
30:		 PUSH b
31:		 PUSH a
32:		 COMPARE_GT 
33:		 JUMP_NEG 56
34:		 BEGIN_SCOPE 
35:		 PUSH b
36:		 PUSH a
37:		 PUSH 2
38:		 SUBTRACT 
39:		 COMPARE_LT 
40:		 JUMP_NEG 48
41:		 PUSH a
42:		 PUSH 5
43:		 MULTIPLY 
44:		 ASSIGN a
45:		 JUMP 53
46:		 END_SCOPE 
47:		 BEGIN_SCOPE 
48:		 PUSH a
49:		 PUSH 7
50:		 MULTIPLY 
51:		 ASSIGN a
52:		 END_SCOPE 
53:		 JUMP 64
54:		 END_SCOPE 
55:		 BEGIN_SCOPE 
56:		 PUSH a
57:		 PUSH 11
58:		 DIVIDE 
59:		 PUSH 11
60:		 PUSH 10
61:		 MULTIPLY 
62:		 ASSIGN a
63:		 END_SCOPE 
64:		 BEGIN_SCOPE 
65:		 PUSH b
66:		 PUSH a
67:		 COMPARE_GT 
68:		 JUMP_NEG 76
69:		 PUSH a
70:		 PUSH 2
71:		 MULTIPLY 
72:		 ASSIGN a
73:		 JUMP 96
74:		 END_SCOPE 
75:		 BEGIN_SCOPE 
76:		 BEGIN_SCOPE 
77:		 PUSH b
78:		 PUSH 5
79:		 PUSH a
80:		 SUM 
81:		 COMPARE_GT 
82:		 JUMP_NEG 90
83:		 PUSH 23
84:		 PUSH a
85:		 SUBTRACT 
86:		 ASSIGN a
87:		 JUMP 95
88:		 END_SCOPE 
89:		 BEGIN_SCOPE 
90:		 PUSH 948
91:		 PUSH b
92:		 DIVIDE 
93:		 ASSIGN a
94:		 END_SCOPE 
95:		 END_SCOPE 
96:		 BEGIN_SCOPE 
97:		 PUSH b
98:		 PUSH a
99:		 COMPARE_GT 
100:		 JUMP_NEG 104
101:		 BEGIN_SCOPE 
102:		 JUMP 96
103:		 END_SCOPE 
104:		 END_SCOPE 
105:		 BEGIN_SCOPE 
106:		 PUSH b
107:		 PUSH a
108:		 COMPARE_GT 
109:		 JUMP_NEG 113
110:		 BEGIN_SCOPE 
111:		 JUMP 105
112:		 END_SCOPE 
113:		 END_SCOPE 
114:		 BEGIN_SCOPE 
115:		 PUSH b
116:		 PUSH a
117:		 COMPARE_GT 
118:		 JUMP_NEG 122
119:		 BEGIN_SCOPE 
120:		 JUMP 114
121:		 END_SCOPE 
122:		 END_SCOPE 
123:		 END_SCOPE 


======== PROGRAM RESULT ========
