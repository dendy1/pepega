======== AST ========
Program
├ Identifier
│ └ foo
├ Identifier
│ └ input
├ Identifier
│ └ output
├ Identifier
│ └ error
└ Block
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ g
  │   └ Type
  │     └ integer
  ├ SubprogramDeclarations
  │ └ SubprogramDeclaration
  │   ├ SubprogramHeader
  │   │ ├ Identifier
  │   │ │ └ sum
  │   │ └ ParametersList
  │   │   └ Parameters
  │   │     ├ Identifier
  │   │     │ └ a
  │   │     ├ Identifier
  │   │     │ └ b
  │   │     └ Type
  │   │       └ integer
  │   └ Block
  │     └ StatementList
  │       └ IfStatement
  │         ├ RelationalExpression
  │         │ ├ EntireVariable
  │         │ │ └ Identifier
  │         │ │   └ a
  │         │ ├ <=
  │         │ └ ConstantVariable
  │         │   └ IntegerConstant
  │         │     └ 0
  │         ├ AssignmentStatement
  │         │ ├ EntireVariable
  │         │ │ └ Identifier
  │         │ │   └ g
  │         │ └ AdditiveExpression
  │         │   ├ EntireVariable
  │         │   │ └ Identifier
  │         │   │   └ b
  │         │   ├ +
  │         │   └ ConstantVariable
  │         │     └ IntegerConstant
  │         │       └ 9
  │         └ AssignmentStatement
  │           ├ EntireVariable
  │           │ └ Identifier
  │           │   └ g
  │           └ MultiplicativeExpression
  │             ├ EntireVariable
  │             │ └ Identifier
  │             │   └ b
  │             ├ *
  │             └ ConstantVariable
  │               └ IntegerConstant
  │                 └ 3
  └ StatementList
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ g
    │ └ ConstantVariable
    │   └ IntegerConstant
    │     └ 7
    ├ ProcedureStatement
    │ ├ Identifier
    │ │ └ sum
    │ └ Arguments
    │   ├ ConstantVariable
    │   │ └ IntegerConstant
    │   │   └ 10
    │   └ ConstantVariable
    │     └ IntegerConstant
    │       └ 32
    └ ProcedureStatement
      ├ Identifier
      │ └ sum
      └ Arguments
        ├ SignedFactor
        │ ├ -
        │ └ ConstantVariable
        │   └ IntegerConstant
        │     └ 10
        └ ConstantVariable
          └ IntegerConstant
            └ 21
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
  File "F:\Projects\pepega\pepega\src\Semantic\SemanticVisitor.py", line 280, in visit
    self.visit(node.cond_expr)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 46, in ff
    return dispatcher(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 66, in __call__
    return d(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Semantic\SemanticVisitor.py", line 360, in visit
    self.visit(child)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 46, in ff
    return dispatcher(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 66, in __call__
    return d(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Semantic\SemanticVisitor.py", line 536, in visit
    raise SemanticException("Entire Variable {} is not defined!".format(node.variable_name))
src.Semantic.SemanticVisitor.SemanticException: SemanticExpression: Entire Variable a is not defined!

