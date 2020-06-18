# pepega
Компилятор языка Mini-Pascal на языке Python.  
Для парсинга кода используется библиотека [pyPEG2](https://fdik.org/pyPEG/)
## Структура проекта
```
pepega
├ src
│ ├ AST
│ │ ├ ASTNode.py
│ │ └ Parser.py
│ ├ Visitor
│ │ └ visitor.py
│ └ pyPEG
│ │ ├ MiniPascalGrammars.py
│ │ └ pyPEG.py
├ test
│ └ ...
├ main.py
├ tests.py
└ utils.py
```
### [main.py](https://github.com/dendy1/pepega/blob/master/pepega/main.py) 
Главный исполнительный модуль программы. Сейчас в нём вызывается функция [run_tests()](https://github.com/dendy1/pepega/blob/d80ce0df1d1775c658d1ff4ec6751f7396986700/pepega/tests.py#L6) для парсинга тестовых файлов из папки [test/inputs](https://github.com/dendy1/pepega/tree/master/pepega/test/inputs)  

### [tests.py](https://github.com/dendy1/pepega/blob/master/pepega/tests.py)
Модуль, в котором расположена функция [run_tests()](https://github.com/dendy1/pepega/blob/d80ce0df1d1775c658d1ff4ec6751f7396986700/pepega/tests.py#L6). В функции считываются все файлы из папки [test/inputs](https://github.com/dendy1/pepega/tree/master/pepega/test/inputs), и для содержания каждого файла выполняется метод parse библиотеки pyPEG2, который осуществляет разбор кода. Получаемое AST записывается в файл с таким же названием в папку [test/outputs](https://github.com/dendy1/pepega/tree/master/pepega/test/outputs). Ошибки парсинга выводятся в консоль.    

### [utils.py](https://github.com/dendy1/pepega/blob/master/pepega/utils.py)
Модуль для дополнительных функций, таких как поиск всех файлов в директории и т.д.

### [ASTNode.py](https://github.com/dendy1/pepega/blob/master/pepega/src/AST/ASTNode.py)
Модуль, в котором находится класс, описывающий узел синтаксического дерева. Более подробное описание методов и полей класса находится в самом модуле.

### [Parser.py](https://github.com/dendy1/pepega/blob/master/pepega/src/AST/Parser.py)
Модуль, в котором находится класс парсера с доступом к узлам AST и CST и методами для их вывода в консоль.

### [visitor.py](https://github.com/dendy1/pepega/blob/master/pepega/src/Visitor/visitor.py)
Модуль, в котором находится базовый класс для реализации паттерна посетитель. (Пока не используется)

### [MiniPascalGrammars.py](https://github.com/dendy1/pepega/blob/master/pepega/src/pyPEG/MiniPascalGrammars.py)
Модуль, в котором находятся классы для нетерминальных символов [грамматики](https://github.com/dendy1/pepega#peg-%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D0%B0%D1%82%D0%B8%D0%BA%D0%B0-%D1%8F%D0%B7%D1%8B%D0%BA%D0%B0) языка и описание самой грамматики.

### [pyPEG.py](https://github.com/dendy1/pepega/blob/master/pepega/src/pyPEG/pyPEG.py)
Модуль, в котором находятся унаследованные от базовых объектов библиотеки pyPEG классы с методом accept() для реализации паттерна посетитель.

## PEG-грамматика языка
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
## Дополнительная семантика языка
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
## Примеры языка
### Пример 1
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
### Пример 2
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

## Примеры AST генерации
### Input
```
program foo(boo);

    // global variable declarations
    var a, b, c, d: integer;

    // function declarations
    function addition(a, b: integer) : integer;
        var c: integer;
        begin
            addition := a + b
        end;

    // compound statements: "main"
    begin
        a := addition(1, 2);
        putchar(a)
    end.
```
### Output
```
Program
├ Identifier
│ └ foo
├ Identifier
│ └ boo
└ Block
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
  │   └ Type
  │     └ integer
  ├ SubprogramDeclarations
  │ └ SubprogramDeclaration
  │   ├ SubprogramHeader
  │   │ ├ Identifier
  │   │ │ └ addition
  │   │ ├ Arguments
  │   │ │ ├ Identifier
  │   │ │ │ └ a
  │   │ │ ├ Identifier
  │   │ │ │ └ b
  │   │ │ └ Type
  │   │ │   └ integer
  │   │ └ Type
  │   │   └ integer
  │   ├ VariableDeclarations
  │   │ └ VariableDeclaration
  │   │   ├ Identifier
  │   │   │ └ c
  │   │   └ Type
  │   │     └ integer
  │   └ StatementList
  │     └ AssignmentStatement
  │       ├ Identifier
  │       │ └ addition
  │       └ AdditiveExpression
  │         ├ Identifier
  │         │ └ a
  │         ├ +
  │         └ Identifier
  │           └ b
  └ StatementList
    ├ AssignmentStatement
    │ ├ Identifier
    │ │ └ a
    │ └ Factor
    │   ├ Identifier
    │   │ └ addition
    │   └ ExpressionList
    │     ├ IntegerConstant
    │     │ └ 1
    │     └ IntegerConstant
    │       └ 2
    └ ProcedureStatement
      ├ Identifier
      │ └ putchar
      └ Identifier
        └ a
```
