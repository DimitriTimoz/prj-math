program newton;

uses functions;

(*
def newton(n = 10):
  a = 1
  for i in range(n):
      a = a - f(a)/df(a)
      print(a)*)

function newton(n: integer): real;
var
  a: real;
  i: integer;

begin
    a := 1;
    for i := 1 to n do
    begin
        a := a - g(a) / dg(a);
    end;
    newton := a;
end;

begin
    
end.