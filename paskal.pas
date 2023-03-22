
  uses graphabc;
  procedure Keyboard (k: integer);
 
  begin
   SetWindowsize(2000, 1000); 
 
  if k = VK_Z then 
  begin
  line(200,200,1000,1000);
  end;
  
  if k = VK_X then 
  begin
  line(500,600,900,100);
  line(900,100,1500,800);
  line(1500,800,500,600); 
  end;
  
  if k = VK_A then 
  begin
  rectangle(300, 200,1400,700); 
  end;
    
  if ord(k)=191 then ClearWindow;
  if ord(k)=222 then CloseWindow;
  end;
   
  begin
  OnkeyDown := Keyboard;
  end.