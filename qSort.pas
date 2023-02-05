program qSort;
uses crt;

var
  A: array of integer;
  i, n: integer;

procedure print();
var
  i:integer;
begin
     for i:=1 to n do
     write(A[i], ' ');
     writeln;
end;

function partition(start: integer; _end:integer):integer;
var pivot, i, j, temp: integer;
  begin
       pivot := A[(start + _end) div 2];
       i := start;
       j := _end;

       while i<=j do
             begin
               while A[i] < pivot do
                     inc(i);
               while A[j] > pivot do
                     dec(j);
               if i <= j then
               begin
                 temp := A[i];
                 A[i] := A[j];
                 A[j] := temp;

                 inc(i);
                 dec(j);
               end;
             end;

       partition := i;
  end;

procedure qSort(start: integer; _end: integer);
var
  temp: integer;
begin
     if start < _end then
     begin
       temp := partition(start, _end);

       qSort(start, temp-1);
       qSort(temp, _end);
     end;
end;

begin
  write('Banyak data yang ingin dimasukkan : '); readln(n);
  writeln('Masukkan ', n ,' bil integer');
  setlength(A, n);
  for i := 1 to n do
  begin
    write(i, ' = ');
    readln(A[i]);
  end;


  write('larik sebelum disortir : '); print(); qSort(0,n);
  write('larik setelah disortir : '); print();
  readkey;
end.

