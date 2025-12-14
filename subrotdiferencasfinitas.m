function ydot = subeqdp(y, t)
  ptint = 4;        % pontos internos
  dx = 0.5;         % distância entre os pontos (arbitrária)
  u=2;
  ydot = zeros(ptint,1);


  % Condições de contorno
  Ti = 25;         % T esquerda
  Tf = 100;          % T direita

  % Parâmetros físicos
  k = 15;           % W/m·K
  ro = 8000;        % kg/m³
  Cp = 500;         % J/kg·K
  alpha = k / (ro * Cp);

  % Discretização de diferenças finitas
  ydot(1) = (4*alpha*u*((y(2) - 2*y(1) + Ti)/ dx^2))+(4*alpha*((y(2) - Ti)))/dx;
  ydot(2) = (4*alpha*u*((y(3) - 2*y(2) + y(1))/ dx^2))+(4*alpha*((y(3) - y(1))))/dx;
  ydot(3) = (4*alpha*u*((y(4) - 2*y(3) + y(2))/ dx^2))+(4*alpha*((y(4) - y(2))))/dx;
  ydot(4) = (4*alpha*u*((Tf - 2*y(4) + y(3))/ dx^2))+(4*alpha*((Tf - y(3))))/dx;
endfunction
