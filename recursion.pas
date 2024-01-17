uses GraphABC;

procedure Tr(x1,y1, x2,y2,x3,y3,deep: integer);
  begin
    
    if deep > 0 then       //при deep =0 функция прекратит свое выполнение
      begin
    var x12,y12, x23,y23, x31,y31: integer;// локальные переменные
    
    deep:=deep-1; //уменьшаем глубину рекурсии
    
    //рисуем треугольник
    line(x1,y1, x2,y2);
    line(x2,y2,x3,y3);
    line(x1,y1,x3,y3);
    
    //находим координаты трех внутренних треугольников
    x12:= round((x1+x2) / 2);
    y12:= round((y1+y2) / 2);
    
    x23:= round((x2+x3) / 2);
    y23:= round((y2+y3) / 2);
    
    x31:= round((x3+x1) / 2);
    y31:= round((y3+y1) / 2);
    
    //рисуем эти 3 треугольника вызвав для каждого функцию Tr и рассчитываем для каждого из них 3 новых треугольника
    Tr(x1,y1, x12,y12,x31,y31,deep);
    Tr(x2,y2, x12,y12,x23,y23,deep);
    Tr(x3,y3, x23,y23,x31,y31,deep);
    
    end;
  end;
  
  
BEGIN
  Tr(100, 400, 300,50, 500, 400, 5);
END.