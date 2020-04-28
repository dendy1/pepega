Program
├ Identifier
│ └ ab
├ Identifier
│ └ cd
├ Identifier
│ └ ef
├ Identifier
│ └ gh
└ Block
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ ij
  │   └ Type
  │     └ integer
  ├ SubprogramDeclarations
  │ └ SubprogramDeclaration
  │   ├ SubprogramHeader
  │   │ ├ Identifier
  │   │ │ └ kl
  │   │ ├ Arguments
  │   │ │ ├ Identifier
  │   │ │ │ └ mn
  │   │ │ └ Type
  │   │ │   └ integer
  │   │ └ Type
  │   │   └ integer
  │   └ StatementList
  │     └ AssignmentStatement
  │       ├ Identifier
  │       │ └ op
  │       └ AdditiveExpression
  │         ├ Identifier
  │         │ └ ij
  │         ├ +
  │         └ Identifier
  │           └ mn
  └ StatementList
    └ IfStatement
      ├ RelationalExpression
      │ ├ Identifier
      │ │ └ ij
      │ ├ >
      │ └ IntegerConstant
      │   └ 1
      ├ AssignmentStatement
      │ ├ Identifier
      │ │ └ op
      │ └ IntegerConstant
      │   └ 1
      └ AssignmentStatement
        ├ Identifier
        │ └ op
        └ IntegerConstant
          └ 2
