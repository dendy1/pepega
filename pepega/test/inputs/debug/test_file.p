program test(in, out, err);
var x, y, z : integer;

function add(a, b : integer) : array [1..5] of array [1..5] of array [1..5]  of array [1..5] of array [1..5] of string;
begin
    add := a+b
end;

function mul(a, b : array [1..5] of integer) : integer;
begin
    mul := a*b
end;

function div(a, b : array [1..5]  of array [1..5] of integer; c : array [1..5] of real) : array [1..5] of integer;
begin
    div := a/b
end;

begin
    x := add(3, 4);
    y := mul(x, z);
    z := div(y, 2, 3);
    printInt(x+y+z)
end.