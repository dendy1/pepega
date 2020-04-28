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
  │   └ Type
  │     └ integer (SimpleType)
  ├ SubprogramDeclarations
  │ └ SubprogramDeclaration
  │   ├ SubprogramHeader
  │   │ ├ Identifier
  │   │ │ └ kl (str)
  │   │ ├ Arguments
  │   │ │ ├ Identifier
  │   │ │ │ └ mn (str)
  │   │ │ └ Type
  │   │ │   └ integer (SimpleType)
  │   │ └ Type
  │   │   └ integer (SimpleType)
  │   └ StatementList
  │     └ AssignmentStatement
  │       ├ Identifier
  │       │ └ op (str)
  │       └ AdditiveExpression
  │         ├ Identifier
  │         │ └ ij (str)
  │         ├ + (AdditiveOperator)
  │         └ Identifier
  │           └ mn (str)
  └ StatementList
    └ IfStatement
      ├ RelationalExpression
      │ ├ Identifier
      │ │ └ ij (str)
      │ ├ > (RelationalOperator)
      │ └ IntegerConstant
      │   └ 1 (Integer)
      ├ AssignmentStatement
      │ ├ Identifier
      │ │ └ op (str)
      │ └ IntegerConstant
      │   └ 1 (Integer)
      └ AssignmentStatement
        ├ Identifier
        │ └ op (str)
        └ IntegerConstant
          └ 2 (Integer)
