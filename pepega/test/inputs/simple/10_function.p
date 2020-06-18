program test(in, out, err);
var x, y, z : integer;

function div(a, b : integer) : integer;
begin
    div := a / b
end;

begin
    x := div(1, 2);
    y := 4;
    x := x + div(10, 5);
    x := x + 3;
    printint(x)
end.