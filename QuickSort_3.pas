program QuickSort_3;
uses WinCrt;
type Array100 = array [1..100] of integer;
var
Data: Array100;
DataCount: Integer;

procedure InputData(var d: Array100; var c: Integer);
var
Code, k: Integer;
i: String;
begin
k := 1;

Writeln('Quick Sort');
Writeln('-----------');
Writeln;

repeat
Write('Masukkan angka ke-',k,' : ');readln(i);
if(i <> '') then
begin
Val(i,d[k],Code);
if(Code <> 0) then
d[k] := 0;
end;
Inc(k);
until (k > 100) or (i = '');
c := k - 2;
end;

procedure Swap(var a,b: Integer);
var
t: Integer;
begin
t := a;
a := b;
b := t;
end;

procedure Tampil(d: Array100; c: Integer);
var
i: Integer;
begin
for i:=1 to c do
Write(d[i]:5);
Writeln;
end;

procedure Sorting(var d: Array100; a,b: Integer);
var
a1, b1, pivot: Integer;
begin
a1:=a;
b1:=b;
pivot:= d[(a+b) div 2];

repeat
while(d[a1] < pivot) do Inc(a1); while(d[b1] > pivot) do
Dec(b1);
if (a1<=b1) then begin Swap(d[a1], d[b1]); Inc(a1); Dec(b1); end; until (a1 > b1);

Tampil(d,b);

if (a < b1) then Sorting(d,a,b1); 
if (a1 < b) then Sorting(d,a1,b); 
end; 
begin 
InputData(Data, DataCount); 
Writeln; 
Writeln('Sebelum diurutkan'); 
Tampil(Data,DataCount); 
Sorting(Data,1,DataCount); {data, index terkecil, index terbesar/banyak data} 
Writeln; 
Writeln('Sesudah diurutkan'); 
Tampil(Data,DataCount); 
end.
