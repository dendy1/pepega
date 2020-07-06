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
    │ └ MultiplicativeExpression
    │   ├ EntireVariable
    │   │ └ Identifier
    │   │   └ a
    │   ├ *
    │   └ ConstantVariable
    │     └ IntegerConstant
    │       └ 3
    ├ IfStatement
    │ ├ if
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ Identifier
    │ │ │   └ b
    │ │ ├ >
    │ │ └ ConstantVariable
    │ │   └ IntegerConstant
    │ │     └ 7
    │ ├ then
    │ ├ StatementList
    │ │ ├ AssignmentStatement
    │ │ │ ├ EntireVariable
    │ │ │ │ └ Identifier
    │ │ │ │   └ c
    │ │ │ └ AdditiveExpression
    │ │ │   ├ EntireVariable
    │ │ │   │ └ Identifier
    │ │ │   │   └ a
    │ │ │   ├ +
    │ │ │   ├ EntireVariable
    │ │ │   │ └ Identifier
    │ │ │   │   └ b
    │ │ │   ├ -
    │ │ │   └ ConstantVariable
    │ │ │     └ IntegerConstant
    │ │ │       └ 2
    │ │ └ IfStatement
    │ │   ├ if
    │ │   ├ RelationalExpression
    │ │   │ ├ EntireVariable
    │ │   │ │ └ Identifier
    │ │   │ │   └ c
    │ │   │ ├ <
    │ │   │ └ ConstantVariable
    │ │   │   └ IntegerConstant
    │ │   │     └ 5
    │ │   ├ then
    │ │   ├ StatementList
    │ │   │ └ AssignmentStatement
    │ │   │   ├ EntireVariable
    │ │   │   │ └ Identifier
    │ │   │   │   └ d
    │ │   │   └ AdditiveExpression
    │ │   │     ├ EntireVariable
    │ │   │     │ └ Identifier
    │ │   │     │   └ c
    │ │   │     ├ +
    │ │   │     ├ EntireVariable
    │ │   │     │ └ Identifier
    │ │   │     │   └ a
    │ │   │     ├ -
    │ │   │     └ EntireVariable
    │ │   │       └ Identifier
    │ │   │         └ b
    │ │   ├ else
    │ │   └ StatementList
    │ │     └ AssignmentStatement
    │ │       ├ EntireVariable
    │ │       │ └ Identifier
    │ │       │   └ d
    │ │       └ AdditiveExpression
    │ │         ├ EntireVariable
    │ │         │ └ Identifier
    │ │         │   └ c
    │ │         ├ -
    │ │         ├ EntireVariable
    │ │         │ └ Identifier
    │ │         │   └ a
    │ │         ├ +
    │ │         └ EntireVariable
    │ │           └ Identifier
    │ │             └ b
    │ ├ else
    │ └ StatementList
    │   ├ AssignmentStatement
    │   │ ├ EntireVariable
    │   │ │ └ Identifier
    │   │ │   └ c
    │   │ └ MultiplicativeExpression
    │   │   ├ EntireVariable
    │   │   │ └ Identifier
    │   │   │   └ a
    │   │   ├ *
    │   │   ├ EntireVariable
    │   │   │ └ Identifier
    │   │   │   └ b
    │   │   ├ /
    │   │   └ ConstantVariable
    │   │     └ IntegerConstant
    │   │       └ 2
    │   └ IfStatement
    │     ├ if
    │     ├ RelationalExpression
    │     │ ├ EntireVariable
    │     │ │ └ Identifier
    │     │ │   └ c
    │     │ ├ >
    │     │ └ ConstantVariable
    │     │   └ IntegerConstant
    │     │     └ 5
    │     ├ then
    │     ├ AssignmentStatement
    │     │ ├ EntireVariable
    │     │ │ └ Identifier
    │     │ │   └ d
    │     │ └ ConstantVariable
    │     │   └ IntegerConstant
    │     │     └ 6
    │     ├ else
    │     └ AssignmentStatement
    │       ├ EntireVariable
    │       │ └ Identifier
    │       │   └ d
    │       └ ConstantVariable
    │         └ IntegerConstant
    │           └ 7
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
    │ └ MultiplicativeExpression (integer)
    │   ├ EntireVariable (integer)
    │   │ └ Identifier
    │   │   └ a
    │   ├ *
    │   └ ConstantVariable (integer)
    │     └ IntegerConstant (integer)
    │       └ 3
    ├ IfStatement (void)
    │ ├ if
    │ ├ RelationalExpression (boolean)
    │ │ ├ EntireVariable (integer)
    │ │ │ └ Identifier
    │ │ │   └ b
    │ │ ├ >
    │ │ └ ConstantVariable (integer)
    │ │   └ IntegerConstant (integer)
    │ │     └ 7
    │ ├ then
    │ ├ StatementList
    │ │ ├ AssignmentStatement (integer)
    │ │ │ ├ EntireVariable (integer)
    │ │ │ │ └ Identifier
    │ │ │ │   └ c
    │ │ │ └ AdditiveExpression (integer)
    │ │ │   ├ EntireVariable (integer)
    │ │ │   │ └ Identifier
    │ │ │   │   └ a
    │ │ │   ├ +
    │ │ │   ├ EntireVariable (integer)
    │ │ │   │ └ Identifier
    │ │ │   │   └ b
    │ │ │   ├ -
    │ │ │   └ ConstantVariable (integer)
    │ │ │     └ IntegerConstant (integer)
    │ │ │       └ 2
    │ │ └ IfStatement (void)
    │ │   ├ if
    │ │   ├ RelationalExpression (boolean)
    │ │   │ ├ EntireVariable (integer)
    │ │   │ │ └ Identifier
    │ │   │ │   └ c
    │ │   │ ├ <
    │ │   │ └ ConstantVariable (integer)
    │ │   │   └ IntegerConstant (integer)
    │ │   │     └ 5
    │ │   ├ then
    │ │   ├ StatementList
    │ │   │ └ AssignmentStatement (integer)
    │ │   │   ├ EntireVariable (integer)
    │ │   │   │ └ Identifier
    │ │   │   │   └ d
    │ │   │   └ AdditiveExpression (integer)
    │ │   │     ├ EntireVariable (integer)
    │ │   │     │ └ Identifier
    │ │   │     │   └ c
    │ │   │     ├ +
    │ │   │     ├ EntireVariable (integer)
    │ │   │     │ └ Identifier
    │ │   │     │   └ a
    │ │   │     ├ -
    │ │   │     └ EntireVariable (integer)
    │ │   │       └ Identifier
    │ │   │         └ b
    │ │   ├ else
    │ │   └ StatementList
    │ │     └ AssignmentStatement (integer)
    │ │       ├ EntireVariable (integer)
    │ │       │ └ Identifier
    │ │       │   └ d
    │ │       └ AdditiveExpression (integer)
    │ │         ├ EntireVariable (integer)
    │ │         │ └ Identifier
    │ │         │   └ c
    │ │         ├ -
    │ │         ├ EntireVariable (integer)
    │ │         │ └ Identifier
    │ │         │   └ a
    │ │         ├ +
    │ │         └ EntireVariable (integer)
    │ │           └ Identifier
    │ │             └ b
    │ ├ else
    │ └ StatementList
    │   ├ AssignmentStatement (integer)
    │   │ ├ EntireVariable (integer)
    │   │ │ └ Identifier
    │   │ │   └ c
    │   │ └ MultiplicativeExpression (integer)
    │   │   ├ EntireVariable (integer)
    │   │   │ └ Identifier
    │   │   │   └ a
    │   │   ├ *
    │   │   ├ EntireVariable (integer)
    │   │   │ └ Identifier
    │   │   │   └ b
    │   │   ├ /
    │   │   └ ConstantVariable (integer)
    │   │     └ IntegerConstant (integer)
    │   │       └ 2
    │   └ IfStatement (void)
    │     ├ if
    │     ├ RelationalExpression (boolean)
    │     │ ├ EntireVariable (integer)
    │     │ │ └ Identifier
    │     │ │   └ c
    │     │ ├ >
    │     │ └ ConstantVariable (integer)
    │     │   └ IntegerConstant (integer)
    │     │     └ 5
    │     ├ then
    │     ├ AssignmentStatement (integer)
    │     │ ├ EntireVariable (integer)
    │     │ │ └ Identifier
    │     │ │   └ d
    │     │ └ ConstantVariable (integer)
    │     │   └ IntegerConstant (integer)
    │     │     └ 6
    │     ├ else
    │     └ AssignmentStatement (integer)
    │       ├ EntireVariable (integer)
    │       │ └ Identifier
    │       │   └ d
    │       └ ConstantVariable (integer)
    │         └ IntegerConstant (integer)
    │           └ 7
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
8:		 PUSH a
9:		 PUSH 3
10:		 MULTIPLY 
11:		 ASSIGN b
12:		 BEGIN_SCOPE 
13:		 PUSH b
14:		 PUSH 7
15:		 COMPARE_GT 
16:		 JUMP_NEG 50
17:		 PUSH a
18:		 PUSH b
19:		 SUM 
20:		 PUSH b
21:		 PUSH 2
22:		 SUBTRACT 
23:		 ASSIGN c
24:		 BEGIN_SCOPE 
25:		 PUSH c
26:		 PUSH 5
27:		 COMPARE_LT 
28:		 JUMP_NEG 39
29:		 PUSH c
30:		 PUSH a
31:		 SUM 
32:		 PUSH a
33:		 PUSH b
34:		 SUBTRACT 
35:		 ASSIGN d
36:		 JUMP 47
37:		 END_SCOPE 
38:		 BEGIN_SCOPE 
39:		 PUSH c
40:		 PUSH a
41:		 SUBTRACT 
42:		 PUSH a
43:		 PUSH b
44:		 SUM 
45:		 ASSIGN d
46:		 END_SCOPE 
47:		 JUMP 71
48:		 END_SCOPE 
49:		 BEGIN_SCOPE 
50:		 PUSH a
51:		 PUSH b
52:		 MULTIPLY 
53:		 PUSH b
54:		 PUSH 2
55:		 DIVIDE 
56:		 ASSIGN c
57:		 BEGIN_SCOPE 
58:		 PUSH c
59:		 PUSH 5
60:		 COMPARE_GT 
61:		 JUMP_NEG 67
62:		 PUSH 6
63:		 ASSIGN d
64:		 JUMP 70
65:		 END_SCOPE 
66:		 BEGIN_SCOPE 
67:		 PUSH 7
68:		 ASSIGN d
69:		 END_SCOPE 
70:		 END_SCOPE 
71:		 PUSH 7
72:		 ASSIGN e
73:		 PUSH a
74:		 PUSH b
75:		 MULTIPLY 
76:		 PUSH c
77:		 PUSH d
78:		 DIVIDE 
79:		 SUM 
80:		 PUSH c
81:		 PUSH d
82:		 DIVIDE 
83:		 PUSH e
84:		 SUBTRACT 
85:		 PUSH printint
86:		 CALL 1
87:		 END_SCOPE 


======== PROGRAM RESULT ========
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
  File "F:\Projects\pepega\pepega\src\VirtualMachine\Values.py", line 175, in __truediv__
    super().__truediv__(other)
  File "F:\Projects\pepega\pepega\src\VirtualMachine\Values.py", line 20, in __truediv__
    raise VirtualMachineInvalidOperationError("Invalid operands for '/' operation: {} and {}".format(self, other))
src.Exceptions.VirtualMachineInvalidOperationError: Invalid operands for '/' operation: NumberValue(7.0) and NilValue()

