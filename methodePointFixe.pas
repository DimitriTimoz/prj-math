unit methodePointFixe;

interface

uses functions, utils; 

function pointFixe(x0, e: Double) : TResultatMethode;

implementation

function pointFixe(x0, e: Double) : TResultatMethode;
var
    x, xPlus1 : Double;
    i: integer;
begin
    i := 0; 
    xPlus1 := 0;
    x := x0;
    while abs(trajectoire(x)) > e  do 
    begin
        i := i + 1;
        // Xn+1 = f(x) + x 
		x := xPlus1;
		xPlus1 := trajectoire(x) + x;
        if i > max_iter then
            break;
    end;

    pointFixe.init(xPlus1, i, PtFixe);
end;


end.
