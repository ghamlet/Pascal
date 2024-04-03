// запись в файл рандомных чисел
var
  f:text;
  n,num1, num2: integer;
  
BEGIN
  assign(f, 'run.txt');
  rewrite(f);
  
  n:=random(1,300);
  print(n);
  for var i:=1 to n do
    begin
      num1:=random(-1000, 1000);
      num2:=random(-1000, 1000);
      //write(f, ' ', num1);
       // writeln(f, num1, ' ', num2); //запись в столбец 
        write(f, num1, ' ', num2, ' '); //нормальная запись в одну строку: позволяет легко считывать как по одному так и по 2 элемента
    end;
 
 close(f);
 
 END.
 
 