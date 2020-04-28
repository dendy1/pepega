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
