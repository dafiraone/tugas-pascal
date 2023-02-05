// program Factorial;
// var n:integer;
//   function Dn(n:integer):real;
//   begin
//     if (n=0) then Dn:=1 else
//         Dn:=n*Dn(n-1)
//   end;

// begin
//   write('Masukkan faktorial: ');
//   readln(n);
//   write(n,'! = ',Dn(n):0:0);
//   read(n);
// end.

Program Fibonacci;
uses crt;
var     n,i   : integer;

function fibonacci(n:integer):integer;
begin
        if(n=0) then fibonacci:=0 else
        if(n=1) then fibonacci:=1 else
        fibonacci:=fibonacci(n-1)+fibonacci(n-2);
end;

begin
readln(n);
write(fibonacci(n));

readkey;
end.