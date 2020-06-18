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
  │   └ Type
  │     └ string
  └ StatementList
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ a
    │ └ ConstantVariable
    │   └ StringConstant
    │     └ hello
    └ ProcedureStatement
      ├ Identifier
      │ └ printstring
      └ Arguments
        └ EntireVariable
          └ Identifier
            └ a


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
  │   └ Type
  │     └ string
  └ StatementList
    ├ AssignmentStatement (string)
    │ ├ EntireVariable (string)
    │ │ └ Identifier
    │ │   └ a
    │ └ ConstantVariable (string)
    │   └ StringConstant (string)
    │     └ hello
    └ ProcedureStatement (void)
      ├ Identifier
      │ └ printstring
      └ Arguments
        └ EntireVariable (string)
          └ Identifier
            └ a


======== BYTECODE ========
0:		 BEGIN_SCOPE 
1:		 DECLARE_LOCAL a
2:		 PUSH "hello"
3:		 ASSIGN a
4:		 PUSH a
5:		 PUSH printstring
6:		 CALL 1
7:		 END_SCOPE 


======== PROGRAM RESULT ========
hello
