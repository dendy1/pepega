program test(in, out, err);
var x, y, z : integer;
var arrInt1, arrInt2: array [1..10] of integer;
var arrRe: array [1..10] of real;
var test: boolean;
var a, b, c, d, e : integer;

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
    div := a / b
end;

begin
    x := add(3, 4);
    y := mul(x, z);
    z := div(y, 2, 3);
    x := arrInt1[2];
    arrInt1[1] := arrInt2[6];
    arrInt2 := arrInt1;
    arrRe[4] := 3.0 + arrInt1[5] + arrInt2[3] + 4 * 6.0;
    test := 4 < 5;

    a := 3;
    b := a*3;

    if (not (b > 50)) then
        begin
            c := a+b-2
        end
    else
        begin
            c := b*a-7
        end;

    if(c > 5) then
        begin
            d := c+a-b
        end
    else
        begin
            d := c-a+b
        end;

    e := 7;
    a := 3;
    b := 5;
    c := 7;
    d := 100;

    while(b > a) do
    begin
        b := b-1
    end;

    while(c > b) do
    begin
        c := c-1
    end;

    while(d > c) do
    begin
        d := d - -1
    end;

    printInt(a+b+c+d);
    printInt(x+y+z)
end.