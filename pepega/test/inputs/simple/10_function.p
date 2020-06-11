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

function div(a, b : integer; c : real) : integer;
begin
    div := a/b
end;

begin
    x := add(3, 4);
    y := mul(x, z);
    z := div(y, 2, 3);
    printInt(x+y+z)
end.