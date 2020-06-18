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
  │   │ └ a
  │   ├ Identifier
  │   │ └ b
  │   └ Type
  │     └ integer
  ├ SubprogramDeclarations
  │ └ SubprogramDeclaration
  │   ├ SubprogramHeader
  │   │ ├ Identifier
  │   │ │ └ sum
  │   │ ├ ParametersList
  │   │ │ └ Parameters
  │   │ │   ├ Identifier
  │   │ │   │ └ a
  │   │ │   ├ Identifier
  │   │ │   │ └ b
  │   │ │   └ Type
  │   │ │     └ integer
  │   │ └ Type
  │   │   └ integer
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
  │         │ │   └ sum
  │         │ └ ConstantVariable
  │         │   └ IntegerConstant
  │         │     └ 0
  │         └ AssignmentStatement
  │           ├ EntireVariable
  │           │ └ Identifier
  │           │   └ sum
  │           └ AdditiveExpression
  │             ├ EntireVariable
  │             │ └ Identifier
  │             │   └ a
  │             ├ +
  │             └ ProcedureStatement
  │               ├ Identifier
  │               │ └ sum
  │               └ Arguments
  │                 ├ AdditiveExpression
  │                 │ ├ EntireVariable
  │                 │ │ └ Identifier
  │                 │ │   └ a
  │                 │ ├ -
  │                 │ └ ConstantVariable
  │                 │   └ IntegerConstant
  │                 │     └ 1
  │                 └ ConstantVariable
  │                   └ IntegerConstant
  │                     └ 0
  └ StatementList
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ a
    │ └ ProcedureStatement
    │   ├ Identifier
    │   │ └ sum
    │   └ Arguments
    │     └ ConstantVariable
    │       └ IntegerConstant
    │         └ 10
    ├ AssignmentStatement
    │ ├ EntireVariable
    │ │ └ Identifier
    │ │   └ a
    │ └ ProcedureStatement
    │   ├ Identifier
    │   │ └ sum
    │   └ Arguments
    │     ├ ConstantVariable
    │     │ └ IntegerConstant
    │     │   └ 10
    │     └ ConstantVariable
    │       └ IntegerConstant
    │         └ 20
    └ AssignmentStatement
      ├ EntireVariable
      │ └ Identifier
      │   └ b
      └ ProcedureStatement
        ├ Identifier
        │ └ sum
        └ Arguments
          ├ SignedFactor
          │ ├ -
          │ └ ConstantVariable
          │   └ IntegerConstant
          │     └ 10
          ├ ConstantVariable
          │ └ IntegerConstant
          │   └ 4
          └ ConstantVariable
            └ IntegerConstant
              └ 7


======== AST AFTER SEMANTIC ANALYSIS ========
Traceback (most recent call last):
  File "F:\Projects\pepega\pepega\tests.py", line 28, in run_tests
    compiler.semantic_check()
  File "F:\Projects\pepega\pepega\src\Compiler.py", line 23, in semantic_check
    semantic_visitor.visit(self.AST)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 46, in ff
    return dispatcher(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 66, in __call__
    return d(*args, **kw)
  File "F:\Projects\pepega\pepega\src\SemanticAnalysis\SemanticVisitor.py", line 128, in visit
    self.visit(child)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 46, in ff
    return dispatcher(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 66, in __call__
    return d(*args, **kw)
  File "F:\Projects\pepega\pepega\src\SemanticAnalysis\SemanticVisitor.py", line 135, in visit
    self.visit(child)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 46, in ff
    return dispatcher(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 66, in __call__
    return d(*args, **kw)
  File "F:\Projects\pepega\pepega\src\SemanticAnalysis\SemanticVisitor.py", line 172, in visit
    self.visit(child)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 46, in ff
    return dispatcher(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 66, in __call__
    return d(*args, **kw)
  File "F:\Projects\pepega\pepega\src\SemanticAnalysis\SemanticVisitor.py", line 177, in visit
    self.visit(child)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 46, in ff
    return dispatcher(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 66, in __call__
    return d(*args, **kw)
  File "F:\Projects\pepega\pepega\src\SemanticAnalysis\SemanticVisitor.py", line 135, in visit
    self.visit(child)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 46, in ff
    return dispatcher(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 66, in __call__
    return d(*args, **kw)
  File "F:\Projects\pepega\pepega\src\SemanticAnalysis\SemanticVisitor.py", line 246, in visit
    self.visit(child)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 46, in ff
    return dispatcher(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 66, in __call__
    return d(*args, **kw)
  File "F:\Projects\pepega\pepega\src\SemanticAnalysis\SemanticVisitor.py", line 285, in visit
    self.visit(node.else_body_stmt)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 46, in ff
    return dispatcher(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 66, in __call__
    return d(*args, **kw)
  File "F:\Projects\pepega\pepega\src\SemanticAnalysis\SemanticVisitor.py", line 260, in visit
    self.visit(child)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 46, in ff
    return dispatcher(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 66, in __call__
    return d(*args, **kw)
  File "F:\Projects\pepega\pepega\src\SemanticAnalysis\SemanticVisitor.py", line 444, in visit
    self.visit(node[index])
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 46, in ff
    return dispatcher(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 66, in __call__
    return d(*args, **kw)
  File "F:\Projects\pepega\pepega\src\SemanticAnalysis\SemanticVisitor.py", line 315, in visit
    if len(proc_symbol.params) != node.args_count:
AttributeError: 'VariableSymbol' object has no attribute 'params'

