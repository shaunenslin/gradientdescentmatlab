function [x, maxs, mins] = normalize(x, n)
    % n = (x-max) / (max-min)
    maxs = max(x);
    mins = min(x);
    x = (x-max(x)) ./ (max(x)-min(x));
end