
function dy_dt = subrotina_edos(y, t)


   dy_dt(1)= (40 / pi) * exp(-20 * t)-pi^2 * y(1);

   dy_dt(2)= -(20 / pi) * exp(-20 * t)-(2*pi)^2 * y(2);

   dy_dt(3)=(40 / (3 * pi)) * exp(-20 * t)-(3*pi)^2 * y(3);

endfunction
