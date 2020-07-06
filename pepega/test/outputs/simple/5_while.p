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
    │ ├ while
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ Identifier
    │ │ │   └ c
    │ │ ├ >
    │ │ └ EntireVariable
    │ │   └ Identifier
    │ │     └ b
    │ ├ do
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
    │ ├ while
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ Identifier
    │ │ │   └ d
    │ │ ├ >
    │ │ └ EntireVariable
    │ │   └ Identifier
    │ │     └ c
    │ ├ do
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
    ├ WhileStatement (void)
    │ ├ while
    │ ├ RelationalExpression (boolean)
    │ │ ├ EntireVariable (integer)
    │ │ │ └ Identifier
    │ │ │   └ c
    │ │ ├ >
    │ │ └ EntireVariable (integer)
    │ │   └ Identifier
    │ │     └ b
    │ ├ do
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
    ├ WhileStatement (void)
    │ ├ while
    │ ├ RelationalExpression (boolean)
    │ │ ├ EntireVariable (integer)
    │ │ │ └ Identifier
    │ │ │   └ d
    │ │ ├ >
    │ │ └ EntireVariable (integer)
    │ │   └ Identifier
    │ │     └ c
    │ ├ do
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
18:		 JUMP_NEG 22
19:		 BEGIN_SCOPE 
20:		 JUMP 14
21:		 END_SCOPE 
22:		 END_SCOPE 
23:		 BEGIN_SCOPE 
24:		 PUSH c
25:		 PUSH b
26:		 COMPARE_GT 
27:		 JUMP_NEG 31
28:		 BEGIN_SCOPE 
29:		 JUMP 23
30:		 END_SCOPE 
31:		 END_SCOPE 
32:		 BEGIN_SCOPE 
33:		 PUSH d
34:		 PUSH c
35:		 COMPARE_GT 
36:		 JUMP_NEG 40
37:		 BEGIN_SCOPE 
38:		 JUMP 32
39:		 END_SCOPE 
40:		 END_SCOPE 
41:		 PUSH a
42:		 PUSH b
43:		 SUM 
44:		 PUSH b
45:		 PUSH c
46:		 SUM 
47:		 PUSH c
48:		 PUSH d
49:		 SUM 
50:		 PUSH printint
51:		 CALL 1
52:		 END_SCOPE 


======== PROGRAM RESULT ========
Traceback (most recent call last):
  File "F:\Projects\pepega\pepega\tests.py", line 43, in run_tests
    virtual_machine.run()
  File "F:\Projects\pepega\pepega\src\VirtualMachine\VirtualMachine.py", line 71, in run
    self._handle_instruction(instruction)
  File "F:\Projects\pepega\pepega\src\VirtualMachine\VirtualMachine.py", line 81, in _handle_instruction
    handler(instruction)
  File "F:\Projects\pepega\pepega\src\VirtualMachine\VirtualMachine.py", line 94, in _handle_push
    pushed_value = self._context.current_scope.lookup(value)
  File "F:\Projects\pepega\pepega\src\VirtualMachine\Scope.py", line 28, in lookup
    return self._enclosing_scope.lookup(name)
  File "F:\Projects\pepega\pepega\src\VirtualMachine\Scope.py", line 28, in lookup
    return self._enclosing_scope.lookup(name)
  File "F:\Projects\pepega\pepega\src\VirtualMachine\Scope.py", line 28, in lookup
    return self._enclosing_scope.lookup(name)
  [Previous line repeated 991 more times]
  File "F:\Projects\pepega\pepega\src\VirtualMachine\Scope.py", line 19, in lookup
    value = self._values.get(name)
RecursionError: maximum recursion depth exceeded while calling a Python object

