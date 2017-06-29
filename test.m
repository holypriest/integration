% Integrais exatas das funções f (item a) e g (item b)
int_f = pi;
int_g = 2/3;

% As funções f e g foram definidas em seus arquivos próprios
f = @fx;
g = @gx;

% Valores de r a serem testados
r_values = [2, 4, 8, 16, 32];

% Valores de h = 1/r
h_values = 1 ./ r_values;

% Erros obtidos para a regra do ponto médio na aproximação da integral de f
% ao se variar h

err_mid = [];
for r = r_values
    int = midpoint(f, 0, 1, r);
    err_mid = [err_mid, abs(int_f - int)];
end

% Erros obtidos para a regra do trapézio na aproximação da integral de f ao
% se variar h

err_trap = [];
for r = r_values
    int = trapezoidal(f, 0, 1, r);
    err_trap = [err_trap, abs(int_f - int)];
end

% Erros obtidos para a regra de Simpson na aproximação da integral de f ao
% se variar h

err_simp = [];
for r = r_values
    int = simpson(f, 0, 1, r);
    err_simp = [err_simp, abs(int_f - int)];
end

% Gráficos das aproximações de f

figure(1);

subplot(1,3,1);
scatter(h_values, err_mid);
title('Erro da regra do ponto médio (f = 4 / x^2 + 1)');
xlabel('h');
ylabel('abs(int - int_{approx}))');

subplot(1,3,2);
scatter(h_values, err_trap);
title('Erro da regra do trapézio (f = 4 / x^2 + 1)');
xlabel('h');
ylabel('abs(int - int_{approx}))');

subplot(1,3,3);
scatter(h_values, err_simp);
title('Erro da regra de simpson (f = 4 / x^2 + 1)');
xlabel('h');
ylabel('abs(int - int_{approx}))');

% Erros obtidos para a regra do ponto médio na aproximação da integral de g
% ao se variar h

err_mid = [];
for r = r_values
    int = midpoint(g, 0, 1, r);
    err_mid = [err_mid, abs(int_g - int)];
end

% Erros obtidos para a regra do trapézio na aproximação da integral de g ao
% se variar h

err_trap = [];
for r = r_values
    int = trapezoidal(g, 0, 1, r);
    err_trap = [err_trap, abs(int_g - int)];
end

% Erros obtidos para a regra de Simpson na aproximação da integral de g ao
% se variar h

err_simp = [];
for r = r_values
    int = simpson(g, 0, 1, r);
    err_simp = [err_simp, abs(int_g - int)];
end

% Gráficos das aproximações de g

figure(2);

subplot(1,3,1);
scatter(h_values, err_mid);
title('Erro da regra do ponto médio (g = sqrt(x))');
xlabel('h');
ylabel('abs(int - int_{approx})');

subplot(1,3,2);
scatter(h_values, err_trap);
title('Erro da regra do trapézio (g = sqrt(x))');
xlabel('h');
ylabel('abs(int - int_{approx})');

subplot(1,3,3);
scatter(h_values, err_simp);
title('Erro da regra de simpson (g = sqrt(x))');
xlabel('h');
ylabel('abs(int - int_{approx})');

% Resultados para f (optou-se por r = 32)

res_mid_f = sprintf('int(f(x)) [ponto médio]: %f', midpoint(f, 0, 1, 32));
disp(res_mid_f);
res_trap_f = sprintf('int(f(x)) [trapézio]: %f', trapezoidal(f, 0, 1, 32));
disp(res_trap_f);
res_simp_f = sprintf('int(f(x)) [Simpson]: %f', simpson(f, 0, 1, 32));
disp(res_simp_f);

% Resultados para g (optou-se por r = 32)

res_mid_f = sprintf('int(g(x)) [ponto médio]: %f', midpoint(g, 0, 1, 32));
disp(res_mid_f);
res_trap_f = sprintf('int(g(x)) [trapézio]: %f', trapezoidal(g, 0, 1, 32));
disp(res_trap_f);
res_simp_f = sprintf('int(g(x)) [Simpson]: %f', simpson(g, 0, 1, 32));
disp(res_simp_f);