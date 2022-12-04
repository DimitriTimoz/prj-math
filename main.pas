program resolutionEquationTraj;

uses utils, dichotomieMethode, newtonMethode;

begin
    dichotomie(0.0, 50.0, 0.00001).afficheResultat();
    newton(1.0, 0.00001).afficheResultat();
end.