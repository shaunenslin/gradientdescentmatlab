function [x, maxs, mins] = normalize(x, n)
    maxs = max(x);
    mins = min(x);
    % x - max(x) / max(x) - min(x)
    x = (x - max(x)) ./ (max(x) - min(x));
end