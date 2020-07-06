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
    │     └ 3
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
    │ │   └ d
    │ └ ConstantVariable
    │   └ IntegerConstant
    │     └ 0
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ e
    │ └ ConstantVariable
    │   └ IntegerConstant
    │     └ 0
    ├ IfStatement
    │ ├ if
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ Identifier
    │ │ │   └ b
    │ │ ├ >
    │ │ └ ConstantVariable
    │ │   └ IntegerConstant
    │ │     └ 50
    │ ├ then
    │ ├ StatementList
    │ │ └ AssignmentStatement
    │ │   ├ EntireVariable
    │ │   │ └ Identifier
    │ │   │   └ c
    │ │   └ AdditiveExpression
    │ │     ├ EntireVariable
    │ │     │ └ Identifier
    │ │     │   └ a
    │ │     ├ +
    │ │     ├ EntireVariable
    │ │     │ └ Identifier
    │ │     │   └ b
    │ │     ├ -
    │ │     └ ConstantVariable
    │ │       └ IntegerConstant
    │ │         └ 2
    │ ├ else
    │ └ StatementList
    │   └ AssignmentStatement
    │     ├ EntireVariable
    │     │ └ Identifier
    │     │   └ c
    │     └ AdditiveExpression
    │       ├ MultiplicativeExpression
    │       │ ├ EntireVariable
    │       │ │ └ Identifier
    │       │ │   └ b
    │       │ ├ *
    │       │ └ EntireVariable
    │       │   └ Identifier
    │       │     └ a
    │       ├ -
    │       └ ConstantVariable
    │         └ IntegerConstant
    │           └ 7
    ├ ProcedureStatement
    │ ├ Identifier
    │ │ └ printint
    │ └ Arguments
    │   └ EntireVariable
    │     └ Identifier
    │       └ c
    ├ IfStatement
    │ ├ if
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ Identifier
    │ │ │   └ c
    │ │ ├ >
    │ │ └ ConstantVariable
    │ │   └ IntegerConstant
    │ │     └ 5
    │ ├ then
    │ ├ StatementList
    │ │ └ AssignmentStatement
    │ │   ├ EntireVariable
    │ │   │ └ Identifier
    │ │   │   └ d
    │ │   └ AdditiveExpression
    │ │     ├ EntireVariable
    │ │     │ └ Identifier
    │ │     │   └ c
    │ │     ├ +
    │ │     ├ EntireVariable
    │ │     │ └ Identifier
    │ │     │   └ a
    │ │     ├ -
    │ │     └ EntireVariable
    │ │       └ Identifier
    │ │         └ b
    │ ├ else
    │ └ StatementList
    │   └ AssignmentStatement
    │     ├ EntireVariable
    │     │ └ Identifier
    │     │   └ d
    │     └ AdditiveExpression
    │       ├ EntireVariable
    │       │ └ Identifier
    │       │   └ c
    │       ├ -
    │       ├ EntireVariable
    │       │ └ Identifier
    │       │   └ a
    │       ├ +
    │       └ EntireVariable
    │         └ Identifier
    │           └ b
    ├ ProcedureStatement
    │ ├ Identifier
    │ │ └ printint
    │ └ Arguments
    │   └ EntireVariable
    │     └ Identifier
    │       └ d
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
    │     └ 3
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
    │ │   └ d
    │ └ ConstantVariable (integer)
    │   └ IntegerConstant (integer)
    │     └ 0
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ e
    │ └ ConstantVariable (integer)
    │   └ IntegerConstant (integer)
    │     └ 0
    ├ IfStatement (void)
    │ ├ if
    │ ├ RelationalExpression (boolean)
    │ │ ├ EntireVariable (integer)
    │ │ │ └ Identifier
    │ │ │   └ b
    │ │ ├ >
    │ │ └ ConstantVariable (integer)
    │ │   └ IntegerConstant (integer)
    │ │     └ 50
    │ ├ then
    │ ├ StatementList
    │ │ └ AssignmentStatement (integer)
    │ │   ├ EntireVariable (integer)
    │ │   │ └ Identifier
    │ │   │   └ c
    │ │   └ AdditiveExpression (integer)
    │ │     ├ EntireVariable (integer)
    │ │     │ └ Identifier
    │ │     │   └ a
    │ │     ├ +
    │ │     ├ EntireVariable (integer)
    │ │     │ └ Identifier
    │ │     │   └ b
    │ │     ├ -
    │ │     └ ConstantVariable (integer)
    │ │       └ IntegerConstant (integer)
    │ │         └ 2
    │ ├ else
    │ └ StatementList
    │   └ AssignmentStatement (integer)
    │     ├ EntireVariable (integer)
    │     │ └ Identifier
    │     │   └ c
    │     └ AdditiveExpression (integer)
    │       ├ MultiplicativeExpression (integer)
    │       │ ├ EntireVariable (integer)
    │       │ │ └ Identifier
    │       │ │   └ b
    │       │ ├ *
    │       │ └ EntireVariable (integer)
    │       │   └ Identifier
    │       │     └ a
    │       ├ -
    │       └ ConstantVariable (integer)
    │         └ IntegerConstant (integer)
    │           └ 7
    ├ ProcedureStatement (void)
    │ ├ Identifier
    │ │ └ printint
    │ └ Arguments
    │   └ EntireVariable (integer)
    │     └ Identifier
    │       └ c
    ├ IfStatement (void)
    │ ├ if
    │ ├ RelationalExpression (boolean)
    │ │ ├ EntireVariable (integer)
    │ │ │ └ Identifier
    │ │ │   └ c
    │ │ ├ >
    │ │ └ ConstantVariable (integer)
    │ │   └ IntegerConstant (integer)
    │ │     └ 5
    │ ├ then
    │ ├ StatementList
    │ │ └ AssignmentStatement (integer)
    │ │   ├ EntireVariable (integer)
    │ │   │ └ Identifier
    │ │   │   └ d
    │ │   └ AdditiveExpression (integer)
    │ │     ├ EntireVariable (integer)
    │ │     │ └ Identifier
    │ │     │   └ c
    │ │     ├ +
    │ │     ├ EntireVariable (integer)
    │ │     │ └ Identifier
    │ │     │   └ a
    │ │     ├ -
    │ │     └ EntireVariable (integer)
    │ │       └ Identifier
    │ │         └ b
    │ ├ else
    │ └ StatementList
    │   └ AssignmentStatement (integer)
    │     ├ EntireVariable (integer)
    │     │ └ Identifier
    │     │   └ d
    │     └ AdditiveExpression (integer)
    │       ├ EntireVariable (integer)
    │       │ └ Identifier
    │       │   └ c
    │       ├ -
    │       ├ EntireVariable (integer)
    │       │ └ Identifier
    │       │   └ a
    │       ├ +
    │       └ EntireVariable (integer)
    │         └ Identifier
    │           └ b
    ├ ProcedureStatement (void)
    │ ├ Identifier
    │ │ └ printint
    │ └ Arguments
    │   └ EntireVariable (integer)
    │     └ Identifier
    │       └ d
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
8:		 PUSH 3
9:		 ASSIGN b
10:		 PUSH 0
11:		 ASSIGN c
12:		 PUSH 0
13:		 ASSIGN d
14:		 PUSH 0
15:		 ASSIGN e
16:		 BEGIN_SCOPE 
17:		 PUSH b
18:		 PUSH 50
19:		 COMPARE_GT 
20:		 JUMP_NEG 31
21:		 PUSH a
22:		 PUSH b
23:		 SUM 
24:		 PUSH b
25:		 PUSH 2
26:		 SUBTRACT 
27:		 ASSIGN c
28:		 JUMP 38
29:		 END_SCOPE 
30:		 BEGIN_SCOPE 
31:		 PUSH b
32:		 PUSH a
33:		 MULTIPLY 
34:		 PUSH 7
35:		 SUBTRACT 
36:		 ASSIGN c
37:		 END_SCOPE 
38:		 PUSH c
39:		 PUSH printint
40:		 CALL 1
41:		 BEGIN_SCOPE 
42:		 PUSH c
43:		 PUSH 5
44:		 COMPARE_GT 
45:		 JUMP_NEG 56
46:		 PUSH c
47:		 PUSH a
48:		 SUM 
49:		 PUSH a
50:		 PUSH b
51:		 SUBTRACT 
52:		 ASSIGN d
53:		 JUMP 64
54:		 END_SCOPE 
55:		 BEGIN_SCOPE 
56:		 PUSH c
57:		 PUSH a
58:		 SUBTRACT 
59:		 PUSH a
60:		 PUSH b
61:		 SUM 
62:		 ASSIGN d
63:		 END_SCOPE 
64:		 PUSH d
65:		 PUSH printint
66:		 CALL 1
67:		 PUSH 7
68:		 ASSIGN e
69:		 PUSH a
70:		 PUSH b
71:		 MULTIPLY 
72:		 PUSH c
73:		 PUSH d
74:		 DIVIDE 
75:		 SUM 
76:		 PUSH c
77:		 PUSH d
78:		 DIVIDE 
79:		 PUSH e
80:		 SUBTRACT 
81:		 PUSH printint
82:		 CALL 1
83:		 END_SCOPE 


======== PROGRAM RESULT ========
0.0
0.0
Traceback (most recent call last):
  File "F:\Projects\pepega\pepega\tests.py", line 43, in run_tests
    virtual_machine.run()
  File "F:\Projects\pepega\pepega\src\VirtualMachine\VirtualMachine.py", line 71, in run
    self._handle_instruction(instruction)
  File "F:\Projects\pepega\pepega\src\VirtualMachine\VirtualMachine.py", line 81, in _handle_instruction
    handler(instruction)
  File "F:\Projects\pepega\pepega\src\VirtualMachine\VirtualMachine.py", line 17, in binary_operation_handler_internal
    value = func(self, left, right)
  File "F:\Projects\pepega\pepega\src\VirtualMachine\VirtualMachine.py", line 122, in _handle_divide
    return left / right
  File "F:\Projects\pepega\pepega\src\VirtualMachine\Values.py", line 173, in __truediv__
    return NumberValue(self.value / other.value)
ZeroDivisionError: float division by zero

