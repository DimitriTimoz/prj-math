unit functions;
    
interface
    uses math;
    const 
        gravity = 9.81;
        V = 53.0;
        H = 2.95;
        alpha = 7.0;
        max_iter = 100;

    function radians(x: Double): Double;

    function trajectoire(x: Double): Double;
    function dtrajectoire(x: Double): Double;

implementation
    function radians(x: Double): Double;
    begin
        radians := (x * pi) / 180.0;
    end;
    function trajectoire(x: Double): Double;
    begin
        trajectoire := -0.5 * gravity * ((x  / (V * cos(radians(alpha)))) ** 2.0) - tan(radians(alpha)) * x + h;
    end;  

    function dtrajectoire(x: Double): Double;
    begin
        dtrajectoire := -gravity * (x / ((V * cos(radians(alpha)))** 2.0)) - tan(radians(alpha));
    end;
end.