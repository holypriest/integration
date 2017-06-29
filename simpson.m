% Dados o integrando f, os limites do intervalo (a,b) e a quantidade de
% subintervalos (r), calcula a aproximação da integral de f pela regra de
% Simpson

function int = simpson(f, a, b, r)
    h = 1 / r;
    x = linspace(a, b, r+1);
    
    int = 0;
    for i = 1:(r/2)
        int = int + (h/3) * (f(x(2*i-1)) + 4 * f(x(2*i)) + f(x(2*i+1)));
    end
end