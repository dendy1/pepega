Program
├ Identifier
│ └ test
├ Identifier
│ └ in
├ Identifier
│ └ out
├ Identifier
│ └ err
└ Block
  └ StatementList
    └ ProcedureStatement
      ├ Identifier
      │ └ printreal
      └ Arguments
        └ AdditiveExpression
          ├ MultiplicativeExpression
          │ ├ ConstantVariable
          │ │ └ RealConstant
          │ │   └ 3.5
          │ ├ *
          │ ├ ConstantVariable
          │ │ └ RealConstant
          │ │   └ 4.7
          │ ├ *
          │ ├ IntegerConstant
          │ │ └ 3
          │ ├ *
          │ └ IntegerConstant
          │   └ 4
          ├ +
          ├ MultiplicativeExpression
          │ ├ ConstantVariable
          │ │ └ RealConstant
          │ │   └ 9.3
          │ ├ /
          │ └ ConstantVariable
          │   └ RealConstant
          │     └ 3.1
          ├ -
          └ ConstantVariable
            └ RealConstant
              └ 0.4
