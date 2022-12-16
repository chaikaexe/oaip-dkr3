Program dkr3;
 
uses crt; 
var num:integer;
function f(x: real):real := x * (x * x - 4); //сама функция
    
function fb(x: real):real := x * x * (x * x / 4 - 2); //производная
 
procedure proc1;
  begin
    var a := ReadLnReal('Введите нижний предел интегрирования:'); 
    var b := ReadLnReal('Введите верхний предел интегрирования:');
    var n := ReadLnInteger('Введите количество отрезков:');
    var h := (b - a) / n; //дальше по методу правых прямоугольников
    var s := 0.0; 
    for var i := 1 to n do s += f(a + i * h) * h;
    var s1 := fb(b) - fb(a);
    var pg := abs(s1 - s);
    writeln('Приближённое значение равно ', s); 
    writeln('Погрешность равна ', pg);
  end;
   
begin
  writeln('Программа вычисления площади фигуры, ограниченной кривой'); 
  writeln('1*x^3+(0)*x^2+(-4)*x+(0) и осью Ox'); 
  writeln('1 - узнать первообразную этой функции'); 
  writeln('2 - приближенное значение интеграла'); 
  writeln('3 - выход из программы'); 
  repeat
    read(num);
    case num of
      1:writeln('x^4/4-2x^2');
      2:proc1
    end;
   until num=3;
    end.