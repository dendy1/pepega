Program
├ Identifier
│ └ helloworld (str)
├ Identifier
│ └ output (str)
└ Block
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ a (str)
  │   ├ Identifier
  │   │ └ c (str)
  │   └ Type
  │     └ integer (SimpleType)
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ b (str)
  │   └ Type
  │     └ real (SimpleType)
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ d (str)
  │   └ Type
  │     └ ArrayType
  │       ├ IndexRange
  │       │ ├ IntegerConstant
  │       │ │ └ 1 (Integer)
  │       │ └ IntegerConstant
  │       │   └ 10 (Integer)
  │       └ Type
  │         └ integer (SimpleType)
  ├ SubprogramDeclarations
  │ └ SubprogramDeclaration
  │   ├ SubprogramHeader
  │   │ ├ Identifier
  │   │ │ └ add (str)
  │   │ ├ Arguments
  │   │ │ ├ Identifier
  │   │ │ │ └ a (str)
  │   │ │ ├ Identifier
  │   │ │ │ └ b (str)
  │   │ │ └ Type
  │   │ │   └ integer (SimpleType)
  │   │ └ Type
  │   │   └ integer (SimpleType)
  │   └ StatementList
  │     └ AssignmentStatement
  │       ├ Identifier
  │       │ └ add (str)
  │       └ AdditiveExpression
  │         ├ Identifier
  │         │ └ a (str)
  │         ├ + (AdditiveOperator)
  │         └ Identifier
  │           └ b (str)
  └ StatementList
    ├ ProcedureStatement
    │ ├ Identifier
    │ │ └ writeln (str)
    │ └ StringConstant
    │   └ hello (str)
    ├ AssignmentStatement
    │ ├ IndexedVariable
    │ │ ├ Identifier
    │ │ │ └ d (str)
    │ │ └ IntegerConstant
    │ │   └ 3 (Integer)
    │ └ IntegerConstant
    │   └ 5 (Integer)
    ├ AssignmentStatement
    │ ├ IndexedVariable
    │ │ ├ Identifier
    │ │ │ └ d (str)
    │ │ └ IntegerConstant
    │ │   └ 4 (Integer)
    │ └ IntegerConstant
    │   └ 6 (Integer)
    ├ AssignmentStatement
    │ ├ Identifier
    │ │ └ a (str)
    │ └ IntegerConstant
    │   └ 3 (Integer)
    ├ AssignmentStatement
    │ ├ Identifier
    │ │ └ c (str)
    │ └ IndexedVariable
    │   ├ Identifier
    │   │ └ d (str)
    │   └ IntegerConstant
    │     └ 3 (Integer)
    ├ AssignmentStatement
    │ ├ Identifier
    │ │ └ c (str)
    │ └ AdditiveExpression
    │   ├ IndexedVariable
    │   │ ├ Identifier
    │   │ │ └ d (str)
    │   │ └ IntegerConstant
    │   │   └ 4 (Integer)
    │   ├ + (AdditiveOperator)
    │   └ IndexedVariable
    │     ├ Identifier
    │     │ └ d (str)
    │     └ IntegerConstant
    │       └ 3 (Integer)
    ├ AssignmentStatement
    │ ├ Identifier
    │ │ └ a (str)
    │ └ AdditiveExpression
    │   ├ Identifier
    │   │ └ c (str)
    │   ├ + (AdditiveOperator)
    │   └ IntegerConstant
    │     └ 1 (Integer)
    ├ ProcedureStatement
    │ └ Identifier
    │   └ heloo (str)
    ├ ProcedureStatement
    │ ├ Identifier
    │ │ └ heloo (str)
    │ └ ExpressionList
    │   ├ IntegerConstant
    │   │ └ 2 (Integer)
    │   ├ IntegerConstant
    │   │ └ 3 (Integer)
    │   ├ IntegerConstant
    │   │ └ 4 (Integer)
    │   ├ IntegerConstant
    │   │ └ 2 (Integer)
    │   ├ IntegerConstant
    │   │ └ 4 (Integer)
    │   └ IntegerConstant
    │     └ 2 (Integer)
    └ IfStatement
      ├ Identifier
      │ └ a (str)
      └ Statement
        └ StatementList
          ├ ProcedureStatement
          │ └ Identifier
          │   └ a (str)
          ├ AssignmentStatement
          │ ├ Identifier
          │ │ └ c (str)
          │ └ Identifier
          │   └ a (str)
          ├ ProcedureStatement
          │ └ Identifier
          │   └ b (str)
          ├ ProcedureStatement
          │ └ Identifier
          │   └ c (str)
          ├ ProcedureStatement
          │ └ Identifier
          │   └ e (str)
          └ WhileStatement
            ├ IntegerConstant
            │ └ 124 (Integer)
            └ ProcedureStatement
              ├ Identifier
              │ └ v (str)
              └ ExpressionList
                ├ IntegerConstant
                │ └ 2 (Integer)
                ├ IntegerConstant
                │ └ 5 (Integer)
                ├ Identifier
                │ └ b (str)
                └ Identifier
                  └ d (str)
