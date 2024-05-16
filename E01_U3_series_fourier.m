%%   ITESS-TICS
%%   Enero-Junio 2024
%%   Matemáticas Áplicadas a Comunicaciones
%%   Unidad 3: Series de Fouier
%%   Aproximación ejemplo 01
%%   16/mayo/2024
%%   FJMP

x = -pi:0.01:pi;
sz = size(x);
fx = zeros(sz);

for i=1:sz(2)
  if ( -pi <= x(i) && x(i) < 0 )
    fx(i) = 0;
  endif
  if ( 0 <= x(i) && x(i) <= pi )
    fx(i) = pi - x(i);
  endif
endfor

plot(x, fx)
grid on
hold on

%%% aproximaciones
fx_1 = pi/4 + x*0;
fx_2 = fx_1 + 2/pi * cos(x) + sin(x);
fx_3 = fx_2 + 1/2 * sin (2*x);
plot(x, fx_1)
plot(x, fx_2)
plot(x, fx_3)


