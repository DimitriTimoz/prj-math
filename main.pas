program resolutionEquationTraj;

uses utils, dichotomieMethode, newtonMethode;

begin
    dichotomie(0.0, 50.0, 0.00001).afficheResultat();
    newton(0.00001).afficheResultat();
end.