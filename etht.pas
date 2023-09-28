var
  s, newstr:string;
  c:=1;
  
  begin
    s:= 'привет это диктор канала мастерская настроения';
    
    for var i:=1 to length(s) do
      begin
        
        if s[i] <> ' ' then
          newstr += s[i]
        else c+=1;
        
      end;
      
   println(c); 
   println(newstr);
    
  end.