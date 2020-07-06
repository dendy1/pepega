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
  │   └ Type
  │     └ integer
  ├ SubprogramDeclarations
  │ └ SubprogramDeclaration
  │   ├ SubprogramHeader
  │   │ ├ Identifier
  │   │ │ └ simplesum
  │   │ ├ ParametersList
  │   │ │ └ Parameters
  │   │ │   ├ Identifier
  │   │ │   │ └ a
  │   │ │   └ Type
  │   │ │     └ integer
  │   │ └ Type
  │   │   └ integer
  │   └ Block
  │     └ StatementList
  │       └ AssignmentStatement
  │         ├ EntireVariable
  │         │ └ Identifier
  │         │   └ simplesum
  │         └ MultiplicativeExpression
  │           ├ EntireVariable
  │           │ └ Identifier
  │           │   └ a
  │           ├ *
  │           └ EntireVariable
  │             └ Identifier
  │               └ b
  └ StatementList
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ a
    │ └ ConstantVariable
    │   └ IntegerConstant
    │     └ 7
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ b
    │ └ ConstantVariable
    │   └ IntegerConstant
    │     └ 13
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ a
    │ └ AdditiveExpression
    │   ├ ConstantVariable
    │   │ └ IntegerConstant
    │   │   └ 3
    │   ├ +
    │   └ ProcedureStatement
    │     ├ Identifier
    │     │ └ simplesum
    │     └ Arguments
    │       └ ConstantVariable
    │         └ IntegerConstant
    │           └ 10
    └ AssignmentStatement
      ├ EntireVariable
      │ └ Identifier
      │   └ b
      └ MultiplicativeExpression
        ├ ConstantVariable
        │ └ IntegerConstant
        │   └ 1
        ├ *
        └ ProcedureStatement
          ├ Identifier
          │ └ simplesum
          └ Arguments
            └ SignedFactor
              ├ -
              └ ConstantVariable
                └ IntegerConstant
                  └ 10


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
  │   └ Type
  │     └ integer
  ├ SubprogramDeclarations
  │ └ SubprogramDeclaration
  │   ├ SubprogramHeader
  │   │ ├ Identifier
  │   │ │ └ simplesum
  │   │ ├ ParametersList
  │   │ │ └ Parameters
  │   │ │   ├ Identifier
  │   │ │   │ └ a
  │   │ │   └ Type
  │   │ │     └ integer
  │   │ └ Type
  │   │   └ integer
  │   └ Block
  │     └ StatementList
  │       └ AssignmentStatement (integer)
  │         ├ EntireVariable (integer)
  │         │ └ Identifier
  │         │   └ simplesum
  │         └ MultiplicativeExpression (integer)
  │           ├ EntireVariable (integer)
  │           │ └ Identifier
  │           │   └ a
  │           ├ *
  │           └ EntireVariable (integer)
  │             └ Identifier
  │               └ b
  └ StatementList
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ a
    │ └ ConstantVariable (integer)
    │   └ IntegerConstant (integer)
    │     └ 7
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ b
    │ └ ConstantVariable (integer)
    │   └ IntegerConstant (integer)
    │     └ 13
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ a
    │ └ AdditiveExpression (integer)
    │   ├ ConstantVariable (integer)
    │   │ └ IntegerConstant (integer)
    │   │   └ 3
    │   ├ +
    │   └ ProcedureStatement (integer)
    │     ├ Identifier
    │     │ └ simplesum
    │     └ Arguments
    │       └ ConstantVariable (integer)
    │         └ IntegerConstant (integer)
    │           └ 10
    └ AssignmentStatement (integer)
      ├ EntireVariable (integer)
      │ └ Identifier
      │   └ b
      └ MultiplicativeExpression (integer)
        ├ ConstantVariable (integer)
        │ └ IntegerConstant (integer)
        │   └ 1
        ├ *
        └ ProcedureStatement (integer)
          ├ Identifier
          │ └ simplesum
          └ Arguments
            └ SignedFactor (integer)
              ├ -
              └ ConstantVariable (integer)
                └ IntegerConstant (integer)
                  └ 10


======== BYTECODE ========
0:		 BEGIN_SCOPE 
1:		 DECLARE_LOCAL a
2:		 DECLARE_LOCAL b
3:		 FUNCTION simplesum
4:		 BEGIN_SCOPE 
5:		 DECLARE_LOCAL a
6:		 ASSIGN a
7:		 PUSH a
8:		 PUSH b
9:		 MULTIPLY 
10:		 ASSIGN simplesum
11:		 PUSH simplesum
12:		 RETURN 1
13:		 END_SCOPE 
14:		 PUSH 7
15:		 ASSIGN a
16:		 PUSH 13
17:		 ASSIGN b
18:		 PUSH 3
19:		 PUSH 10
20:		 PUSH simplesum
21:		 CALL 1
22:		 SUM 
23:		 ASSIGN a
24:		 PUSH 1
25:		 PUSH 10
26:		 BOOLEAN_MINUS 
27:		 PUSH simplesum
28:		 CALL 1
29:		 MULTIPLY 
30:		 ASSIGN b
31:		 END_SCOPE 


======== PROGRAM RESULT ========
