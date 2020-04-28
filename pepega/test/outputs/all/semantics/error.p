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
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ g
  │   ├ Identifier
  │   │ └ h
  │   └ Type
  │     └ real
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ k
  │   └ Type
  │     └ ArrayType
  │       ├ IndexRange
  │       │ ├ IntegerConstant
  │       │ │ └ 23
  │       │ └ IntegerConstant
  │       │   └ 57
  │       └ Type
  │         └ ArrayType
  │           ├ IndexRange
  │           │ ├ IntegerConstant
  │           │ │ └ 23
  │           │ └ IntegerConstant
  │           │   └ 57
  │           └ Type
  │             └ real
  ├ SubprogramDeclarations
  │ ├ SubprogramDeclaration
  │ │ ├ SubprogramHeader
  │ │ │ ├ Identifier
  │ │ │ │ └ sort
  │ │ │ └ Arguments
  │ │ │   ├ Identifier
  │ │ │   │ └ a
  │ │ │   └ Type
  │ │ │     └ ArrayType
  │ │ │       ├ IndexRange
  │ │ │       │ ├ IntegerConstant
  │ │ │       │ │ └ 1
  │ │ │       │ └ IntegerConstant
  │ │ │       │   └ 10
  │ │ │       └ Type
  │ │ │         └ integer
  │ │ ├ VariableDeclarations
  │ │ │ └ VariableDeclaration
  │ │ │   ├ Identifier
  │ │ │   │ └ b
  │ │ │   ├ Identifier
  │ │ │   │ └ c
  │ │ │   └ Type
  │ │ │     └ integer
  │ │ └ StatementList
  │ │   └ AssignmentStatement
  │ │     ├ Identifier
  │ │     │ └ e
  │ │     └ Identifier
  │ │       └ a
  │ └ SubprogramDeclaration
  │   ├ SubprogramHeader
  │   │ ├ Identifier
  │   │ │ └ addition
  │   │ ├ Arguments
  │   │ │ ├ Identifier
  │   │ │ │ └ a
  │   │ │ ├ Identifier
  │   │ │ │ └ b
  │   │ │ └ Type
  │   │ │   └ integer
  │   │ └ Type
  │   │   └ integer
  │   ├ VariableDeclarations
  │   │ └ VariableDeclaration
  │   │   ├ Identifier
  │   │   │ └ c
  │   │   └ Type
  │   │     └ integer
  │   └ StatementList
  │     └ AssignmentStatement
  │       ├ Identifier
  │       │ └ addition
  │       └ Identifier
  │         └ a
  └ StatementList
    ├ AssignmentStatement
    │ ├ Identifier
    │ │ └ a
    │ └ IntegerConstant
    │   └ 1
    ├ WhileStatement
    │ ├ RelationalExpression
    │ │ ├ Identifier
    │ │ │ └ a
    │ │ ├ <
    │ │ └ IntegerConstant
    │ │   └ 10
    │ └ Statement
    │   └ StatementList
    │     └ AssignmentStatement
    │       ├ Identifier
    │       │ └ a
    │       └ AdditiveExpression
    │         ├ Identifier
    │         │ └ a
    │         ├ +
    │         └ IntegerConstant
    │           └ 1
    ├ Statement
    │ └ StatementList
    │   ├ AssignmentStatement
    │   │ ├ Identifier
    │   │ │ └ b
    │   │ └ IntegerConstant
    │   │   └ 1
    │   ├ WhileStatement
    │   │ ├ RelationalExpression
    │   │ │ ├ Identifier
    │   │ │ │ └ b
    │   │ │ ├ <
    │   │ │ └ IntegerConstant
    │   │ │   └ 11
    │   │ └ Statement
    │   │   └ StatementList
    │   │     ├ AssignmentStatement
    │   │     │ ├ IndexedVariable
    │   │     │ │ ├ Identifier
    │   │     │ │ │ └ d
    │   │     │ │ └ Identifier
    │   │     │ │   └ b
    │   │     │ └ AdditiveExpression
    │   │     │   ├ Identifier
    │   │     │   │ └ b
    │   │     │   ├ +
    │   │     │   └ MultiplicativeExpression
    │   │     │     ├ Identifier
    │   │     │     │ └ b
    │   │     │     ├ *
    │   │     │     └ Factor
    │   │     │       └ AdditiveExpression
    │   │     │         ├ Identifier
    │   │     │         │ └ b
    │   │     │         ├ -
    │   │     │         └ IntegerConstant
    │   │     │           └ 1
    │   │     └ AssignmentStatement
    │   │       ├ Identifier
    │   │       │ └ b
    │   │       └ AdditiveExpression
    │   │         ├ Identifier
    │   │         │ └ b
    │   │         ├ +
    │   │         └ IntegerConstant
    │   │           └ 1
    │   └ ProcedureStatement
    │     ├ Identifier
    │     │ └ sort
    │     └ Identifier
    │       └ d
    ├ AssignmentStatement
    │ ├ IndexedVariable
    │ │ ├ Identifier
    │ │ │ └ k
    │ │ ├ IntegerConstant
    │ │ │ └ 25
    │ │ └ IntegerConstant
    │ │   └ 26
    │ └ IntegerConstant
    │   └ 3
    ├ AssignmentStatement
    │ ├ IndexedVariable
    │ │ ├ Identifier
    │ │ │ └ k
    │ │ ├ IntegerConstant
    │ │ │ └ 25
    │ │ └ IntegerConstant
    │ │   └ 26
    │ └ FloatConstant
    │   └ 3.14
    ├ AssignmentStatement
    │ ├ IndexedVariable
    │ │ ├ Identifier
    │ │ │ └ k
    │ │ ├ IntegerConstant
    │ │ │ └ 25
    │ │ └ IntegerConstant
    │ │   └ 26
    │ └ AdditiveExpression
    │   ├ IndexedVariable
    │   │ ├ Identifier
    │   │ │ └ k
    │   │ ├ IntegerConstant
    │   │ │ └ 25
    │   │ └ IntegerConstant
    │   │   └ 26
    │   ├ +
    │   └ IntegerConstant
    │     └ 3
    ├ AssignmentStatement
    │ ├ IndexedVariable
    │ │ ├ Identifier
    │ │ │ └ k
    │ │ ├ IntegerConstant
    │ │ │ └ 25
    │ │ └ IntegerConstant
    │ │   └ 126
    │ └ FloatConstant
    │   └ 3.14
    ├ AssignmentStatement
    │ ├ IndexedVariable
    │ │ ├ Identifier
    │ │ │ └ k
    │ │ ├ IntegerConstant
    │ │ │ └ 125
    │ │ └ IntegerConstant
    │ │   └ 26
    │ └ FloatConstant
    │   └ 3.14
    └ AssignmentStatement
      ├ IndexedVariable
      │ ├ Identifier
      │ │ └ k
      │ ├ IntegerConstant
      │ │ └ 125
      │ └ IntegerConstant
      │   └ 126
      └ FloatConstant
        └ 3.14
