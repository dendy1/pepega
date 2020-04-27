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
  │   └ Type
  │     └ integer (SimpleType)
  ├ FunctionDeclarations
  │ └ FunctionDeclaration
  │   ├ FunctionHeader
  │   │ ├ Identifier
  │   │ │ └ sum (str)
  │   │ ├ FunctionParameters
  │   │ │ ├ Identifier
  │   │ │ │ └ a (str)
  │   │ │ └ Type
  │   │ │   └ integer (SimpleType)
  │   │ └ Type
  │   │   └ integer (SimpleType)
  │   └ CompoundStatement
  │     └ Statement
  │       └ IfStatement
  │         ├ RelationalExpression
  │         │ ├ Identifier
  │         │ │ └ a (str)
  │         │ ├ <= (RelationalOperator)
  │         │ └ IntegerConstant
  │         │   └ 0 (Integer)
  │         ├ AssignmentStatement
  │         │ ├ Identifier
  │         │ │ └ sum (str)
  │         │ └ IntegerConstant
  │         │   └ 0 (Integer)
  │         └ AssignmentStatement
  │           ├ Identifier
  │           │ └ sum (str)
  │           └ AdditiveExpression
  │             ├ Identifier
  │             │ └ a (str)
  │             ├ + (AdditiveOperator)
  │             └ Factor
  │               ├ Identifier
  │               │ └ sum (str)
  │               └ AdditiveExpression
  │                 ├ Identifier
  │                 │ └ a (str)
  │                 ├ - (AdditiveOperator)
  │                 └ IntegerConstant
  │                   └ 1 (Integer)
  └ CompoundStatement
    └ StatementList
      ├ AssignmentStatement
      │ ├ Identifier
      │ │ └ a (str)
      │ └ Factor
      │   ├ Identifier
      │   │ └ sum (str)
      │   └ IntegerConstant
      │     └ 10 (Integer)
      └ AssignmentStatement
        ├ Identifier
        │ └ b (str)
        └ Factor
          ├ Identifier
          │ └ sum (str)
          └ SignedFactor
            ├ - (Sign)
            └ IntegerConstant
              └ 10 (Integer)
