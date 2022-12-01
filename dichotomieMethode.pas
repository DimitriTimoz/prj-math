unit dichotomieMethode;

interface

uses functions, utils; 

function dichotomie(a, b, e: Double ) : TResultatMethode;

implementation

function dichotomie(a, b, e: Double ) : TResultatMethode;
var
    m : Double;
    i: integer;
begin
    m := 0;
    i := 0;
    while (b - a) > e  do 
    begin
        i := i + 1;
        m := (a + b) / 2.0;
        if (trajectoire(a) * trajectoire(m)) <= 0.0 then
            b := m
        else
            a := m;
        if i > max_iter then
            break;
    end;

    dichotomie.init(m, i, Dicho);
end;


end.
