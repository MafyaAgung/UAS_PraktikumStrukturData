program quicksorting;
uses
wincrt;
type
array100 = array[1..100] of integer;
var
data :array100;
datacount:integer;

procedure input(var d:array100;var c :integer);
var
code,k :integer;
i:string;
begin
k:=1;
repeat
write('masukkan angka ke- ',k,':');readln(i);
if(i<>'') then
begin
val(i,d[k],code);
if(code<>0)then
d[k]:=0;
end;
inc(k);
until(k>100)or(i='');
c:=k-2;
end;
procedure swap(var a,b : integer);
var
t :integer;
begin
t:=a;
a:=b;
b:=t;
end;

procedure tampil(d:array100;c:integer);
var
i:integer;
begin
for i:=1 to c do
write(d[i]:5);
writeln;
end;

procedure quicksort(var d:array100; a,b:integer);
var
a1,b1,pivot: integer;
begin
a1:=a;
b1:=b;
pivot:=d[(a+b) div 2];
repeat
while(d[a1] inc(a1);
while(d[b1]>pivot) do
dec(b1);
if (a1<=b1) then
begin
swap(d[a1],d[b1]);
inc(a1);
dec(b1);
end;
until (a1>b1);
tampil(d,b);

if (a < b1) then
quicksort(d, a, b1);
if (a1 < b ) then
quicksort(d,a1, b);
end;

begin
input(data,datacount);
writeln('sebelum diurutkan');
tampil(data,datacount);
quicksort(data,1,datacount);
writeln;
writeln('setelah data diurutkan');
tampil(data,datacount);
end.
