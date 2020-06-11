program test(in, out, err);
var x, y, z : integer;
var str : string;

function add(a, b : integer) : integer;
    var i, j, k : real;

    function mul(c, d : integer) : integer;
    begin
        mul := c * d
    end;

begin
    add := mul(a,b)
end;

begin
    str := "hello";
    x := add(3, 4 + 3);
    z := add(y, 2);
    printInt(x+y+z)
end.

