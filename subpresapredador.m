function dy_dt = PPsub(y,t)

 global A B C D

 dy_dt(1) = A*y(1) -B*y(1)*y(2);
 dy_dt(2) = -C*y(2) + D*y(1)*y(2);


 endfunction
