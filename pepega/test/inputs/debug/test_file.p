program test(in, out, err);
var z, y : integer;
var x : real;

function add(a, b : integer) : real;
    function mul(a, b : integer) : integer;
    begin
        mul := a * b
    end;
begin
    add := mul(a,b) + 2
end;

function div(a, b : integer) : integer;
begin
    div := a / b
end;

begin
    x := add(3, 4);
    y := 3;
    z := y + 10;
    printreal(x);
    printReal(z);
    printreal(3.5)
end.