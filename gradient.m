function [thetas, costs] = gradient(lrate, repeat, thetas, xo, y)
    % loop till convergence on lowest cost
    m = length(y);
    costs = zeros(repeat,1);
    for r = 1:repeat
        % get hypothesis/cost hcø = (ø0 + ø1(x1) + ø2(x2)..) - y 
        hc = xo * thetas - y;
        % ø(i) = ∑ hcø(i) * x(j)(i)
        temp = sum(hc.*xo);
        
        % thetas = ø(j) - ∂(1/m) * ø(i)
        thetas = thetas-((lrate*(1/m)) * temp)';
        
        costs(r) = cost(thetas, xo, y);
    end
end