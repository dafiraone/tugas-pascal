program pengulangan;
uses crt;

var hit,n:Integer;

begin
  n:=10;
  //for hit:=1 to n do
  //begin
  //  writeln('Daffa');
  //end;

  //for hit:=1 to n do
  //begin
  //  writeln('Daffa ke-', hit);
  //end;

  //readln(n);
  //for hit:=1 to n do
  //begin
  //  writeln('Daffa ke-', hit);
  //end;

  //hit:=1;
  //while hit <= n do
  //begin
  //  writeln('Daffa');
  //  hit:=hit+1;
  //end;

  //while hit <= n do
  //begin
  //  writeln('Daffa ke-',hit);
  //  hit:=hit+1;
  //end;

  //readln(n);
  //while hit <= n do
  //begin
  //  writeln('Daffa ke-',hit);
  //  hit:=hit+1;
  //end;

  //hit:=1;
  //repeat
  //  begin
  //    writeln('Daffa');
  //    hit:=hit+1
  //  end;
  //until hit > 10;

  //hit:=1;
  //repeat
  //  begin
  //    writeln('Daffa ke-',hit);
  //    hit:=hit+1
  //  end;
  //until hit > 10;

  read(n);
  repeat
    begin
      writeln('Daffa ke-',hit);
      hit:=hit+1
    end;
  until n < hit;

  readKey;
end.

