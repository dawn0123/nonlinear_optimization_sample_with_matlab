N = 15
K = 15
a = rand(N, 1);
sa = sum(a);
a = a / sa
b = rand(N, K)
beta = 0.5
x0 = ones(N, 1)
f = @(x)func(x, N, K, a, b, beta);
x = fsolve(f, x0)
f(x)