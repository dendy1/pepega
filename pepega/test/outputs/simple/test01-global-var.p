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
  └ StatementList
    ├ AssignmentStatement
    │ ├ Identifier
    │ │ └ ij (str)
    │ └ IntegerConstant
    │   └ 45 (Integer)
    ├ IfStatement
    │ ├ RelationalExpression
    │ │ ├ Identifier
    │ │ │ └ ij (str)
    │ │ ├ > (RelationalOperator)
    │ │ └ IntegerConstant
    │ │   └ 1 (Integer)
    │ ├ AssignmentStatement
    │ │ ├ Identifier
    │ │ │ └ op (str)
    │ │ └ IntegerConstant
    │ │   └ 1 (Integer)
    │ └ AssignmentStatement
    │   ├ Identifier
    │   │ └ op (str)
    │   └ IntegerConstant
    │     └ 2 (Integer)
    ├ AssignmentStatement
    │ ├ Identifier
    │ │ └ ij (str)
    │ └ Factor
    │   ├ Identifier
    │   │ └ kl (str)
    │   └ IntegerConstant
    │     └ 55 (Integer)
    └ ProcedureStatement
      ├ Identifier
      │ └ printint (str)
      └ Identifier
        └ ij (str)
