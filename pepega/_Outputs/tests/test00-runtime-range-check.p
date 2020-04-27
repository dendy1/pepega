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
  │   ├ Identifier
  │   │ └ sum (str)
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
  ├ FunctionDeclarations
  │ └ FunctionDeclaration
  │   ├ FunctionHeader
  │   │ ├ Identifier
  │   │ │ └ addition (str)
  │   │ ├ FunctionParameters
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
  │   └ CompoundStatement
  │     └ AssignmentStatement
  │       ├ Identifier
  │       │ └ addition (str)
  │       └ AdditiveExpression
  │         ├ Identifier
  │         │ └ a (str)
  │         ├ + (AdditiveOperator)
  │         └ Identifier
  │           └ b (str)
  └ CompoundStatement
    └ StatementList
      ├ AssignmentStatement
      │ ├ Identifier
      │ │ └ a (str)
      │ └ IntegerConstant
      │   └ 1 (Integer)
      ├ Statement
      │ └ WhileStatement
      │   ├ Factor
      │   │ └ RelationalExpression
      │   │   ├ Identifier
      │   │   │ └ a (str)
      │   │   ├ < (RelationalOperator)
      │   │   └ IntegerConstant
      │   │     └ 10 (Integer)
      │   └ Statement
      │     └ CompoundStatement
      │       └ StatementList
      │         ├ AssignmentStatement
      │         │ ├ Identifier
      │         │ │ └ sum (str)
      │         │ └ AdditiveExpression
      │         │   ├ IntegerConstant
      │         │   │ └ 10 (Integer)
      │         │   ├ + (AdditiveOperator)
      │         │   └ Identifier
      │         │     └ a (str)
      │         └ AssignmentStatement
      │           ├ Identifier
      │           │ └ a (str)
      │           └ AdditiveExpression
      │             ├ Identifier
      │             │ └ a (str)
      │             ├ + (AdditiveOperator)
      │             └ IntegerConstant
      │               └ 1 (Integer)
      ├ Statement
      │ └ CompoundStatement
      │   └ StatementList
      │     ├ AssignmentStatement
      │     │ ├ Identifier
      │     │ │ └ b (str)
      │     │ └ IntegerConstant
      │     │   └ 1 (Integer)
      │     └ Statement
      │       └ WhileStatement
      │         ├ Factor
      │         │ └ RelationalExpression
      │         │   ├ Identifier
      │         │   │ └ b (str)
      │         │   ├ < (RelationalOperator)
      │         │   └ IntegerConstant
      │         │     └ 11 (Integer)
      │         └ Statement
      │           └ CompoundStatement
      │             └ StatementList
      │               ├ AssignmentStatement
      │               │ ├ IndexedVariable
      │               │ │ ├ Identifier
      │               │ │ │ └ d (str)
      │               │ │ └ Identifier
      │               │ │   └ b (str)
      │               │ └ AdditiveExpression
      │               │   ├ Identifier
      │               │   │ └ b (str)
      │               │   ├ + (AdditiveOperator)
      │               │   └ MultiplicativeExpression
      │               │     ├ Identifier
      │               │     │ └ b (str)
      │               │     ├ * (MultiplicativeOperator)
      │               │     └ Factor
      │               │       └ AdditiveExpression
      │               │         ├ Identifier
      │               │         │ └ b (str)
      │               │         ├ - (AdditiveOperator)
      │               │         └ IntegerConstant
      │               │           └ 1 (Integer)
      │               └ AssignmentStatement
      │                 ├ Identifier
      │                 │ └ b (str)
      │                 └ AdditiveExpression
      │                   ├ Identifier
      │                   │ └ b (str)
      │                   ├ + (AdditiveOperator)
      │                   └ IntegerConstant
      │                     └ 1 (Integer)
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
      └ AssignmentStatement
        ├ IndexedVariable
        │ ├ Identifier
        │ │ └ k (str)
        │ ├ AdditiveExpression
        │ │ ├ Identifier
        │ │ │ └ a (str)
        │ │ ├ + (AdditiveOperator)
        │ │ └ IntegerConstant
        │ │   └ 35 (Integer)
        │ └ AdditiveExpression
        │   ├ Identifier
        │   │ └ a (str)
        │   ├ + (AdditiveOperator)
        │   └ IntegerConstant
        │     └ 30 (Integer)
        └ IntegerConstant
          └ 3 (Integer)
