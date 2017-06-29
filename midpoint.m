function int = midpoint(f, r)
    h = 1 / r;
    x = linspace(0, 1, r+1);
    
    int = h * f((x(1) + x(2)) / 2);
    for i = 2:r
        int = int + h * f((x(i) + x(i+1)) / 2);
    end
end