%% Indicizzazione sequenza adattiva 

L = input('Enter a positive integer number. ');
x = zeros(0,L);
for k = 1:L
    x(k) = randn(1);
end
x = x / max(abs(x)); 
% La sequenza viene normalizzata rispetto al valore massimo (in valore assoluto),
% a simulare l'effetto della saturazione (-1 <= x <= 1).

N = 16;
gamma = 0.4;
xmax = 1;
K = sqrt(.997);
delta = xmax/(2*N);

if abs(x) > xmax
    n = N;
else
    n = (abs(x) - (mod(abs(x), delta))) / delta;
end

