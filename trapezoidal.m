function int = trapezoidal(f, r)
    h = 1 / r;
    x = linspace(0, 1, r+1);
    
    int = (h/2) * (f(x(1)) + f(x(r+1)));
    for i = 2:r
        int = int + h * f(x(i));
    end
end