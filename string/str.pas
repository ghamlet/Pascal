var s, pat: string;
n:integer;

begin
  n:= 80;
  pat:= '21';
  
  while s <> pat do
  begin
    n+=1;
    s:='1'* n;
    
    while (pos('111', s) > 0) do
      begin
        s:=s.Replace('111', '2', 1);
        s:=s.Replace('222', '1', 1);
      end;
  end;
   writeln(n);
end.