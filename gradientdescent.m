function [thetas, costs] = gradientdescent(repeat, lrate, thetas, xo, y, m, n)

    costs = zeros(repeat,1);
    for r = 1:repeat
        hc = xo * thetas - y;
        temp = sum(hc .* xo);
        thetas = thetas - (lrate * (1/m)) * temp';
        costs(r) = cost(thetas, xo, y); 
    end    

end