======== AST ========
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
  │         │ └ Identifier
  │         │   └ op
  │         └ AdditiveExpression
  │           ├ EntireVariable
  │           │ └ Identifier
  │           │   └ ij
  │           ├ +
  │           └ EntireVariable
  │             └ Identifier
  │               └ mn
  └ StatementList
    └ IfStatement
      ├ RelationalExpression
      │ ├ EntireVariable
      │ │ └ Identifier
      │ │   └ ij
      │ ├ >
      │ └ ConstantVariable
      │   └ IntegerConstant
      │     └ 1
      ├ AssignmentStatement
      │ ├ EntireVariable
      │ │ └ Identifier
      │ │   └ op
      │ └ ConstantVariable
      │   └ IntegerConstant
      │     └ 1
      └ AssignmentStatement
        ├ EntireVariable
        │ └ Identifier
        │   └ op
        └ ConstantVariable
          └ IntegerConstant
            └ 2
Traceback (most recent call last):
  File "F:\Projects\pepega\pepega\tests.py", line 23, in run_tests
    parser.semantic_check()
  File "F:\Projects\pepega\pepega\src\Parser.py", line 18, in semantic_check
    semantic_visitor.visit(self.AST)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 46, in ff
    return dispatcher(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 66, in __call__
    return d(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Semantic\SemanticVisitor.py", line 124, in visit
    self.visit(child)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 46, in ff
    return dispatcher(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 66, in __call__
    return d(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Semantic\SemanticVisitor.py", line 131, in visit
    self.visit(child)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 46, in ff
    return dispatcher(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 66, in __call__
    return d(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Semantic\SemanticVisitor.py", line 168, in visit
    self.visit(child)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 46, in ff
    return dispatcher(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 66, in __call__
    return d(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Semantic\SemanticVisitor.py", line 173, in visit
    self.visit(child)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 46, in ff
    return dispatcher(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 66, in __call__
    return d(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Semantic\SemanticVisitor.py", line 131, in visit
    self.visit(child)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 46, in ff
    return dispatcher(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 66, in __call__
    return d(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Semantic\SemanticVisitor.py", line 246, in visit
    self.visit(child)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 46, in ff
    return dispatcher(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 66, in __call__
    return d(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Semantic\SemanticVisitor.py", line 260, in visit
    self.visit(child)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 46, in ff
    return dispatcher(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 66, in __call__
    return d(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Semantic\SemanticVisitor.py", line 536, in visit
    raise SemanticException("Entire Variable {} is not defined!".format(node.variable_name))
src.Semantic.SemanticVisitor.SemanticException: SemanticExpression: Entire Variable op is not defined!

