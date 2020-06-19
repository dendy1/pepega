======== AST ========
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
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ arr
  │   └ Type
  │     └ ArrayType
  │       ├ IndexRange
  │       │ ├ IntegerConstant
  │       │ │ └ 1
  │       │ └ IntegerConstant
  │       │   └ 9
  │       └ Type
  │         └ ArrayType
  │           ├ IndexRange
  │           │ ├ IntegerConstant
  │           │ │ └ 1
  │           │ └ IntegerConstant
  │           │   └ 9
  │           └ Type
  │             └ integer
  └ StatementList
    ├ AssignmentStatement
    │ ├ IndexedVariable
    │ │ ├ Identifier
    │ │ │ └ arr
    │ │ ├ ConstantVariable
    │ │ │ └ IntegerConstant
    │ │ │   └ 1
    │ │ └ ConstantVariable
    │ │   └ IntegerConstant
    │ │     └ 1
    │ └ ConstantVariable
    │   └ IntegerConstant
    │     └ 1234
    ├ AssignmentStatement
    │ ├ IndexedVariable
    │ │ ├ Identifier
    │ │ │ └ arr
    │ │ ├ ConstantVariable
    │ │ │ └ IntegerConstant
    │ │ │   └ 1
    │ │ └ ConstantVariable
    │ │   └ IntegerConstant
    │ │     └ 2
    │ └ ConstantVariable
    │   └ IntegerConstant
    │     └ 5678
    ├ AssignmentStatement
    │ ├ IndexedVariable
    │ │ ├ Identifier
    │ │ │ └ arr
    │ │ ├ ConstantVariable
    │ │ │ └ IntegerConstant
    │ │ │   └ 2
    │ │ └ ConstantVariable
    │ │   └ IntegerConstant
    │ │     └ 1
    │ └ ConstantVariable
    │   └ IntegerConstant
    │     └ 1324
    ├ AssignmentStatement
    │ ├ IndexedVariable
    │ │ ├ Identifier
    │ │ │ └ arr
    │ │ ├ ConstantVariable
    │ │ │ └ IntegerConstant
    │ │ │   └ 2
    │ │ └ ConstantVariable
    │ │   └ IntegerConstant
    │ │     └ 2
    │ └ ConstantVariable
    │   └ IntegerConstant
    │     └ 5768
    └ ProcedureStatement
      ├ Identifier
      │ └ printint
      └ Arguments
        └ AdditiveExpression
          ├ IndexedVariable
          │ ├ Identifier
          │ │ └ arr
          │ ├ ConstantVariable
          │ │ └ IntegerConstant
          │ │   └ 1
          │ └ ConstantVariable
          │   └ IntegerConstant
          │     └ 1
          ├ +
          ├ IndexedVariable
          │ ├ Identifier
          │ │ └ arr
          │ ├ ConstantVariable
          │ │ └ IntegerConstant
          │ │   └ 1
          │ └ ConstantVariable
          │   └ IntegerConstant
          │     └ 2
          ├ +
          ├ IndexedVariable
          │ ├ Identifier
          │ │ └ arr
          │ ├ ConstantVariable
          │ │ └ IntegerConstant
          │ │   └ 2
          │ └ ConstantVariable
          │   └ IntegerConstant
          │     └ 1
          ├ +
          └ IndexedVariable
            ├ Identifier
            │ └ arr
            ├ ConstantVariable
            │ └ IntegerConstant
            │   └ 2
            └ ConstantVariable
              └ IntegerConstant
                └ 2


