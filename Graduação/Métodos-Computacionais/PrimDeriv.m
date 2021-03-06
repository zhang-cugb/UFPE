function yd=PrimDeriv(x,y)
% Calcula a primeira derivada para dados igualmente espašados

n = length(x);
h = x(2)-x(1);

for i = 2:n-1
    yd(i)=(y(i+1)-y(i-1))/(2*h);  % diferenšas centradas
    
end

yd(1)=(-3*y(1)+4*y(2)-y(3))/(2*h);  % diferenša progressiva com 3 pontos
yd(n)= (y(n-2)-4*y(n-1)+3*y(n))/(2*h); % diferenša regressiva com 3 pontos

end
