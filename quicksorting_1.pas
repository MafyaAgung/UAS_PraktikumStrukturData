program quicksorting_1;
uses
crt;
type
Matrix = array[1..100] of integer;

Procedure input(var d:matrix;var n :integer);
var
code,k :integer;
i:string;
begin
  randomize;
  write(' Jumlah data  = ');readln(n);
  for k:=1 to n do
    Begin
      d[k]:=random(100);
      write(d[k], '  ');
    End; writeln;
end;

Procedure tukardata(var a,b : integer);
var t :integer;
begin
    t:=a;a:=b;b:=t;
end;

Procedure cetak(d:matrix;c:integer);
var
i:integer;
begin
   for i:=1 to c do
   write(d[i]:5);
   writeln;
end;

procedure quicksort(var d:matrix; a,b:integer);
var
a1,b1,pivot: integer;
begin
   a1:=a; b1:=b;
   pivot:=d[(a+b) div 2];
   repeat
     while(d[a1]     while(d[b1]>pivot) do dec(b1);
     if (a1<=b1) then
        begin
          tukardata(d[a1],d[b1]);
          inc(a1);
          dec(b1);
        end;
   until (a1>b1);

   cetak(d,b);
   if (a < b1) then quicksort(d, a, b1);
   if (a1 < b ) then quicksort(d,a1, b);
end;

{Program Utama}
var
data :matrix;
n:integer;
begin
clrscr;
  input(data,n);
  writeln('Proses Sorting Data');
  cetak(data,n);
  quicksort(data,1,n);
  writeln;
  writeln('Hasil Sorting Data ');
  cetak(data,n);
  readkey;
end.
