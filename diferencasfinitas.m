clc
clear
clear all

#OCTAVE


% Condições iniciais: temperatura inicial = 0 em todos os pontos internos
y0 = zeros(4,1);

% Tempo de simulação
t = linspace(0, 100000, 100);

% Resolver EDO com LSODE
y = lsode("subeqdp", y0, t);

% Plotagem dos resultados
plot(t, y(:,1), t, y(:,2), t, y(:,3), t, y(:,4));
legend("y1", "y2", "y3", "y4");
xlabel("Tempo");
ylabel("Temperatura");
title("Distribuição de Temperatura nos Pontos Internos");
grid on;



