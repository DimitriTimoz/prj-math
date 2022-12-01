Unit newtonMethode;

interface

uses functions, utils;

function newton(e: Double): TResultatMethode;


implementation
function newton(e: Double): TResultatMethode;
var
  a: Double;
  i: integer;

begin
    a := 1;
    i := 0;
    while abs(trajectoire(a)) > e do
    begin
        i := i + 1;
        
        a := a - trajectoire(a) / dtrajectoire(a);
        
        // Protection contre les boucles infinies
        if i > max_iter then
          break;
    end;
    newton.init(a, i, Newt);
end;

    
end.