program test(in, out, err);
var arr: array [1..10] of integer;
var a, b : integer;
var c, d : real;
begin
    a := 10;
    b := 15;
    c := 5.4;
    d := 3.7;
    printReal(3.5 * 4.7 * (3 + 7) * 4 + (9.3 / 3.1 + a * c * (c / d)) - 0.4 * b + c / d * a * b)
end.
