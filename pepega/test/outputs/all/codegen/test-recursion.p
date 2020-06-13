======== AST AFTER SEMANTIC ========
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
  │   │ │ └ sum
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
  │       └ IfStatement
  │         ├ RelationalExpression
  │         │ ├ EntireVariable
  │         │ │ └ Identifier
  │         │ │   └ a
  │         │ ├ <=
  │         │ └ ConstantVariable
  │         │   └ IntegerConstant
  │         │     └ 0 (None)
  │         ├ AssignmentStatement
  │         │ ├ EntireVariable
  │         │ │ └ Identifier
  │         │ │   └ sum
  │         │ └ ConstantVariable
  │         │   └ IntegerConstant
  │         │     └ 0 (None)
  │         └ AssignmentStatement
  │           ├ EntireVariable
  │           │ └ Identifier
  │           │   └ sum
  │           └ AdditiveExpression
  │             ├ EntireVariable
  │             │ └ Identifier
  │             │   └ a
  │             ├ +
  │             └ ProcedureStatement
  │               ├ Identifier
  │               │ └ sum
  │               └ Arguments
  │                 └ AdditiveExpression
  │                   ├ EntireVariable
  │                   │ └ Identifier
  │                   │   └ a
  │                   ├ -
  │                   └ ConstantVariable
  │                     └ IntegerConstant
  │                       └ 1 (None)
  └ StatementList
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ a
    │ └ ProcedureStatement
    │   ├ Identifier
    │   │ └ sum
    │   └ Arguments
    │     └ ConstantVariable
    │       └ IntegerConstant
    │         └ 10 (None)
    └ AssignmentStatement
      ├ EntireVariable
      │ └ Identifier
      │   └ b
      └ ProcedureStatement
        ├ Identifier
        │ └ sum
        └ Arguments
          └ SignedFactor
            ├ -
            └ ConstantVariable
              └ IntegerConstant
                └ 10 (None)
