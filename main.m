% load dataset
ds = load("realestat3.txt")

% split x/y
n = size(ds,2)-1;
x = ds(:,1:n);
y = ds(:,n+1);
m = length(y);

% normalise
[x, maxs, mins] = normalize(x, n);

% add column with ones - help hypothesis
xo = [ones(m,1),x];

% gradient descent
repeat = 1500;
lrate = 0.1;
thetas = zeros(n+1, 1);
[best, costs] = gradientdescent(repeat, lrate, thetas, xo, y, m, n);

% plot costs
plot(costs, 1:repeat);
% predict a value
p = [2012.667;1.5;23.38284;7;24.96772;121.54102]
%p = [6;6;6];
pn = (p-maxs')./(maxs'-mins')
pn = [1;pn];
r = pn' * best
