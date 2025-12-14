clc
clear


# Vetor de tempo
t = linspace(0, 1, 100);
 # Condição Inicial
y0 = [0;0;0];

# 2. Resolução da EDO
solucao_a = lsode("subrotina_edos", y0, t);

# Extraindo o coeficiente a1(t) da matriz de solução
a1_t = solucao_a(:, 1);
a2_t = solucao_a(:, 2);
a3_t = solucao_a(:, 3);
a1_analitica = (40 / (pi * (pi^2 - 20))) * (exp(-20 * t) - exp(-pi^2 * t));
a2_analitica = (-20 / (pi * (4 * pi^2 - 20))) * (exp(-20 * t) - exp(-4 * pi^2 * t));
a3_analitica = (40 / (3 * pi * (9 * pi^2 - 20))) * (exp(-20 * t) - exp(-9 * pi^2 * t));
# 3. Plotagem do Resultado
plot(t, a1_t, 'b-', t, a2_t, 'r-', t, a3_t, 'g-',t, a1_analitica, 'y--',t, a2_analitica, 'm--',t, a3_analitica, 'c--');
xlabel('Tempo (t)');
ylabel('Coeficientes a(t)');
title('Solução das EDOs de Galerkin');
legend('a_1(t)','a_2(t)','a_3(t)','a1 exato','a2 exato','a3 exato');
grid on;


