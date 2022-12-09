program resolutionEquationTraj;

uses utils, dichotomieMethode, newtonMethode, methodePointFixe;
var
	i: integer;
	e: double;
begin
	// En faisant varier epsilon de 10^-1 à 10^-10
	e := 1.0;
	for i := 1 to 10 do
	begin
		writeln('Pour epsilon: ', e:0:10);
		e := e / 10.;
	    dichotomie(0.0, 50.0, e).afficheResultat();
		newton(1.0, e).afficheResultat();
		pointFixe(1.0, e).afficheResultat();
	end
end.
