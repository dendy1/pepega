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
  │   └ Type
  │     └ integer
  └ StatementList
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
    │ │   └ a
    │ └ ConstantVariable
    │   └ IntegerConstant
    │     └ 2
    ├ WhileStatement
    │ ├ while
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ Identifier
    │ │ │   └ a
    │ │ ├ <=
    │ │ └ ConstantVariable
    │ │   └ IntegerConstant
    │ │     └ 9
    │ ├ do
    │ └ StatementList
    │   ├ AssignmentStatement
    │   │ ├ EntireVariable
    │   │ │ └ Identifier
    │   │ │   └ b
    │   │ └ ConstantVariable
    │   │   └ IntegerConstant
    │   │     └ 1
    │   ├ WhileStatement
    │   │ ├ while
    │   │ ├ RelationalExpression
    │   │ │ ├ EntireVariable
    │   │ │ │ └ Identifier
    │   │ │ │   └ b
    │   │ │ ├ <=
    │   │ │ └ ConstantVariable
    │   │ │   └ IntegerConstant
    │   │ │     └ 9
    │   │ ├ do
    │   │ └ StatementList
    │   │   ├ AssignmentStatement
    │   │   │ ├ EntireVariable
    │   │   │ │ └ Identifier
    │   │   │ │   └ c
    │   │   │ └ AdditiveExpression
    │   │   │   ├ EntireVariable
    │   │   │   │ └ Identifier
    │   │   │   │   └ c
    │   │   │   ├ +
    │   │   │   └ MultiplicativeExpression
    │   │   │     ├ EntireVariable
    │   │   │     │ └ Identifier
    │   │   │     │   └ a
    │   │   │     ├ *
    │   │   │     └ EntireVariable
    │   │   │       └ Identifier
    │   │   │         └ b
    │   │   └ AssignmentStatement
    │   │     ├ EntireVariable
    │   │     │ └ Identifier
    │   │     │   └ b
    │   │     └ AdditiveExpression
    │   │       ├ EntireVariable
    │   │       │ └ Identifier
    │   │       │   └ b
    │   │       ├ +
    │   │       └ ConstantVariable
    │   │         └ IntegerConstant
    │   │           └ 1
    │   └ AssignmentStatement
    │     ├ EntireVariable
    │     │ └ Identifier
    │     │   └ a
    │     └ AdditiveExpression
    │       ├ EntireVariable
    │       │ └ Identifier
    │       │   └ a
    │       ├ +
    │       └ ConstantVariable
    │         └ IntegerConstant
    │           └ 1
    ├ Statement
    │ └ ForStatement
    │   ├ for
    │   ├ EntireVariable
    │   │ └ Identifier
    │   │   └ c
    │   ├ ConstantVariable
    │   │ └ IntegerConstant
    │   │   └ 0
    │   ├ to
    │   ├ ConstantVariable
    │   │ └ IntegerConstant
    │   │   └ 5
    │   ├ do
    │   └ StatementList
    │     └ AssignmentStatement
    │       ├ EntireVariable
    │       │ └ Identifier
    │       │   └ a
    │       └ AdditiveExpression
    │         ├ EntireVariable
    │         │ └ Identifier
    │         │   └ a
    │         ├ +
    │         └ ConstantVariable
    │           └ IntegerConstant
    │             └ 1
    └ ProcedureStatement
      ├ Identifier
      │ └ printint
      └ Arguments
        └ EntireVariable
          └ Identifier
            └ c


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
  │   └ Type
  │     └ integer
  └ StatementList
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
    │ │   └ a
    │ └ ConstantVariable (integer)
    │   └ IntegerConstant (integer)
    │     └ 2
    ├ WhileStatement (void)
    │ ├ while
    │ ├ RelationalExpression (boolean)
    │ │ ├ EntireVariable (integer)
    │ │ │ └ Identifier
    │ │ │   └ a
    │ │ ├ <=
    │ │ └ ConstantVariable (integer)
    │ │   └ IntegerConstant (integer)
    │ │     └ 9
    │ ├ do
    │ └ StatementList
    │   ├ AssignmentStatement
    │   │ ├ EntireVariable
    │   │ │ └ Identifier
    │   │ │   └ b
    │   │ └ ConstantVariable
    │   │   └ IntegerConstant
    │   │     └ 1
    │   ├ WhileStatement
    │   │ ├ while
    │   │ ├ RelationalExpression
    │   │ │ ├ EntireVariable
    │   │ │ │ └ Identifier
    │   │ │ │   └ b
    │   │ │ ├ <=
    │   │ │ └ ConstantVariable
    │   │ │   └ IntegerConstant
    │   │ │     └ 9
    │   │ ├ do
    │   │ └ StatementList
    │   │   ├ AssignmentStatement
    │   │   │ ├ EntireVariable
    │   │   │ │ └ Identifier
    │   │   │ │   └ c
    │   │   │ └ AdditiveExpression
    │   │   │   ├ EntireVariable
    │   │   │   │ └ Identifier
    │   │   │   │   └ c
    │   │   │   ├ +
    │   │   │   └ MultiplicativeExpression
    │   │   │     ├ EntireVariable
    │   │   │     │ └ Identifier
    │   │   │     │   └ a
    │   │   │     ├ *
    │   │   │     └ EntireVariable
    │   │   │       └ Identifier
    │   │   │         └ b
    │   │   └ AssignmentStatement
    │   │     ├ EntireVariable
    │   │     │ └ Identifier
    │   │     │   └ b
    │   │     └ AdditiveExpression
    │   │       ├ EntireVariable
    │   │       │ └ Identifier
    │   │       │   └ b
    │   │       ├ +
    │   │       └ ConstantVariable
    │   │         └ IntegerConstant
    │   │           └ 1
    │   └ AssignmentStatement
    │     ├ EntireVariable
    │     │ └ Identifier
    │     │   └ a
    │     └ AdditiveExpression
    │       ├ EntireVariable
    │       │ └ Identifier
    │       │   └ a
    │       ├ +
    │       └ ConstantVariable
    │         └ IntegerConstant
    │           └ 1
    ├ Statement
    │ └ ForStatement (void)
    │   ├ for
    │   ├ EntireVariable (integer)
    │   │ └ Identifier
    │   │   └ c
    │   ├ ConstantVariable (integer)
    │   │ └ IntegerConstant (integer)
    │   │   └ 0
    │   ├ to
    │   ├ ConstantVariable (integer)
    │   │ └ IntegerConstant (integer)
    │   │   └ 5
    │   ├ do
    │   └ StatementList
    │     └ AssignmentStatement (integer)
    │       ├ EntireVariable (integer)
    │       │ └ Identifier
    │       │   └ a
    │       └ AdditiveExpression (integer)
    │         ├ EntireVariable (integer)
    │         │ └ Identifier
    │         │   └ a
    │         ├ +
    │         └ ConstantVariable (integer)
    │           └ IntegerConstant (integer)
    │             └ 1
    └ ProcedureStatement (void)
      ├ Identifier
      │ └ printint
      └ Arguments
        └ EntireVariable (integer)
          └ Identifier
            └ c


======== BYTECODE ========
0:		 BEGIN_SCOPE 
1:		 DECLARE_LOCAL a
2:		 DECLARE_LOCAL b
3:		 DECLARE_LOCAL c
4:		 PUSH 0
5:		 ASSIGN c
6:		 PUSH 2
7:		 ASSIGN a
8:		 BEGIN_SCOPE 
9:		 PUSH a
10:		 PUSH 9
11:		 COMPARE_LE 
12:		 JUMP_NEG 16
13:		 BEGIN_SCOPE 
14:		 JUMP 8
15:		 END_SCOPE 
16:		 END_SCOPE 
17:		 BEGIN_SCOPE 
18:		 PUSH 0
19:		 ASSIGN c
20:		 PUSH 5
21:		 PUSH c
22:		 COMPARE_GE 
23:		 JUMP_NEG 33
24:		 PUSH a
25:		 PUSH 1
26:		 SUM 
27:		 ASSIGN a
28:		 PUSH 1
29:		 PUSH c
30:		 SUM 
31:		 ASSIGN c
32:		 JUMP 20
33:		 END_SCOPE 
34:		 PUSH c
35:		 PUSH printint
36:		 CALL 1
37:		 END_SCOPE 


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

