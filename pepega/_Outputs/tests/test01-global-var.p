Program
├ Identifier
│ └ ab (str)
├ Identifier
│ └ cd (str)
├ Identifier
│ └ ef (str)
├ Identifier
│ └ gh (str)
└ Block
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ ij (str)
  │   ├ Identifier
  │   │ └ op (str)
  │   └ Type
  │     └ integer (SimpleType)
  ├ FunctionDeclarations
  │ └ FunctionDeclaration
  │   ├ FunctionHeader
  │   │ ├ Identifier
  │   │ │ └ kl (str)
  │   │ ├ FunctionParameters
  │   │ │ ├ Identifier
  │   │ │ │ └ mn (str)
  │   │ │ └ Type
  │   │ │   └ integer (SimpleType)
  │   │ └ Type
  │   │   └ integer (SimpleType)
  │   └ CompoundStatement
  │     └ AssignmentStatement
  │       ├ Identifier
  │       │ └ kl (str)
  │       └ AdditiveExpression
  │         ├ Identifier
  │         │ └ ij (str)
  │         ├ + (AdditiveOperator)
  │         ├ Identifier
  │         │ └ mn (str)
  │         ├ + (AdditiveOperator)
  │         └ Identifier
  │           └ op (str)
  └ CompoundStatement
    └ StatementList
      ├ AssignmentStatement
      │ ├ Identifier
      │ │ └ ij (str)
      │ └ IntegerConstant
      │   └ 45 (Integer)
      ├ Statement
      │ └ IfStatement
      │   ├ RelationalExpression
      │   │ ├ Identifier
      │   │ │ └ ij (str)
      │   │ ├ > (RelationalOperator)
      │   │ └ IntegerConstant
      │   │   └ 1 (Integer)
      │   ├ AssignmentStatement
      │   │ ├ Identifier
      │   │ │ └ op (str)
      │   │ └ IntegerConstant
      │   │   └ 1 (Integer)
      │   └ AssignmentStatement
      │     ├ Identifier
      │     │ └ op (str)
      │     └ IntegerConstant
      │       └ 2 (Integer)
      ├ AssignmentStatement
      │ ├ Identifier
      │ │ └ ij (str)
      │ └ Factor
      │   ├ Identifier
      │   │ └ kl (str)
      │   └ IntegerConstant
      │     └ 55 (Integer)
      └ FunctionStatement
        ├ Identifier
        │ └ printint (str)
        └ Identifier
          └ ij (str)
