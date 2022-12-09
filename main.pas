program resolutionEquationTraj;

uses utils, dichotomieMethode, newtonMethode, methodePointFixe, sysutils, dateutils;
var
	i: Int32;
	e: double;
	debut: TDateTime;
begin
	// En faisant varier epsilon de 10^-1 à 10^-§
	e := 1.0;
	for i := 1 to 6 do
	begin
		e := e / 10.;
		writeln('Pour epsilon: ', e:0:10);
	    dichotomie(0.0, 50.0, e).afficheResultat();
		newton(1.0, e).afficheResultat();
		pointFixe(1.0, e).afficheResultat();
	end;

	// On applique 1 million de fois chaque méthode pour déterminer son coût
	writeln('Pour e = ', e);
	debut := Now;
	for i := 1 to 1000000 do 
	begin
		dichotomie(0.0, 50.0, e);
	end;
	writeln('Dichotomie 1 000 000 d''exécutions en ', MilliSecondsBetween(Now, debut), ' ms');

	debut := Now;
	for i := 1 to 1000000 do 
	begin
		newton(1.0, e);
	end;
	writeln('Newton 1 000 000 d''exécutions en ', MilliSecondsBetween(Now, debut), ' ms');

	debut := Now;
	for i := 1 to 1000000 do 
	begin
		pointFixe(1.0, e);
	end;
	writeln('Point fixe 1 000 000 d''exécutions en ', MilliSecondsBetween(Now, debut), ' ms');
end.
