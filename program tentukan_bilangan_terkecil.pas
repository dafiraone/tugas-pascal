program tentukan_bilangan_terkecil;
uses crt;
label ulang;

var bilangan1,bilangan2,bilangan3 : integer;

begin
   ulang: write('Masukkan nilai pertama: ');
   readln(bilangan1);
   write('Masukkan nilai kedua: ');
   readln(bilangan2);
   write('Masukkan nilai ketiga: ');
   readln(bilangan3);

   IF (bilangan1<1) OR (bilangan2<1) OR (bilangan3<1) THEN
        begin
        Clrscr;
        goto ulang;
        end
   ELSE
   IF(bilangan1 <= bilangan2) AND (bilangan2 < bilangan3) THEN
        writeln('Urutan terkecil ke terkecil: ', bilangan1,' ', bilangan2,' ', bilangan3);
   IF(bilangan1 <= bilangan3) AND (bilangan3 < bilangan2) THEN
        writeln('Urutan terkecil ke terbesar: ', bilangan1,' ', bilangan3,' ', bilangan2);
   IF(bilangan2 < bilangan1) AND (bilangan1 < bilangan3) THEN
        writeln('Urutan terkecil ke terbesar: ', bilangan2,' ', bilangan1,' ', bilangan3);
   IF(bilangan2 <= bilangan3) AND (bilangan3 < bilangan1) THEN
        writeln('Urutan terkecil ke terbesar: ', bilangan2,' ', bilangan3,' ', bilangan1);
   IF(bilangan3 < bilangan1) AND (bilangan1 < bilangan2) THEN
        writeln('Urutan terkecil ke terbesar: ', bilangan3,' ', bilangan1,' ', bilangan2);
   IF(bilangan3 < bilangan2) AND (bilangan2 < bilangan1) THEN
        writeln('Urutan terkecil ke terbesar: ', bilangan3,' ', bilangan2,' ', bilangan1);

   IF (bilangan1=bilangan2) AND (bilangan2=bilangan3) THEN
        writeln('Semua nilai SETARA: ', bilangan1,' ', bilangan2,' ', bilangan3);

  writeln('Muhammad Daffa Deli Junior Irawan');
  writeln('NRP : 152022003');
  readln;
end.