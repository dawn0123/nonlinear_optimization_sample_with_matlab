function y = func(x, N, K, a, b, beta)
%FUNC Summary of this function goes here
%   Detailed explanation goes here
y = zeros(K, 1);
for k = 1:K
    s = 0;
    for n = 1:N
        sn = 0;
        for kk = 1:K
            sn = sn + b(n, k) * x(k) ^ beta + 1;
        end
        s = s + a(n) * K / sn;
    end
    y(k) = (x(k) + 1) * s - 1;
end