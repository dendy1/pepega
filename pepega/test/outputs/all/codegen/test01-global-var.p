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
  │   ├ Identifier
  │   │ └ op
  │   └ Type
  │     └ integer
  ├ SubprogramDeclarations
  │ └ SubprogramDeclaration
  │   ├ SubprogramHeader
  │   │ ├ Identifier
  │   │ │ └ kl
  │   │ ├ ParametersList
  │   │ │ └ Parameters
  │   │ │   ├ Identifier
  │   │ │   │ └ mn
  │   │ │   └ Type
  │   │ │     └ integer
  │   │ └ Type
  │   │   └ integer
  │   └ Block
  │     └ StatementList
  │       └ AssignmentStatement
  │         ├ EntireVariable
  │         │ └ op
  │         └ AdditiveExpression
  │           ├ EntireVariable
  │           │ └ ij
  │           ├ +
  │           ├ EntireVariable
  │           │ └ mn
  │           ├ +
  │           └ EntireVariable
  │             └ op
  └ StatementList
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ ij
    │ └ IntegerConstant
    │   └ 45
    ├ IfStatement
    │ ├ RelationalExpression
    │ │ ├ EntireVariable
    │ │ │ └ ij
    │ │ ├ >
    │ │ └ IntegerConstant
    │ │   └ 1
    │ ├ AssignmentStatement
    │ │ ├ EntireVariable
    │ │ │ └ op
    │ │ └ IntegerConstant
    │ │   └ 1
    │ └ AssignmentStatement
    │   ├ EntireVariable
    │   │ └ op
    │   └ IntegerConstant
    │     └ 2
    └ AssignmentStatement
      ├ EntireVariable
      │ └ qr
      └ ProcedureStatement
        ├ Identifier
        │ └ kl
        └ Arguments
          └ IntegerConstant
            └ 55
Traceback (most recent call last):
  File "F:\Projects\pepega\pepega\tests.py", line 21, in run_tests
    parser.semantic_check()
  File "F:\Projects\pepega\pepega\src\newAST\NewParser.py", line 17, in semantic_check
    semantic_visitor.visit(self.AST)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 46, in ff
    return dispatcher(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 66, in __call__
    return d(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\Semantic\SemanticVisitor.py", line 27, in visit
    self.visit(child)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 46, in ff
    return dispatcher(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 66, in __call__
    return d(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\Semantic\SemanticVisitor.py", line 34, in visit
    self.visit(child)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 46, in ff
    return dispatcher(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 66, in __call__
    return d(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\Semantic\SemanticVisitor.py", line 159, in visit
    self.visit(child)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 46, in ff
    return dispatcher(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 66, in __call__
    return d(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\Semantic\SemanticVisitor.py", line 164, in visit
    self.visit(child)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 46, in ff
    return dispatcher(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 66, in __call__
    return d(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\Semantic\SemanticVisitor.py", line 215, in visit
    raise SemanticException("SemanticError: Variable '%s' is not defined!" % node.var_name)
src.Visitor.Semantic.SemanticVisitor.SemanticException: SemanticError: Variable 'qr' is not defined!

