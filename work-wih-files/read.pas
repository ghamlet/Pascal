uses  GraphABC;
 
var
  f:text;
  first_el,second_el, N, sum,sr,h: integer;
  
BEGIN
  N:=266*2; //если дано количество строк
  assign(f, 'run.txt');
  reset(f); //чтение файла
  
  for var i:=1 to N do //while not eof(f) do  если неизвестно количество строк
    begin
      read(f, first_el); // если надо взаимодействовать с парами чисел, то читаем за раз две переменные: read(f, first_el, second_el)
//      print(first_el);
      sum += first_el;
      
      
    end;
//println(' ');
sr:=round(sum / N);
//
//writeln('The average of the numbers is: ',sr );

h:=round(sr*20);
rectangle(920,10, 1000,h);
floodfill(950, 20, clBlue);
circle(950, 20, 5);

close(f);
 END.
 