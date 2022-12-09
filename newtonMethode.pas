Unit newtonMethode;

interface

uses functions, utils;

function newton(a, e: Double): TResultatMethode;


implementation
function newton(a, e: Double): TResultatMethode;
var
  i: integer;
begin
  i := 0;
  while abs(trajectoire(a)) > e do
  begin
      i := i + 1;
      
      a := a - (trajectoire(a) / dtrajectoire(a));
      
      // Protection contre les boucles infinies
      if i > max_iter then
        break;
  end;
  newton.init(a, i, Newt);
end;

    
end.