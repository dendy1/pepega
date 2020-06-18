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
5:		 ASSIGN a
6:		 PUSH a
7:		 PUSH b
8:		 MULTIPLY 
9:		 ASSIGN simplesum
10:		 PUSH simplesum
11:		 RETURN 1
12:		 END_SCOPE 
13:		 PUSH 7
14:		 ASSIGN a
15:		 PUSH 13
16:		 ASSIGN b
17:		 PUSH 3
18:		 PUSH 10
19:		 PUSH simplesum
20:		 CALL 1
21:		 SUM 
22:		 ASSIGN a
23:		 PUSH 1
24:		 PUSH 10
25:		 BOOLEAN_MINUS 
26:		 PUSH simplesum
27:		 CALL 1
28:		 MULTIPLY 
29:		 ASSIGN b
30:		 END_SCOPE 


======== PROGRAM RESULT ========
