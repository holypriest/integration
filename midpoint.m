% Dados o integrando f, os limites do intervalo (a,b) e a quantidade de
% subintervalos (r), calcula a aproximação da integral de f pela regra do
% ponto médio

function int = midpoint(f, a, b, r)
    h = 1 / r;
    x = linspace(a, b, r+1);
    
    int = 0;
    for i = 1:r
        int = int + h * f((x(i) + x(i+1)) / 2);
    end
end