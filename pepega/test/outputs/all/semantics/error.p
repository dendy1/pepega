Program
├ Identifier
│ └ foo (str)
├ Identifier
│ └ input (str)
├ Identifier
│ └ output (str)
├ Identifier
│ └ error (str)
└ Block
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ a (str)
  │   ├ Identifier
  │   │ └ b (str)
  │   ├ Identifier
  │   │ └ c (str)
  │   └ Type
  │     └ integer (SimpleType)
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ d (str)
  │   ├ Identifier
  │   │ └ e (str)
  │   └ Type
  │     └ ArrayType
  │       ├ IndexRange
  │       │ ├ IntegerConstant
  │       │ │ └ 1 (Integer)
  │       │ └ IntegerConstant
  │       │   └ 10 (Integer)
  │       └ Type
  │         └ integer (SimpleType)
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ g (str)
  │   ├ Identifier
  │   │ └ h (str)
  │   └ Type
  │     └ real (SimpleType)
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ k (str)
  │   └ Type
  │     └ ArrayType
  │       ├ IndexRange
  │       │ ├ IntegerConstant
  │       │ │ └ 23 (Integer)
  │       │ └ IntegerConstant
  │       │   └ 57 (Integer)
  │       └ Type
  │         └ ArrayType
  │           ├ IndexRange
  │           │ ├ IntegerConstant
  │           │ │ └ 23 (Integer)
  │           │ └ IntegerConstant
  │           │   └ 57 (Integer)
  │           └ Type
  │             └ real (SimpleType)
  ├ SubprogramDeclarations
  │ ├ SubprogramDeclaration
  │ │ ├ SubprogramHeader
  │ │ │ ├ Identifier
  │ │ │ │ └ sort (str)
  │ │ │ └ Arguments
  │ │ │   ├ Identifier
  │ │ │   │ └ a (str)
  │ │ │   └ Type
  │ │ │     └ ArrayType
  │ │ │       ├ IndexRange
  │ │ │       │ ├ IntegerConstant
  │ │ │       │ │ └ 1 (Integer)
  │ │ │       │ └ IntegerConstant
  │ │ │       │   └ 10 (Integer)
  │ │ │       └ Type
  │ │ │         └ integer (SimpleType)
  │ │ ├ VariableDeclarations
  │ │ │ └ VariableDeclaration
  │ │ │   ├ Identifier
  │ │ │   │ └ b (str)
  │ │ │   ├ Identifier
  │ │ │   │ └ c (str)
  │ │ │   └ Type
  │ │ │     └ integer (SimpleType)
  │ │ └ StatementList
  │ │   └ AssignmentStatement
  │ │     ├ Identifier
  │ │     │ └ e (str)
  │ │     └ Identifier
  │ │       └ a (str)
  │ └ SubprogramDeclaration
  │   ├ SubprogramHeader
  │   │ ├ Identifier
  │   │ │ └ addition (str)
  │   │ ├ Arguments
  │   │ │ ├ Identifier
  │   │ │ │ └ a (str)
  │   │ │ ├ Identifier
  │   │ │ │ └ b (str)
  │   │ │ └ Type
  │   │ │   └ integer (SimpleType)
  │   │ └ Type
  │   │   └ integer (SimpleType)
  │   ├ VariableDeclarations
  │   │ └ VariableDeclaration
  │   │   ├ Identifier
  │   │   │ └ c (str)
  │   │   └ Type
  │   │     └ integer (SimpleType)
  │   └ StatementList
  │     └ AssignmentStatement
  │       ├ Identifier
  │       │ └ addition (str)
  │       └ Identifier
  │         └ a (str)
  └ StatementList
    ├ AssignmentStatement
    │ ├ Identifier
    │ │ └ a (str)
    │ └ IntegerConstant
    │   └ 1 (Integer)
    ├ WhileStatement
    │ ├ RelationalExpression
    │ │ ├ Identifier
    │ │ │ └ a (str)
    │ │ ├ < (RelationalOperator)
    │ │ └ IntegerConstant
    │ │   └ 10 (Integer)
    │ └ Statement
    │   └ StatementList
    │     └ AssignmentStatement
    │       ├ Identifier
    │       │ └ a (str)
    │       └ AdditiveExpression
    │         ├ Identifier
    │         │ └ a (str)
    │         ├ + (AdditiveOperator)
    │         └ IntegerConstant
    │           └ 1 (Integer)
    ├ Statement
    │ └ StatementList
    │   ├ AssignmentStatement
    │   │ ├ Identifier
    │   │ │ └ b (str)
    │   │ └ IntegerConstant
    │   │   └ 1 (Integer)
    │   ├ WhileStatement
    │   │ ├ RelationalExpression
    │   │ │ ├ Identifier
    │   │ │ │ └ b (str)
    │   │ │ ├ < (RelationalOperator)
    │   │ │ └ IntegerConstant
    │   │ │   └ 11 (Integer)
    │   │ └ Statement
    │   │   └ StatementList
    │   │     ├ AssignmentStatement
    │   │     │ ├ IndexedVariable
    │   │     │ │ ├ Identifier
    │   │     │ │ │ └ d (str)
    │   │     │ │ └ Identifier
    │   │     │ │   └ b (str)
    │   │     │ └ AdditiveExpression
    │   │     │   ├ Identifier
    │   │     │   │ └ b (str)
    │   │     │   ├ + (AdditiveOperator)
    │   │     │   └ MultiplicativeExpression
    │   │     │     ├ Identifier
    │   │     │     │ └ b (str)
    │   │     │     ├ * (MultiplicativeOperator)
    │   │     │     └ Factor
    │   │     │       └ AdditiveExpression
    │   │     │         ├ Identifier
    │   │     │         │ └ b (str)
    │   │     │         ├ - (AdditiveOperator)
    │   │     │         └ IntegerConstant
    │   │     │           └ 1 (Integer)
    │   │     └ AssignmentStatement
    │   │       ├ Identifier
    │   │       │ └ b (str)
    │   │       └ AdditiveExpression
    │   │         ├ Identifier
    │   │         │ └ b (str)
    │   │         ├ + (AdditiveOperator)
    │   │         └ IntegerConstant
    │   │           └ 1 (Integer)
    │   └ ProcedureStatement
    │     ├ Identifier
    │     │ └ sort (str)
    │     └ Identifier
    │       └ d (str)
    ├ AssignmentStatement
    │ ├ IndexedVariable
    │ │ ├ Identifier
    │ │ │ └ k (str)
    │ │ ├ IntegerConstant
    │ │ │ └ 25 (Integer)
    │ │ └ IntegerConstant
    │ │   └ 26 (Integer)
    │ └ IntegerConstant
    │   └ 3 (Integer)
    ├ AssignmentStatement
    │ ├ IndexedVariable
    │ │ ├ Identifier
    │ │ │ └ k (str)
    │ │ ├ IntegerConstant
    │ │ │ └ 25 (Integer)
    │ │ └ IntegerConstant
    │ │   └ 26 (Integer)
    │ └ FloatConstant
    │   └ 3.14 (Float)
    ├ AssignmentStatement
    │ ├ IndexedVariable
    │ │ ├ Identifier
    │ │ │ └ k (str)
    │ │ ├ IntegerConstant
    │ │ │ └ 25 (Integer)
    │ │ └ IntegerConstant
    │ │   └ 26 (Integer)
    │ └ AdditiveExpression
    │   ├ IndexedVariable
    │   │ ├ Identifier
    │   │ │ └ k (str)
    │   │ ├ IntegerConstant
    │   │ │ └ 25 (Integer)
    │   │ └ IntegerConstant
    │   │   └ 26 (Integer)
    │   ├ + (AdditiveOperator)
    │   └ IntegerConstant
    │     └ 3 (Integer)
    ├ AssignmentStatement
    │ ├ IndexedVariable
    │ │ ├ Identifier
    │ │ │ └ k (str)
    │ │ ├ IntegerConstant
    │ │ │ └ 25 (Integer)
    │ │ └ IntegerConstant
    │ │   └ 126 (Integer)
    │ └ FloatConstant
    │   └ 3.14 (Float)
    ├ AssignmentStatement
    │ ├ IndexedVariable
    │ │ ├ Identifier
    │ │ │ └ k (str)
    │ │ ├ IntegerConstant
    │ │ │ └ 125 (Integer)
    │ │ └ IntegerConstant
    │ │   └ 26 (Integer)
    │ └ FloatConstant
    │   └ 3.14 (Float)
    └ AssignmentStatement
      ├ IndexedVariable
      │ ├ Identifier
      │ │ └ k (str)
      │ ├ IntegerConstant
      │ │ └ 125 (Integer)
      │ └ IntegerConstant
      │   └ 126 (Integer)
      └ FloatConstant
        └ 3.14 (Float)
