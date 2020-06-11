program foo(input, output, error) ;
   // variable declaraions
   var a, b, c, sum: integer;
   var d, e: array [ 1 .. 10 ] of integer; 
   var g, h: real;
   var k: array [ 23 .. 57 ] of array [ 23 .. 57 ] of real; 

   function  addition(a, b: integer) : integer;
      var c: real;  // local declaration
      begin
         addition := a + b   // this is the return value
      end;

   begin
      a := 1;

      while (a < 10) do
      begin
         sum := 10 + a;
         a := a + 1
      end;

      begin
         b := 1;
         while (b < 11) do
         begin
            d[b] := b + b * (b - 1);
            b := b + 1
         end
      end;

      k[25][26] := 3;     // good
      k[25][26] := k[25][26] + 3;     // good
      k[a+35][a+30] := 3   // Can your compiler generate run-time range checks?

   end.
