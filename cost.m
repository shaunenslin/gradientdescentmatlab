function j = cost(thetas, xo, y)
    hc = xo * thetas - y;
    m = length(y);
    j = (hc' * hc) / (2 * m);
end