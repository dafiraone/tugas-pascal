program tukar_isi_variabel;

var a,b,c : integer;

begin
  write('Masukkan isi variabel pertama: ');
  readln(a);
  write('Masukkan isi variabel kedua: ');
  readln(b);
  writeln('Variabel sebelum ditukar: ');
  writeln('a = ',a);
  writeln('b = ',b );
  c:=a;
  a:=b;
  b:=c;
  writeln('Variabel Setelah Ditukar');
  writeln('a = ', a);
  writeln('b = ', b);
  writeln;
  writeln('Muhammad Daffa Deli Junior Irawan');
  writeln('NRP : 152022003');
  readln;
end.
