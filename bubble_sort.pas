program bubble_sort;
uses crt;

type
    data=array of integer;

var
   i,n:integer;
   a:data;

procedure tukar(var a,b:integer);
var c:integer;
begin
  c:=a;
  a:=b;
  b:=c;
end;

procedure tampil(a:data);
var i:integer;
   begin
     for i:=1 to n do
     write(a[i]:5);
     writeln;
   end;

procedure buble(var a:data);
var i,j: integer;
   begin
     for i:=1 to n-1 do
     begin
       writeln('langkah ',i,'');
       tampil(a);
       for j:=n downto i+1 do
           begin
             if (a[j]<a[j-1]) then tukar(a[j],a[j-1]);
             tampil(a);
           end;
     end;
   end;

begin
  clrscr;
  write('Masukkan jumlah bilangan = '); readln(n);
  setlength(a,n);
  for i:=1 to n do
  begin
    write('data ke',i,' = '); readln(a[i]);
  end;
  writeln;
  writeln('data sebelum diurutkan');
  tampil(a);
  writeln;
  writeln;
  buble(a);
  writeln('data sesudah diurutkan');
  tampil(a);
  writeln;
  readln;
end.

