program qSort3UAS;
const
 n = 6-1;
type larik=array of integer;
var
 A: larik;
 i: integer;
 kekiri:boolean;
 file1:TextFile;
procedure print();
var
 i: integer;
begin
 for i := 0 to n do
 write(A[i], ' ');
 Writeln();
end;
procedure tukar(var a, b:integer);
 var c:integer;
begin
 c:=a;
 a:=b;
 b:=c;
end;
function pisah(awal: integer; akhir: integer):integer;
var
 pivot, kiri, kanan: integer;
begin
 pivot := awal;
 kiri := awal;
 kanan := akhir;
 kekiri:=true;
 repeat
 while kekiri and (kiri<kanan) do
 if (A[pivot]<= A[kanan] ) then
 begin
 if (kanan>pivot) then dec(kanan);
 end
 else
 begin
 writeln('left ',kiri, ' loc ',pivot, ' right ', kanan);
 tukar (A[pivot],A[kanan]);
 pivot:=kanan;
 kekiri:=false;
 write('Urutan data terakhir ');
 print();
 writeln('Tukar elmn ke ',kiri, ' dgn elmn ke ', kanan);
 end;
 write('Urutan data terakhir ');
 print();
 while (not kekiri) and (kiri<kanan) do
 if (A[pivot]>= A[kiri] ) then
 begin
 if (kiri<pivot) then inc(kiri);
 end
 else
 begin
 tukar (A[pivot],A[kiri]);
 pivot:=kiri;
 kekiri:=true;
 write('Urutan data terakhir ');
 print();
 writeln('pos left geser ke kanan: pos left ', kiri);
 end;
 until (kiri=kanan);
 write('Urutan data terakhir ');
 print();
 pisah:=pivot;
 writeln('left ',kiri, ' loc ',pivot, ' right ', kanan);
end;
procedure qsort(awal:integer; akhir:integer);
 var lok:integer;
begin
 if (awal<akhir) then
 begin
 writeln('awal ', awal, ' akhir ', akhir);
 lok:=pisah (awal, akhir);
 qsort(awal,lok-1);
 qsort(lok+1,akhir);
 end;
end;
begin
 setlength(A,n);
 try
 writeln('Masukkan 6 bil integer');
 for i := 0 to n do
 read(A[i]);
 write('larik sblm disortir: ');
 writeln; write('Urutan data terakhir ');
 print();
 qSort(0, n);
 write('larik sesudah disortir: ');
 writeln; write('Urutan data terakhir ');
 print();
 finally
 CloseFile(file1);
 end;
 readln(i);
end.