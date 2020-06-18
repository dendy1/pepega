# pepega
Компилятор языка Mini-Pascal на языке Python.  
Для парсинга кода используется библиотека [pyPEG2](https://fdik.org/pyPEG/)

## Поддерживаемые операции
- Объявление переменных
- Объявление пользовательских функций и процедур с параметрами (в том числе вложенные функции)
- Выполнение присваивания (:=)
- Базовые математические операции:
  - Сложение (+)
  - Вычитание (-)
  - Умножение (*)
  - Деление без остатка (/)
  - Остаток от деления (%)
- Базовые логические операции:
  - ИЛИ (or)
  - И (and)
  - Отрицания (not)
- Базовые операции сравнения:  
  - Больше (>)
  - Меньше (<)
  - Равно (==)
  - Не равно (!=)
  - Больше или равно (>=)
  - Меньше или равно (<=)
- Условные операции:
  - Операция If (if expression then statement else statement)
  - Операция WHILE (while expression do statement)
- Вызов системных функций (printInt, printReal, printString)
- Вызов пользовательских функций

### Поддерживается синтаксисом и семантикой, но не транслируется в байт-код
- Массивы (в том числе и многомерные) и обращение к элементам массива


## Реализация компилятора
В ходе выполнения проекта были выполнены следующие действия
- Проведён синтаксический анализ с помощью библиотеки [pyPEG2](https://fdik.org/pyPEG/)  
- Проведён [семантический анализ](https://github.com/dendy1/pepega/blob/master/pepega/src/SemanticAnalysis/SemanticVisitor.py)  
- Написан [транслятор](https://github.com/dendy1/pepega/blob/master/pepega/src/Translation/TranslatorVisitor.py) AST-дерева в байт-код самописной виртуальной машины  
- Реализована сама [виртуальная машина](https://github.com/dendy1/pepega/blob/master/pepega/src/VirtualMachine/VirtualMachine.py), команды которой описаны в [OPCodes.py](https://github.com/dendy1/pepega/blob/master/pepega/src/VirtualMachine/OPCodes.py)

# Структура проекта
```
pepega
├ src
│ ├ AST
│ │ ├ ASTNode.py
│ │ └ Parser.py
│ └ pyPEG
│ │ ├ MiniPascalGrammars.py
│ │ └ pyPEGElements.py
│ ├ SemanticAnalysis
│ │ ├ SemanticVisitor.py
│ │ ├ Symbols.py
│ │ └ SymbolTable.py
│ ├ Translation
│ │ ├ OPCodesContext.py
│ │ └ TraslatorVisitor.py
│ ├ VirtualMachine
│ │ ├ BuiltinFunctions.py
│ │ ├ OPCodes.py
│ │ ├ Scope.py
│ │ ├ utils.py
│ │ ├ Values.py
│ │ ├ VirtualMachine.py
│ │ └ VMContext.py
│ ├ Visitor
│ │ ├ VisitorElement.py
│ │ └ visitor.py
├ test
│ └ ...
├ main.py
├ tests.py
└ utils.py
```
## [AST](https://github.com/dendy1/pepega/tree/master/pepega/src/AST)
### [ASTNode.py](https://github.com/dendy1/pepega/blob/master/pepega/src/AST/ASTNode.py)
Модуль, в котором находится класс, описывающий узел синтаксического дерева. Более подробное описание методов и полей класса находится в самом модуле.  

## [pyPEG](https://github.com/dendy1/pepega/tree/master/pepega/src/pyPEG)  
### [MiniPascalGrammars.py](https://github.com/dendy1/pepega/blob/master/pepega/src/pyPEG/MiniPascalGrammars.py)
Модуль, в котором находятся классы для нетерминальных символов [грамматики](https://github.com/dendy1/pepega#peg-%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D0%B0%D1%82%D0%B8%D0%BA%D0%B0-%D1%8F%D0%B7%D1%8B%D0%BA%D0%B0) языка и описание самой грамматики.  

### [pyPEGElements.py](https://github.com/dendy1/pepega/blob/master/pepega/src/pyPEG/pyPEGElements.py)
Модуль, в котором находятся классы, расширяющие базовый функционал классов из библиотеки pyPEG2

## [SemanticAnalysis](https://github.com/dendy1/pepega/tree/master/pepega/src/SemanticAnalysis)
### [SemanticVisitor.py](https://github.com/dendy1/pepega/blob/master/pepega/src/SemanticAnalysis/SemanticVisitor.py)
Класс, реализующий паттерн "Посетитель", в котором находятся методы, осуществляющие семантический анализ узлов AST-дерева
### [Symbols.py](https://github.com/dendy1/pepega/blob/master/pepega/src/SemanticAnalysis/Symbols.py)
Классы для хранения информации элементов, используемых при проведении семантического анализа
### [SymbolTable.py](https://github.com/dendy1/pepega/blob/master/pepega/src/SemanticAnalysis/SymbolTable.py)
Реализация таблицы символов - структуры данных, в которой каждый идентификатор переменной или функции из исходного кода ассоциируется с информацией, связанной с его объявлением или появлением в коде: типом данных, областью видимости и в некоторых случаях местом в памяти (смещением).

## [Translation](https://github.com/dendy1/pepega/tree/master/pepega/src/Translation)
### [OPCodesContext.py](https://github.com/dendy1/pepega/blob/master/pepega/src/Translation/OPCodesContext.py)
Класс, агрегирующий в себе список команд при трансляции в байт-код, и предоставляющий удобные методы для их использования
### [TraslatorVisitor.py](https://github.com/dendy1/pepega/blob/master/pepega/src/Translation/TranslatorVisitor.py)
Класс, реализующий паттерн "Посетитель", в котором находятся методы, осуществляющие трансляюцию узлов AST-дерева в собственный байт-код

## [VirtualMachine](https://github.com/dendy1/pepega/tree/master/pepega/src/VirtualMachine)
### [BuiltinFunctions.py](https://github.com/dendy1/pepega/blob/master/pepega/src/VirtualMachine/BuiltinFunctions.py)
Здесь описаны встроенные функции
### [OPCodes.py](https://github.com/dendy1/pepega/blob/master/pepega/src/VirtualMachine/OPCodes.py)
Класс, описывающий команды байт-кода
### [Scope.py](https://github.com/dendy1/pepega/blob/master/pepega/src/VirtualMachine/Scope.py)
Класс, аналогичный SymbolTable.py, только для виртуальной машины
### [utils.py](https://github.com/dendy1/pepega/blob/master/pepega/src/VirtualMachine/utils.py)
Вспомогательные методы, используемые при работе виртуальной машины
### [Values.py](https://github.com/dendy1/pepega/blob/master/pepega/src/VirtualMachine/Values.py)
Классы для хранения информации элементов-значений, используемых при работе виртуальной машины
### [VirtualMachine.py](https://github.com/dendy1/pepega/blob/master/pepega/src/VirtualMachine/VirtualMachine.py)
Реализация стековой виртуальной машины
### [VMContext.py](https://github.com/dendy1/pepega/blob/master/pepega/src/VirtualMachine/VMContext.py)
Класс, агрегирующий в себе список вызовов (CallStack) и значений (ValueStack), используемые при работе виртуальной машины

## Visitor(https://github.com/dendy1/pepega/tree/master/pepega/src/Visitor)
### [visitor.py](https://github.com/dendy1/pepega/blob/master/pepega/src/Visitor/visitor.py)
Модуль, в котором находится базовый класс для реализации паттерна посетитель. (Пока не используется)
### [VisitorElement.py](https://github.com/dendy1/pepega/blob/master/pepega/src/Visitor/VisitorElement.py)
Модуль, в котором находится класс с методом accept() для реализации паттерна "Посетитель"

## [Compiler.py](https://github.com/dendy1/pepega/blob/master/pepega/src/Compiler.py)
Модуль, в котором находится класс компилятора с доступом к узлам AST и CST, списку команд байт-кода и методами для их вывода в консоль. 

## [Exceptions.py](https://github.com/dendy1/pepega/blob/master/pepega/src/Exceptions.py)
Модуль, в котором находится классы ошибок

## [main.py](https://github.com/dendy1/pepega/blob/master/pepega/main.py) 
Главный исполнительный модуль программы. Сейчас в нём вызывается функция [run_tests()](https://github.com/dendy1/pepega/blob/d80ce0df1d1775c658d1ff4ec6751f7396986700/pepega/tests.py#L6) для парсинга тестовых файлов из папки [test/inputs](https://github.com/dendy1/pepega/tree/master/pepega/test/inputs)  

## [tests.py](https://github.com/dendy1/pepega/blob/master/pepega/tests.py)
Модуль, в котором расположена функция [run_tests()](https://github.com/dendy1/pepega/blob/d80ce0df1d1775c658d1ff4ec6751f7396986700/pepega/tests.py#L6). В функции считываются все файлы из папки [test/inputs](https://github.com/dendy1/pepega/tree/master/pepega/test/inputs), и для содержания каждого файла выполняется метод parse библиотеки pyPEG2, который осуществляет разбор кода. Получаемое AST записывается в файл с таким же названием в папку [test/outputs](https://github.com/dendy1/pepega/tree/master/pepega/test/outputs). Ошибки парсинга выводятся в консоль.    

## [utils.py](https://github.com/dendy1/pepega/blob/master/pepega/utils.py)
Модуль для дополнительных функций, таких как поиск всех файлов в директории и т.д.

# PEG-грамматика языка
```
<program> => "program" <identifier> ("(" <identifier> ("," <identifier>)* ")")? ";" <block> "."
<block> => <variable declarations>* <subprogram declarations>? <compound statement>

<variable declarations> => var (<variable declaration> ";")+
<variable declaration> => <identifier> ("," <identifier>)* ":" <type>
<type> => <array type> | <simple type>
<array type> =>	"array" "[" <index range>+ "]" "of" <type>
<index range> => <integer constant> ".." <integer constant>
<simple type> => <boolean> | <string> | <integer> | <float>

<subprogram declarations> => (<subprogram declaration> ";")+
<subprogram declaration> => <subprogram header> <block>
<subprogram header> => "function" <identifier> "(" (<parameters list>)? ")" ":" <type> ";" | "procedure" <identifier> "(" (<parameters list>)? ")" ";"
<parameters list> => <parameters> ("," <parameters>)*
<parameters> => <identifier> ("," <identifier>)* ":" <type>

<compound statement> => "begin" <statement list>? "end"
<statement list> => <statement> (";" <statement>)*
<statement> => <compound statement> | <assignment statement> | <if statement> | <while statement> | <procedure statement>

<assignment statement> => (<indexed variable> | <entire variable>) ":=" <expression>
<procedure statement> => <identifier> "(" (<arguments>)? ")"
<if statement> => "if" <expression> "then" <statement> ("else" <statement>)?
<while statement> => "while" <expression> "do" <statement>

<arguments> => <expression> ("," <expression>)*
<expression> => <logical expression>
<logical expression> => <relational expression> (<boolean expression> <relational expression>)
<relational expression> => <additive expression> (<relational operator> <additive expression>)?
<additive expression> => <multiplicative expression> (<additive operator> <multiplicative expression>)*
<multiplicative expression> => <singed factor> (<multiplicative operator> <signed factor>)*
<signed factor> => <sign>? <factor>
<factor> => "not" <factor> | <procedure statement> | "(" <expression> ")" | <variable>

<variable> => <constant variable> | <indexed variable> | <entire variable>
<entire variable> => <identifier>
<constant variable> => <real constant> | <integer constant> | <boolean constant> | <string constant> 
<indexed variable> => <identifier>, ("[", <expression>, "]")+

<real constant> => FLOAT
<integer constant> => INTEGER
<boolean constant> => BOOLEAN
<string constant> => "\"" STR "\"" | "\'" STR "\'"

<relational operator> => "==" | "!=" | "<" | "<=" | ">=" | ">"
<sign> => "+" | "-"
<adding operator> => "+" | "-"
<multiplying operator> => "*" | "/" | "%"
<logical operator> => "and" | "or"
```
# Дополнительная семантика языка
1. Запрещено объявлять новые типы.

2. Комментарии обозначены двумя слешами и продолжаются до конца строки. Например,
```
// это комментарий
```

3. Строки являются базовым типом и обозначаются двойными ```"string"``` или одинарными ```'string'``` кавычками.

4. Число может быть целым или с плавающей точкой. Например, 
```
a := 23; // integer
b := 275.34; // float
c := 17.; // float
```

5. Запрещено складывать разные типы (integer и float).

6. У числа в префиксе опционально может быть знак "+"/"-". Например,
```
a := +3 - -7; // a == 10
```

7. Для вызова функции или процедуры нужно обратиться к её имени, добавив при необходимости параметры. Например,
```
foo;
foo(a, b, c);
```
8. Возвращаемое функцией значение - это значение переменной, которая имеет одинаковый с функцией идентификатор.

9. Mini-Pascal - регистронезависимый язык, т.е. слова в нижнем и верхнем регистрах эквивалентны. Например, aBcD = abcd = ABCD - одно и тоже.
# Примеры языка
## Пример 1
```
PROGRAM foo; // заголовок программы
  // декларация переменных
  var a, b: integer;
   
  // простая функция, возвращающее значение типа integer
  function  simplesum(a: integer) : integer;
     begin
        simplesum := a * b
        // simplesum - возвращаемое значение
     end;
     
  // простая процедура с двумя параметрами, не возвращает ничего
  procedure  sum(a, b: integer);
      begin
         if a <= 0 then g := b + 9
         else g := b * 3
      end;

  begin  // Начало программы
     a := 7; b := 13;
     a := 3 + simplesum(10); // вызов функции simplesum
     b := 1 * simplesum(-10) 
  end.   // Конец программы
```
## Пример 2
```
PROGRAM foo;
   // Декларация переменных
   var a, b, c: integer;
   var d, e: array [ 1 .. 10 ] of integer; 

   begin
      // операция присвоения
      a := 6;
      b := a * 15;  
      
      // простой if
      if b > a then a := a * 2 
               else a := a * 3;  
      
      // вложенный if
      if b > a then if b < a - 2 then a := a * 5 
                                 else a := a * 7 
               else a := a / 11 * a;
      
      // ещё один вложенный if
      if b > a then a := a * 2 
               else if b > 5 + a then a := 23 - a
                                 else a := 948 / b;
                                 
      // простой while
      while b > a do a := a * 7;  
       
      // составной while
      while b > a do begin b := b + 3; a := a * 7 end;  
       
      // вложенный while
      while b > a do 
            while c > a + b do 
            begin b := b + 3; a := a * 7 end         
      
   end.   // конец программы
```
Другие примеры можно найти в файлах для [тестирования](https://github.com/dendy1/pepega/tree/master/pepega/test/inputs/simple) компилятора.

# Примеры работы компилятора
Другие примеры работы компилятора можно найти в папке [test](https://github.com/dendy1/pepega/tree/master/pepega/test)  
[Input files](https://github.com/dendy1/pepega/blob/master/pepega/test/inputs)  
[Output files](https://github.com/dendy1/pepega/blob/master/pepega/test/outputs)  
## Input Lines ([input1.txt](https://github.com/dendy1/pepega/blob/master/pepega/test/inputs/input1.txt))
```
program test(in, out, err);
var x, y, z : integer;
var a, b, c, d, e : integer;

function add(a, b : integer) : integer;
begin
    add := a + b
end;

function mul(a, b : integer) : integer;
begin
    mul := a * b
end;

function div(a, b : integer; c : real) : integer;
begin
    div := a / b
end;

begin
    z := 10;
    x := add(3, 4);
    y := mul(x, z);
    z := div(y, 2, 3);

    a := 3;
    b := a * 3;

    if (not (b > 50)) then
        begin
            c := a + b - 2
        end
    else
        begin
            c := b * a - 7
        end;

    if (c > 5) then
        begin
            d := c + a - b
        end
    else
        begin
            d := c - a + b
        end;

    e := 7;
    a := 3;
    b := 5;
    c := 7;
    d := 100;

    while (b > a) do
    begin
        b := b-1
    end;

    while (c > b) do
    begin
        c := c-1
    end;

    while (d > c) do
    begin
        d := d - 1
    end;

    printInt(a+b+c+d);
    printInt(x+y+z)
end.
```
## AST
```
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
  │   │ └ x
  │   ├ Identifier
  │   │ └ y
  │   ├ Identifier
  │   │ └ z
  │   └ Type
  │     └ integer
  ├ VariableDeclarations
  │ └ VariableDeclaration
  │   ├ Identifier
  │   │ └ a
  │   ├ Identifier
  │   │ └ b
  │   ├ Identifier
  │   │ └ c
  │   ├ Identifier
  │   │ └ d
  │   ├ Identifier
  │   │ └ e
  │   └ Type
  │     └ integer
  ├ SubprogramDeclarations
  │ ├ SubprogramDeclaration
  │ │ ├ SubprogramHeader
  │ │ │ ├ Identifier
  │ │ │ │ └ add
  │ │ │ ├ ParametersList
  │ │ │ │ └ Parameters
  │ │ │ │   ├ Identifier
  │ │ │ │   │ └ a
  │ │ │ │   ├ Identifier
  │ │ │ │   │ └ b
  │ │ │ │   └ Type
  │ │ │ │     └ integer
  │ │ │ └ Type
  │ │ │   └ integer
  │ │ └ Block
  │ │   └ StatementList
  │ │     └ AssignmentStatement (integer)
  │ │       ├ EntireVariable (integer)
  │ │       │ └ Identifier
  │ │       │   └ add
  │ │       └ AdditiveExpression (integer)
  │ │         ├ EntireVariable (integer)
  │ │         │ └ Identifier
  │ │         │   └ a
  │ │         ├ +
  │ │         └ EntireVariable (integer)
  │ │           └ Identifier
  │ │             └ b
  │ ├ SubprogramDeclaration
  │ │ ├ SubprogramHeader
  │ │ │ ├ Identifier
  │ │ │ │ └ mul
  │ │ │ ├ ParametersList
  │ │ │ │ └ Parameters
  │ │ │ │   ├ Identifier
  │ │ │ │   │ └ a
  │ │ │ │   ├ Identifier
  │ │ │ │   │ └ b
  │ │ │ │   └ Type
  │ │ │ │     └ integer
  │ │ │ └ Type
  │ │ │   └ integer
  │ │ └ Block
  │ │   └ StatementList
  │ │     └ AssignmentStatement (integer)
  │ │       ├ EntireVariable (integer)
  │ │       │ └ Identifier
  │ │       │   └ mul
  │ │       └ MultiplicativeExpression (integer)
  │ │         ├ EntireVariable (integer)
  │ │         │ └ Identifier
  │ │         │   └ a
  │ │         ├ *
  │ │         └ EntireVariable (integer)
  │ │           └ Identifier
  │ │             └ b
  │ └ SubprogramDeclaration
  │   ├ SubprogramHeader
  │   │ ├ Identifier
  │   │ │ └ div
  │   │ ├ ParametersList
  │   │ │ ├ Parameters
  │   │ │ │ ├ Identifier
  │   │ │ │ │ └ a
  │   │ │ │ ├ Identifier
  │   │ │ │ │ └ b
  │   │ │ │ └ Type
  │   │ │ │   └ integer
  │   │ │ └ Parameters
  │   │ │   ├ Identifier
  │   │ │   │ └ c
  │   │ │   └ Type
  │   │ │     └ real
  │   │ └ Type
  │   │   └ integer
  │   └ Block
  │     └ StatementList
  │       └ AssignmentStatement (integer)
  │         ├ EntireVariable (integer)
  │         │ └ Identifier
  │         │   └ div
  │         └ MultiplicativeExpression (integer)
  │           ├ EntireVariable (integer)
  │           │ └ Identifier
  │           │   └ a
  │           ├ /
  │           └ EntireVariable (integer)
  │             └ Identifier
  │               └ b
  └ StatementList
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ z
    │ └ ConstantVariable (integer)
    │   └ IntegerConstant (integer)
    │     └ 10
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ x
    │ └ ProcedureStatement (integer)
    │   ├ Identifier
    │   │ └ add
    │   └ Arguments
    │     ├ ConstantVariable (integer)
    │     │ └ IntegerConstant (integer)
    │     │   └ 3
    │     └ ConstantVariable (integer)
    │       └ IntegerConstant (integer)
    │         └ 4
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ y
    │ └ ProcedureStatement (integer)
    │   ├ Identifier
    │   │ └ mul
    │   └ Arguments
    │     ├ EntireVariable (integer)
    │     │ └ Identifier
    │     │   └ x
    │     └ EntireVariable (integer)
    │       └ Identifier
    │         └ z
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ z
    │ └ ProcedureStatement (integer)
    │   ├ Identifier
    │   │ └ div
    │   └ Arguments
    │     ├ EntireVariable (integer)
    │     │ └ Identifier
    │     │   └ y
    │     ├ ConstantVariable (integer)
    │     │ └ IntegerConstant (integer)
    │     │   └ 2
    │     └ ConstantVariable (converted to real)
    │       └ IntegerConstant (integer)
    │         └ 3
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ a
    │ └ ConstantVariable (integer)
    │   └ IntegerConstant (integer)
    │     └ 3
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ b
    │ └ MultiplicativeExpression (integer)
    │   ├ EntireVariable (integer)
    │   │ └ Identifier
    │   │   └ a
    │   ├ *
    │   └ ConstantVariable (integer)
    │     └ IntegerConstant (integer)
    │       └ 3
    ├ IfStatement (void)
    │ ├ Factor (boolean)
    │ │ ├ not
    │ │ └ RelationalExpression (boolean)
    │ │   ├ EntireVariable (integer)
    │ │   │ └ Identifier
    │ │   │   └ b
    │ │   ├ >
    │ │   └ ConstantVariable (integer)
    │ │     └ IntegerConstant (integer)
    │ │       └ 50
    │ ├ StatementList
    │ │ └ AssignmentStatement (integer)
    │ │   ├ EntireVariable (integer)
    │ │   │ └ Identifier
    │ │   │   └ c
    │ │   └ AdditiveExpression (integer)
    │ │     ├ EntireVariable (integer)
    │ │     │ └ Identifier
    │ │     │   └ a
    │ │     ├ +
    │ │     ├ EntireVariable (integer)
    │ │     │ └ Identifier
    │ │     │   └ b
    │ │     ├ -
    │ │     └ ConstantVariable (integer)
    │ │       └ IntegerConstant (integer)
    │ │         └ 2
    │ └ StatementList
    │   └ AssignmentStatement (integer)
    │     ├ EntireVariable (integer)
    │     │ └ Identifier
    │     │   └ c
    │     └ AdditiveExpression (integer)
    │       ├ MultiplicativeExpression (integer)
    │       │ ├ EntireVariable (integer)
    │       │ │ └ Identifier
    │       │ │   └ b
    │       │ ├ *
    │       │ └ EntireVariable (integer)
    │       │   └ Identifier
    │       │     └ a
    │       ├ -
    │       └ ConstantVariable (integer)
    │         └ IntegerConstant (integer)
    │           └ 7
    ├ IfStatement (void)
    │ ├ RelationalExpression (boolean)
    │ │ ├ EntireVariable (integer)
    │ │ │ └ Identifier
    │ │ │   └ c
    │ │ ├ >
    │ │ └ ConstantVariable (integer)
    │ │   └ IntegerConstant (integer)
    │ │     └ 5
    │ ├ StatementList
    │ │ └ AssignmentStatement (integer)
    │ │   ├ EntireVariable (integer)
    │ │   │ └ Identifier
    │ │   │   └ d
    │ │   └ AdditiveExpression (integer)
    │ │     ├ EntireVariable (integer)
    │ │     │ └ Identifier
    │ │     │   └ c
    │ │     ├ +
    │ │     ├ EntireVariable (integer)
    │ │     │ └ Identifier
    │ │     │   └ a
    │ │     ├ -
    │ │     └ EntireVariable (integer)
    │ │       └ Identifier
    │ │         └ b
    │ └ StatementList
    │   └ AssignmentStatement (integer)
    │     ├ EntireVariable (integer)
    │     │ └ Identifier
    │     │   └ d
    │     └ AdditiveExpression (integer)
    │       ├ EntireVariable (integer)
    │       │ └ Identifier
    │       │   └ c
    │       ├ -
    │       ├ EntireVariable (integer)
    │       │ └ Identifier
    │       │   └ a
    │       ├ +
    │       └ EntireVariable (integer)
    │         └ Identifier
    │           └ b
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ e
    │ └ ConstantVariable (integer)
    │   └ IntegerConstant (integer)
    │     └ 7
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ a
    │ └ ConstantVariable (integer)
    │   └ IntegerConstant (integer)
    │     └ 3
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ b
    │ └ ConstantVariable (integer)
    │   └ IntegerConstant (integer)
    │     └ 5
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ c
    │ └ ConstantVariable (integer)
    │   └ IntegerConstant (integer)
    │     └ 7
    ├ AssignmentStatement (integer)
    │ ├ EntireVariable (integer)
    │ │ └ Identifier
    │ │   └ d
    │ └ ConstantVariable (integer)
    │   └ IntegerConstant (integer)
    │     └ 100
    ├ WhileStatement (void)
    │ ├ RelationalExpression (boolean)
    │ │ ├ EntireVariable (integer)
    │ │ │ └ Identifier
    │ │ │   └ b
    │ │ ├ >
    │ │ └ EntireVariable (integer)
    │ │   └ Identifier
    │ │     └ a
    │ └ StatementList
    │   └ AssignmentStatement (integer)
    │     ├ EntireVariable (integer)
    │     │ └ Identifier
    │     │   └ b
    │     └ AdditiveExpression (integer)
    │       ├ EntireVariable (integer)
    │       │ └ Identifier
    │       │   └ b
    │       ├ -
    │       └ ConstantVariable (integer)
    │         └ IntegerConstant (integer)
    │           └ 1
    ├ WhileStatement (void)
    │ ├ RelationalExpression (boolean)
    │ │ ├ EntireVariable (integer)
    │ │ │ └ Identifier
    │ │ │   └ c
    │ │ ├ >
    │ │ └ EntireVariable (integer)
    │ │   └ Identifier
    │ │     └ b
    │ └ StatementList
    │   └ AssignmentStatement (integer)
    │     ├ EntireVariable (integer)
    │     │ └ Identifier
    │     │   └ c
    │     └ AdditiveExpression (integer)
    │       ├ EntireVariable (integer)
    │       │ └ Identifier
    │       │   └ c
    │       ├ -
    │       └ ConstantVariable (integer)
    │         └ IntegerConstant (integer)
    │           └ 1
    ├ WhileStatement (void)
    │ ├ RelationalExpression (boolean)
    │ │ ├ EntireVariable (integer)
    │ │ │ └ Identifier
    │ │ │   └ d
    │ │ ├ >
    │ │ └ EntireVariable (integer)
    │ │   └ Identifier
    │ │     └ c
    │ └ StatementList
    │   └ AssignmentStatement (integer)
    │     ├ EntireVariable (integer)
    │     │ └ Identifier
    │     │   └ d
    │     └ AdditiveExpression (integer)
    │       ├ EntireVariable (integer)
    │       │ └ Identifier
    │       │   └ d
    │       ├ -
    │       └ ConstantVariable (integer)
    │         └ IntegerConstant (integer)
    │           └ 1
    ├ ProcedureStatement (void)
    │ ├ Identifier
    │ │ └ printint
    │ └ Arguments
    │   └ AdditiveExpression (integer)
    │     ├ EntireVariable (integer)
    │     │ └ Identifier
    │     │   └ a
    │     ├ +
    │     ├ EntireVariable (integer)
    │     │ └ Identifier
    │     │   └ b
    │     ├ +
    │     ├ EntireVariable (integer)
    │     │ └ Identifier
    │     │   └ c
    │     ├ +
    │     └ EntireVariable (integer)
    │       └ Identifier
    │         └ d
    └ ProcedureStatement (void)
      ├ Identifier
      │ └ printint
      └ Arguments
        └ AdditiveExpression (integer)
          ├ EntireVariable (integer)
          │ └ Identifier
          │   └ x
          ├ +
          ├ EntireVariable (integer)
          │ └ Identifier
          │   └ y
          ├ +
          └ EntireVariable (integer)
            └ Identifier
              └ z
```
## Bytecode
```
0:		 BEGIN_SCOPE 
1:		 DECLARE_LOCAL x
2:		 DECLARE_LOCAL y
3:		 DECLARE_LOCAL z
4:		 DECLARE_LOCAL a
5:		 DECLARE_LOCAL b
6:		 DECLARE_LOCAL c
7:		 DECLARE_LOCAL d
8:		 DECLARE_LOCAL e
9:		 FUNCTION add
10:		 BEGIN_SCOPE 
11:		 ASSIGN b
12:		 ASSIGN a
13:		 PUSH a
14:		 PUSH b
15:		 SUM 
16:		 ASSIGN add
17:		 PUSH add
18:		 RETURN 1
19:		 END_SCOPE 
20:		 FUNCTION mul
21:		 BEGIN_SCOPE 
22:		 ASSIGN b
23:		 ASSIGN a
24:		 PUSH a
25:		 PUSH b
26:		 MULTIPLY 
27:		 ASSIGN mul
28:		 PUSH mul
29:		 RETURN 1
30:		 END_SCOPE 
31:		 FUNCTION div
32:		 BEGIN_SCOPE 
33:		 ASSIGN b
34:		 ASSIGN a
35:		 ASSIGN c
36:		 PUSH a
37:		 PUSH b
38:		 DIVIDE 
39:		 ASSIGN div
40:		 PUSH div
41:		 RETURN 1
42:		 END_SCOPE 
43:		 PUSH 10
44:		 ASSIGN z
45:		 PUSH 3
46:		 PUSH 4
47:		 PUSH add
48:		 CALL 2
49:		 ASSIGN x
50:		 PUSH x
51:		 PUSH z
52:		 PUSH mul
53:		 CALL 2
54:		 ASSIGN y
55:		 PUSH y
56:		 PUSH 2
57:		 PUSH 3
58:		 PUSH div
59:		 CALL 3
60:		 ASSIGN z
61:		 PUSH 3
62:		 ASSIGN a
63:		 PUSH a
64:		 PUSH 3
65:		 MULTIPLY 
66:		 ASSIGN b
67:		 BEGIN_SCOPE 
68:		 PUSH b
69:		 PUSH 50
70:		 COMPARE_GT 
71:		 BOOLEAN_NOT 
72:		 JUMP_NEG 83
73:		 PUSH a
74:		 PUSH b
75:		 SUM 
76:		 PUSH b
77:		 PUSH 2
78:		 SUBTRACT 
79:		 ASSIGN c
80:		 JUMP 90
81:		 END_SCOPE 
82:		 BEGIN_SCOPE 
83:		 PUSH b
84:		 PUSH a
85:		 MULTIPLY 
86:		 PUSH 7
87:		 SUBTRACT 
88:		 ASSIGN c
89:		 END_SCOPE 
90:		 BEGIN_SCOPE 
91:		 PUSH c
92:		 PUSH 5
93:		 COMPARE_GT 
94:		 JUMP_NEG 105
95:		 PUSH c
96:		 PUSH a
97:		 SUM 
98:		 PUSH a
99:		 PUSH b
100:		 SUBTRACT 
101:		 ASSIGN d
102:		 JUMP 113
103:		 END_SCOPE 
104:		 BEGIN_SCOPE 
105:		 PUSH c
106:		 PUSH a
107:		 SUBTRACT 
108:		 PUSH a
109:		 PUSH b
110:		 SUM 
111:		 ASSIGN d
112:		 END_SCOPE 
113:		 PUSH 7
114:		 ASSIGN e
115:		 PUSH 3
116:		 ASSIGN a
117:		 PUSH 5
118:		 ASSIGN b
119:		 PUSH 7
120:		 ASSIGN c
121:		 PUSH 100
122:		 ASSIGN d
123:		 BEGIN_SCOPE 
124:		 PUSH b
125:		 PUSH a
126:		 COMPARE_GT 
127:		 JUMP_NEG 135
128:		 BEGIN_SCOPE 
129:		 PUSH b
130:		 PUSH 1
131:		 SUBTRACT 
132:		 ASSIGN b
133:		 JUMP 123
134:		 END_SCOPE 
135:		 END_SCOPE 
136:		 BEGIN_SCOPE 
137:		 PUSH c
138:		 PUSH b
139:		 COMPARE_GT 
140:		 JUMP_NEG 148
141:		 BEGIN_SCOPE 
142:		 PUSH c
143:		 PUSH 1
144:		 SUBTRACT 
145:		 ASSIGN c
146:		 JUMP 136
147:		 END_SCOPE 
148:		 END_SCOPE 
149:		 BEGIN_SCOPE 
150:		 PUSH d
151:		 PUSH c
152:		 COMPARE_GT 
153:		 JUMP_NEG 161
154:		 BEGIN_SCOPE 
155:		 PUSH d
156:		 PUSH 1
157:		 SUBTRACT 
158:		 ASSIGN d
159:		 JUMP 149
160:		 END_SCOPE 
161:		 END_SCOPE 
162:		 PUSH a
163:		 PUSH b
164:		 SUM 
165:		 PUSH b
166:		 PUSH c
167:		 SUM 
168:		 PUSH c
169:		 PUSH d
170:		 SUM 
171:		 PUSH printint
172:		 CALL 1
173:		 PUSH x
174:		 PUSH y
175:		 SUM 
176:		 PUSH y
177:		 PUSH z
178:		 SUM 
179:		 PUSH printint
180:		 CALL 1
181:		 END_SCOPE 
```
## Program Result
```
6.0
70.66666666666667
```
