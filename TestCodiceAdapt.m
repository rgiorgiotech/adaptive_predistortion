%% Indicizzazione sequenza adattiva 

x = zeros(0,10);
for k = 1:10
    x(k) = randn(1);
end
x = x / max(x);

N = 32;
gamma = 0.4;
xmax = 1;
K = sqrt(.997);
delta = abs(xmax)/(2*N);

if abs(x) > xmax
    n = N;
else
    n = (abs(x) - (mod(abs(x), delta))) / delta;
end

