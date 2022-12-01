unit utils;
    
interface
    type
        TMethods = (Dicho, Newt, PtFixe);
        TResultatMethode = object
        public
            x: Double;
            n: integer;
            method : TMethods;
            constructor init(x0: Double; i: integer; m: TMethods);
            procedure afficheResultat();
    end;

    
implementation
    constructor TResultatMethode.init(x0: Double; i: integer; m: TMethods);
    begin
        x := x0;
        n := i;
        method := m;
    end;

    procedure TResultatMethode.afficheResultat();
    begin
        case method of
            Dicho: writeln('Méthode de la dichotomie: ');
            Newt: writeln('Méthode de Newton: ');
            PtFixe: writeln('Méthode du point fixe: ');
        end;
        writeln(' - f(x) = 0, avec x = ', x:0:10, ' et un nombre d''iteration n = ', n);
    end;

    
end.