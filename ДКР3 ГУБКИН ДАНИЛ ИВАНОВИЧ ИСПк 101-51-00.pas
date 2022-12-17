    uses crt;
    function f1(x:real):real;
    begin
    f1:= 1*x**3+1*x**2+4*x+3;
    end;
    function f2(x:real):real;
    begin
    f2:=(x**4/2)+3*x;
    end;
    procedure vvod;
    begin
    writeln('Что хотите узнать?');
    writeln('1 - точное значение, 2 - приблизительное значение, 3 - относительная погрешность, 4 - абсолюьная погрешность ');
    writeln('Чтобы завершить программу - введите 0');
    end;
    var
    l,p,s,d:real;
    c,o,v:integer;
    begin
    writeln('Введите левый интервал от -3 до 0= ');
    readln(l);
    writeln('Введите правый интервал от 0 до 3= ');
    readln(p);
    write('Введите количество отрезков от 0 до 1000= ');
    readln(o);
    s:= (f1(l)+f1(p))/2;
    for c:=1 to o-1 do
    begin
    s:= s+f1(l+c*((p-l)/o));
    end;
    s:=s*(p-l)/o;
    d:=f2(p)-f2(l);
    begin
    repeat vvod;
    read(v);
    case v of
    1:begin
    writeln('Точное значение= ',abs(d):2:3);
    end;
    2:begin
    writeln('Приблизительное значение= ',abs(s):2:3);
    end;
    3:begin
    writeln('Относительная погрешность= ',abs(d-s)/d:2:3);
    end;
    4:begin
    writeln('Абсолютная погрешность= ',(d-s):2:3);
    end;
    end;
    until
    v=0;
    end;
    end.

