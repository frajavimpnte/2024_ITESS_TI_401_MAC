%%   ITESS-TICS
%%   Enero-Junio 2024
%%   Matemáticas Áplicadas a Comunicaciones
%%   Unidad 3: Series de Fouier
%%   Integral de Fourier
%%   16/mayo/2024
%%   FJMP

pkg load symbolic
syms x n

%% ejemplo 1, integral serie de Fourier
p = pi

a0 =  1/p * double(int(0,x,-pi,0) + int(pi-x,x,0,pi) )
an =  1/p *( int( 0*cos(n*x),x,-pi,0) + int((pi-x)*cos(n*x),x,0,pi) )
bn =  1/p *( int( 0*sin(n*x),x,-pi,0) + int((pi-x)*sin(n*x),x,0,pi) )

a1 = double ( subs (an, n, 1) )
a2 = double ( subs (an, n, 2) )
a3 = double ( subs (an, n, 3) )
a4 = double ( subs (an, n, 4) )
a5 = double ( subs (an, n, 5) )
a6 = double ( subs (an, n, 6) )

b1 = double ( subs (bn, n, 1) )
b2 = double ( subs (bn, n, 2) )
b3 = double ( subs (bn, n, 3) )
b4 = double ( subs (bn, n, 4) )
b5 = double ( subs (bn, n, 5) )
b6 = double ( subs (bn, n, 6) )



%% grafica de la funcion original

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
fx_0 = a0/2 + x*0;
fx_1 = fx_0 + a1*cos(1*x) + b1*sin(1*x);
fx_2 = fx_1 + a2*cos(2*x) + b2*sin(2*x);
fx_3 = fx_2 + a3*cos(3*x) + b3*sin(3*x);
fx_4 = fx_3 + a4*cos(4*x) + b4*sin(4*x);
fx_5 = fx_4 + a5*cos(5*x) + b5*sin(5*x);
fx_6 = fx_5 + a6*cos(6*x) + b6*sin(6*x);

plot(x, fx_1)
plot(x, fx_2)
plot(x, fx_3)
plot(x, fx_4)
plot(x, fx_5)
plot(x, fx_6)


