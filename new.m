% Método de Newton-Raphson
% Flash isotérmico; p=1600 psia; T=120°F
% N Componentes: metano (zM=0,70); propano (zP=0,10); n-pentano (znP=0,10); nhexano (znH=0,10)
% Constante de equilíbrio: metano (kM=3,09); propano (kP=0,39); n-pentano(knP=0,093); n-hexano (knH=0,065)
% Equação de Flash: fb(i)=somatório[(ki-1)zi/(1+b(ki-1))]=0
% Recursão do método: b(i+1)=b(i)-fb(i)/f'b(i)
% f'b(i)=somatório[-(zi*(ki-1)^2)/(1+b*(ki-1))^2;
% Estimativas iniciais: b=0,50
global N
N=4;
z(1)=0.70;
z(2)=0.10;
z(3)=0.10;
z(4)=0.10;
k(1)=3.09;
k(2)=0.39;
k(3)=0.093;
k(4)=0.065;
b=0.50;
b0=b;
f=feval('new1',b,z,k);
f0=f;
df=feval('new2',b,z,k);
b=b-(f/df);
while abs(f) > 1e-15
b0=[b0,b];
f=feval('new1',b,z,k);
df=feval('new2',b,z,k);
b=b-(f/df);
f0=[f0,f];
end
% saídas gráficas
subplot (1,2,1)
plot(f0,'m');
xlabel('Iteração');
ylabel('f(b)');
title( ['Flash - Método Newton-Raphson' ] );
subplot(1,2,2)
plot(b0,'m');
xlabel('Iteração');
ylabel('b(% vaporizada da carga)');
title( [ 'Flash - Método Newton-Raphson' ] );
% salvar dados
save fbnew.dat f0 -ascii
save bnew.dat b0 -ascii
