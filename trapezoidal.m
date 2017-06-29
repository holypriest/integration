% Dados o integrando f, os limites do intervalo (a,b) e a quantidade de
% subintervalos (r), calcula a aproximação da integral de f pela regra do
% trapézio

function int = trapezoidal(f, a, b, r)
    h = 1 / r;
    x = linspace(a, b, r+1);
    
    int = (h/2) * (f(x(1)) + f(x(r+1)));
    for i = 2:r
        int = int + h * f(x(i));
    end
end