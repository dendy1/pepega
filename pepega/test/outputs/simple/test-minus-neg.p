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
  │   │ └ c
  │   └ Type
  │     └ integer
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ b
  │   └ Type
  │     └ real
  └ StatementList
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ a
    │ └ AdditiveExpression
    │   ├ SignedFactor
    │   │ ├ -
    │   │ └ ConstantVariable
    │   │   └ IntegerConstant
    │   │     └ 3
    │   ├ -
    │   └ ConstantVariable
    │     └ IntegerConstant
    │       └ 4
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ c
    │ └ SignedFactor
    │   ├ -
    │   └ ConstantVariable
    │     └ IntegerConstant
    │       └ 5
    └ AssignmentStatement
      ├ EntireVariable
      │ └ Identifier
      │   └ b
      └ AdditiveExpression
        ├ SignedFactor
        │ ├ -
        │ └ ConstantVariable
        │   └ IntegerConstant
        │     └ 5
        ├ -
        └ ConstantVariable
          └ IntegerConstant
            └ 6


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
  │   │ └ c
  │   └ Type
  │     └ integer
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ b
  │   └ Type
  │     └ real
  └ StatementList
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ a
    │ └ AdditiveExpression (integer)
    │   ├ SignedFactor (integer)
    │   │ ├ -
    │   │ └ ConstantVariable (integer)
    │   │   └ IntegerConstant (integer)
    │   │     └ 3
    │   ├ -
    │   └ ConstantVariable (integer)
    │     └ IntegerConstant (integer)
    │       └ 4
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ c
    │ └ SignedFactor (integer)
    │   ├ -
    │   └ ConstantVariable (integer)
    │     └ IntegerConstant (integer)
    │       └ 5
    └ AssignmentStatement (real)
      ├ EntireVariable (real)
      │ └ Identifier
      │   └ b
      └ AdditiveExpression (converted to real)
        ├ SignedFactor (integer)
        │ ├ -
        │ └ ConstantVariable (integer)
        │   └ IntegerConstant (integer)
        │     └ 5
        ├ -
        └ ConstantVariable (integer)
          └ IntegerConstant (integer)
            └ 6


======== BYTECODE ========
0:		 BEGIN_SCOPE 
1:		 DECLARE_LOCAL a
2:		 DECLARE_LOCAL c
3:		 DECLARE_LOCAL b
4:		 PUSH 3
5:		 BOOLEAN_MINUS 
6:		 PUSH 4
7:		 SUBTRACT 
8:		 ASSIGN a
9:		 PUSH 5
10:		 BOOLEAN_MINUS 
11:		 ASSIGN c
12:		 PUSH 5
13:		 BOOLEAN_MINUS 
14:		 PUSH 6
15:		 SUBTRACT 
16:		 ASSIGN b
17:		 END_SCOPE 


======== PROGRAM RESULT ========
