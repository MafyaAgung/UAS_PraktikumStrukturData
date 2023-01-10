program QUIKSORT;
uses crt;
type larik=array[1..10] of integer;
var   i:integer;
      data:larik;
      ch : string;

procedure input_data;


begin
clrscr;

writeln ('                          PENGURUTAN DENGAN METODE QUICK SORT');
writeln ('                      -------------------------------------------');
writeln;
writeln;
writeln ('masukan 10 data');
writeln ('=================');
writeln;
  for i := 1 to 10 do {input 10 data}
      begin
      write ('data ke-',i,'=');

      readln (data[i]);
      end;
  clrscr;
  writeln;
  writeln ('************************************');
  for i:= 1 to 10 do
  write(data[i],'  ');

  writeln;
  writeln('*************************************');
  writeln;
  writeln;
  writeln ;
  writeln ( 'Hasil data yang telah diurutkan:');
  writeln ('=====================================');
  end;
procedure TUKARKAN(var d,b:integer);
var t:integer;
begin
t:=d;
d:=b;
b:=t;
end;

procedure quicksort(var A:larik; aw,ak:integer);
var i,j:integer;
procedure atur;

begin
     I:= Aw + 1 ;
     J:= Ak ;

     while A[I] < A[Aw] do inc (I);
     while A[j] >A [Aw] do dec (J);
     while I < J do

     begin
     TUKARKAN (A[I],A[J]);
     while  A[I] < A[Aw] do inc(I);
     while A[J] > A[Aw] do dec(J);
     end;
    TUKARKAN (A [Aw], A [J] )
END;
BEGIN
 IF Aw < Ak THEN
 BEGIN
  ATUR;
  QUICKSORT (A,Aw,J-1);
  QUICKSORT (A,J+1,Ak)
 END
END;



begin
     repeat
     input_data;
     quicksort(data,1,10);
     for i:=1 to 10 do
     write(data[i],'   ');
     begin
     end;
     writeln;
     writeln ('======================================');
     writeln;
     writeln;
     writeln;
     writeln ('di ulang lagi apa enggak...???? (Y/N)');
     readkey;

      ch:= readkey;
      writeln;
      until
      (ch='n') ;
     gotoxy(10,23);  writeln ('>>>>  Thank You   <<<<<<<<');
      readkey;
end.
