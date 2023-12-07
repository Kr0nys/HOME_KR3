Uses Crt;
var a,b,c,d,h,x,S1,S,pog: real; 
ca:Byte;
procedure continuee;
var ch : char;
begin
  repeat
    read(ch);
  until ch = #13;
end;

procedure proc1; 
begin 
  c:=((b*b*b*b)/2-2*(b*b)+13*b)-((a*a*a*a)/2-2*(a*a)+13*a);
  writeln('Площадь фигуры = ',c);
  
  continuee;
end;

procedure proc2;
var i,n:integer;
begin
  write('Введите кол-во прямоугольников: ');
  readln(n);
  h:=(b-a)/n;
  writeln('Шаг = ',h);
  x:=a;
  S := 0;
  for i:=1 to n do begin
    S1:=h*((2*(x*x*x))+((-4)*x)+13);
    S:=S+S1;
    x:=x+h;
  end;
  writeln('Площадь криволинейной трапеции: ',S);
  
  continuee;
end;

procedure proc3;
begin
  pog:=c-s;
  write('Погрешность = ',pog);
  
  continuee;
end;

procedure proc4;
begin
  writeln('Введите пределы интегрирования: ');
  readln(a,b);
  
  continuee;
end;

begin
  repeat
    ClrScr;
    writeln(a,' ', b);
    Writeln('Площадь криволинейной трапеции с помощью интеграла - 1');
    writeln('Площадь криволинейной трапеции с помощью метода левых прямоугольников - 2');
    Writeln('Вычислить погрешность - 3');
    Writeln('Введите новые значения для пределов - 4');
    Writeln('Выход - 0');
    write('Выберите программу: ');
    readln(ca);
    case ca of 
      1: proc1;
      2: proc2;
      3: proc3;
      4: proc4;
    end;
  until ca=0;
end.