clc
clear
#Definindo as variáveis
global A B C D
A=1;
B=0.5;
C=0.75;
D=0.5;

#Discretizando o tempo
t0=0;
tf=10;
delta_t=0.1;
t=[t0:delta_t:tf];

#Cond inicial:
y0=[4;3];

#Chamando o LSODE

Y= lsode("testesubpresapredador", y0, t);
#Plotando os resultados
plot(t,Y)
xlabel("t")
ylabel("população")
title("presa-predador")

