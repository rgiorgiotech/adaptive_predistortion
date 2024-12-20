%% Indicizzazione sequenza adattiva 

x = zeros(0,10);
for k = 1:10
    x(k) = randn(1);
end
x = x / max(x);

N = 16;
gamma = 0.4;
xmax = 1;
K = sqrt(.997);
delta = abs(xmax)/(2*N);

if abs(x) > xmax
    n = N;
else
    n = (abs(x) - (mod(abs(x), delta))) / delta;
end

% n_cresc = zeros(size(n));
% for i = 1:size(n)
%     for j = 1:size(n)
%         k = i;
%         while n(k) < n(j) 
%             k = k + 1;
%         end
%         n_cresc(i) = n(j);
%     end
% end
% n_cresc

