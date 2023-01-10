program sequential_search;
uses crt;
label awal;
var pil:char;
      lg :char;
const
  nmin = 1;
  nmax = 100;
type
  arrint = array [nmin..nmax] of integer;
var
  x         : integer;
  tabint  : arrint;
  n,i       : integer;
  indeks : integer;
  function seqsearch1(xx  :  integer): integer;
  var i    : integer;
 begin
   i := 1;
   while ((i<>  xx)) do
   i:=i+1;
   if tabint[i] = xx then
     seqsearch1:=i;
     else
     seqsearch1:=0;
 end;

begin
  clrscr;
  write('input nilai n = '); readln(n);
  writeln;
  for i:=1 to n do
     begin
        write('Tabint[',i,'] = '); readln(tabint[i]);
     end;
  write('Nilai yang dicari = '); readln(x);
  writeln;
  indeks:=seqsearch1(x);
  if indeks <> 0 then
     write(x,' ditemukan pada indeks ke-',indeks)
     else
     write(x,' tidak ditemukan');
  writeln;
writeln;
readln;
end.
