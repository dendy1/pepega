program test(in, out, err);
var x, y, z : integer;

function add(a, b : integer) : integer;
begin
    add := a+b
end;

function mul(a, b : integer) : integer;
begin
    mul := a*b
end;

begin
    rer(2,3 ,4);
    x := add(3, 4);
    y := mul(x, z);
    z := add(y, 2);
    printInt(x+y+z)
end.

