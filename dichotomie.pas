program dichotomieImplementation;

uses functions;

function dichotomie(a, b, e: Double ) : Double;
var
    m : Double;
begin
    m := 0;
    while (b - a) > e  do 
    begin
        m := (a + b) / 2.0;
        if (f(a) * f(m)) <= 0.0 then
            b := m
        else
            a := m;
    end;

    dichotomie := m;
end;


begin
    writeln(dichotomie(0., 40.0, 0.00001));
end.