======== AST AFTER SEMANTIC ANALYSIS ========
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
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ arr
  │   └ Type
  │     └ ArrayType
  │       ├ IndexRange
  │       │ ├ IntegerConstant
  │       │ │ └ 1
  │       │ └ IntegerConstant
  │       │   └ 9
  │       └ Type
  │         └ ArrayType
  │           ├ IndexRange
  │           │ ├ IntegerConstant
  │           │ │ └ 1
  │           │ └ IntegerConstant
  │           │   └ 9
  │           └ Type
  │             └ integer
  └ StatementList
    ├ AssignmentStatement (integer)
    │ ├ IndexedVariable (integer)
    │ │ ├ Identifier
    │ │ │ └ arr
    │ │ ├ ConstantVariable (integer)
    │ │ │ └ IntegerConstant (integer)
    │ │ │   └ 1
    │ │ └ ConstantVariable (integer)
    │ │   └ IntegerConstant (integer)
    │ │     └ 1
    │ └ ConstantVariable (integer)
    │   └ IntegerConstant (integer)
    │     └ 1234
    ├ AssignmentStatement (integer)
    │ ├ IndexedVariable (integer)
    │ │ ├ Identifier
    │ │ │ └ arr
    │ │ ├ ConstantVariable (integer)
    │ │ │ └ IntegerConstant (integer)
    │ │ │   └ 1
    │ │ └ ConstantVariable (integer)
    │ │   └ IntegerConstant (integer)
    │ │     └ 2
    │ └ ConstantVariable (integer)
    │   └ IntegerConstant (integer)
    │     └ 5678
    ├ AssignmentStatement (integer)
    │ ├ IndexedVariable (integer)
    │ │ ├ Identifier
    │ │ │ └ arr
    │ │ ├ ConstantVariable (integer)
    │ │ │ └ IntegerConstant (integer)
    │ │ │   └ 2
    │ │ └ ConstantVariable (integer)
    │ │   └ IntegerConstant (integer)
    │ │     └ 1
    │ └ ConstantVariable (integer)
    │   └ IntegerConstant (integer)
    │     └ 1324
    ├ AssignmentStatement (integer)
    │ ├ IndexedVariable (integer)
    │ │ ├ Identifier
    │ │ │ └ arr
    │ │ ├ ConstantVariable (integer)
    │ │ │ └ IntegerConstant (integer)
    │ │ │   └ 2
    │ │ └ ConstantVariable (integer)
    │ │   └ IntegerConstant (integer)
    │ │     └ 2
    │ └ ConstantVariable (integer)
    │   └ IntegerConstant (integer)
    │     └ 5768
    └ ProcedureStatement (void)
      ├ Identifier
      │ └ printint
      └ Arguments
        └ AdditiveExpression (integer)
          ├ IndexedVariable (integer)
          │ ├ Identifier
          │ │ └ arr
          │ ├ ConstantVariable (integer)
          │ │ └ IntegerConstant (integer)
          │ │   └ 1
          │ └ ConstantVariable (integer)
          │   └ IntegerConstant (integer)
          │     └ 1
          ├ +
          ├ IndexedVariable (integer)
          │ ├ Identifier
          │ │ └ arr
          │ ├ ConstantVariable (integer)
          │ │ └ IntegerConstant (integer)
          │ │   └ 1
          │ └ ConstantVariable (integer)
          │   └ IntegerConstant (integer)
          │     └ 2
          ├ +
          ├ IndexedVariable (integer)
          │ ├ Identifier
          │ │ └ arr
          │ ├ ConstantVariable (integer)
          │ │ └ IntegerConstant (integer)
          │ │   └ 2
          │ └ ConstantVariable (integer)
          │   └ IntegerConstant (integer)
          │     └ 1
          ├ +
          └ IndexedVariable (integer)
            ├ Identifier
            │ └ arr
            ├ ConstantVariable (integer)
            │ └ IntegerConstant (integer)
            │   └ 2
            └ ConstantVariable (integer)
              └ IntegerConstant (integer)
                └ 2


======== BYTECODE ========
Traceback (most recent call last):
  File "F:\Projects\pepega\pepega\tests.py", line 32, in run_tests
    compiler.generate_code()
  File "F:\Projects\pepega\pepega\src\Compiler.py", line 27, in generate_code
    translator_visitor.visit(self.AST)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 46, in ff
    return dispatcher(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 66, in __call__
    return d(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Translation\TranslatorVisitor.py", line 23, in visit
    self.visit(child)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 46, in ff
    return dispatcher(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 66, in __call__
    return d(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Translation\TranslatorVisitor.py", line 29, in visit
    self.visit(child)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 46, in ff
    return dispatcher(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 66, in __call__
    return d(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Translation\TranslatorVisitor.py", line 83, in visit
    self.visit(child)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 46, in ff
    return dispatcher(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 66, in __call__
    return d(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Translation\TranslatorVisitor.py", line 185, in visit
    self.visit(child)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 46, in ff
    return dispatcher(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 66, in __call__
    return d(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Translation\TranslatorVisitor.py", line 193, in visit
    self.visit(child)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 46, in ff
    return dispatcher(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 66, in __call__
    return d(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Translation\TranslatorVisitor.py", line 228, in visit
    self.visit(node[index])
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 46, in ff
    return dispatcher(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Visitor\visitor.py", line 66, in __call__
    return d(*args, **kw)
  File "F:\Projects\pepega\pepega\src\Translation\TranslatorVisitor.py", line 253, in visit
    raise TranslatorError("IndexedVariable is not supported!")
src.Exceptions.TranslatorError: IndexedVariable is not supported!

