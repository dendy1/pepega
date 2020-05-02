program test(in, out, err);
var x, y, z : integer;

function add(a, b : integer) : integer;
var i, j, k : real;
    function mul(c, d : integer) : integer;
    begin
        mul := c * d
    end;
begin
    add := a + b
end;

begin
    x := add(3, 4 + 3);
    z := add(y, 2);
    printInt(x+y+z)
end.

