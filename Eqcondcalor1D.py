import numpy as np
import matplotlib.pyplot as plt
from matplotlib.animation import FuncAnimation, PillowWriter

from IPython.display import display, Markdown

# Definição da EDP como uma string LaTeX
edp_calor_latex = r"""
## Equação do Calor 1D (EDP)
A EDP parabólica resolvida pelo método explícito é:

$$\frac{\partial u}{\partial t} = \alpha \frac{\partial^2 u}{\partial x^2}$$

# Parâmetros

a = 110   # Difusividade térmica (mm²/s)
lenght = 50    # Comprimento da haste (mm)
time = 10  # Tempo total de simulação (s)
nodes = 35    # Número de nós

# Discretização

dx = lenght / (nodes - 1)   # Espaçamento entre os nós
dt = 0.5 * dx**2 / a # Passo de tempo (critério de estabilidade FTCS)
t_nodes = int(time / dt) # Número de passos de tempo

# Matriz de temperaturas:

u = np.zeros(nodes) + 20 # Temperatura inicial (20°C)

# Condições iniciais e de contorno

u[0] = 100   # extremidade esquerda
u[-1] = 20  # extremidade direita

# Visualização:

fig, axis = plt.subplots()
pcm = axis.pcolormesh([u], cmap=plt.cm.jet , vmin=0, vmax=100)
axis.set_ylim([-2,3])

# Simulação:

counter=0

while counter < time:

    w = u.copy()

    for i in range(1, nodes - 1):

        u[i] = w[i] + a * dt / dx**2 * (w[i + 1] - 2 * w[i] + w[i - 1])

    counter += dt
     
    print("t = {:.3f} [s], temperatura média: {:.2f} Celsius ".format(counter, np.average(u)))
    pcm.set_array([u])
    axis.set_title("Distribuição de Temperatura na Haste em: {:.3f} [s]".format(counter))
    axis.set_xlabel("Posição ao longo da Haste (mm)")
    plt.pause(0.001)

plt.show()