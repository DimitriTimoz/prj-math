unit functions;
    
interface
    uses math;
    const 
        g = 9.81;
        V = 53.0;
        H = 2.95;
        alpha = 7.0;
    function radians(x: Double): Double;

    function f(x: Double): Double;

    function g(x: Double): Double;

implementation
    function radians(x: Double): Double;
    begin
        radians := (x * pi) / 180.0;
    end;
    function f(x: Double): Double;
    begin
        f := -0.5 * g * ((x  / (V * cos(radians(alpha)))) ** 2.0) - tan(radians(alpha)) * x + h;
    end;  
end.