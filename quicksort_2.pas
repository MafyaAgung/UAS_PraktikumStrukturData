program quicksort_2;

{$APPTYPE CONSOLE}
uses
  SysUtils;
Type
 TipeArray = string[20];
 ArrayUrut = array[1..1000] of TipeArray;
 Procedure QuickSort(var x      : ArrayUrut; Bawah, Atas : word);
 var
   I, J   : word;
   Sementara : TipeArray;
 Begin
   While Atas > bawah Do
   begin
   I := Bawah;
   J := Atas;
   Sementara := X[Bawah];
   While I < J Do Begin
     While X[J] > Sementara Do J := J - 1;
     X[I] := X[J];
     While (I<J) And (X[I] <= Sementara) Do I := I + 1;
     X[J] := x[I];
   end;

   X[I] := Sementara;
   QuickSort(X, Bawah, I-1);
   Bawah := I + 1;
 end;
end;
Var
  Nama : ArrayUrut;
  N, I : word;
Begin
  Write('Jumlah data yang akan diurutkan ?'); ReadLn(N);
  WriteLn;
  WriteLn('Masukkan data :');
  For I:=1 to N Do Begin
     Write('Data ke ',I,' ? '); ReadLn(Nama[I]);
 end;
 QuickSort(Nama,1,N);
 WriteLn;
 WriteLn('Data yang telah di urut :');
 WriteLn('-------------------------');
 For I := 1 To N Do
    WriteLn(Nama[I]);
readln;
 end.
