function cost = cost(thetas, x, y)
    % jø = 1/2m * ∑ (hø(x) - y)ˆ2   
    hc = x * thetas - y;
    cost = (hc' * hc) / (2 * length(y));
end