program segitiga;
uses crt;

// var dn,i:Integer;
var n,i,j,k:Integer;

begin
   readln(n);


   //Segitiga kanan atas ke kiri bawah
   for i:=1 to n do
   begin
     for j:=n downto i+1 do
       write(' ');
       for k:=1 to i do
       write('*');
       writeln;
   end;

   readkey;
end.
