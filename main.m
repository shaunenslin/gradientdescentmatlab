% open dataset
clear;
close all;
ds = load('dataset.txt');

% split x/y
n = size(ds,2)-1;
x = ds(:,1:n);
y = ds(:,n+1);

% normalise x
[x, maxs, mins] = normalize(x, n);

% add ones column to x for easier hypothesis
xo = [ones(length(y),1),x];

% do gradient descent
lrate = 0.1;
repeat = 500;
thetas = zeros(n+1,1);
[best, costs] = gradient(lrate, repeat, thetas, xo, y);

% plot costs
plot(costs,1:repeat);

% prediction




