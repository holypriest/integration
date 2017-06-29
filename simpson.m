function int = simpson(f, r)
    h = 1 / r;
    x = linspace(0, 1, r+1);
    
    int = 0;
    for i = 1:(r/2)
        int = int + (h/3) * (f(x(2*i-1)) + 4 * f(x(2*i)) + f(x(2*i+1))) ;
    end
end