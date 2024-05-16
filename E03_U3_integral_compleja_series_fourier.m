

%%   ITESS-TICS
%%   Enero-Junio 2024
%%   Matemáticas Áplicadas a Comunicaciones
%%   Unidad 3: Series de Fouier
%%   Integral Compleja de Fourier
%%   16/mayo/2024
%%   FJMP

pkg load symbolic
syms x n

%% ejemplo 1, integral compleja serie de Fourier
p = pi
cn =  1/(2*p)*( int( 0*exp(-i*n*pi*x/p),x,-pi,0 ) + int( (pi-x)*exp(-i*n*pi*x/p),x,0,pi ) )

%% calcular coeficientes de Fourier complejos
c0  = double ( subs (cn, n,  0) )
c1  = double ( subs (cn, n,  1) )
c_1 = double ( subs (cn, n, -1) )
c2  = double ( subs (cn, n,  2) )
c_2 = double ( subs (cn, n, -2) )
c3  = double ( subs (cn, n,  3) )
c_3 = double ( subs (cn, n, -3) )
c4  = double ( subs (cn, n,  4) )
c_4 = double ( subs (cn, n, -4) )
c5  = double ( subs (cn, n,  5) )
c_5 = double ( subs (cn, n, -5) )

##%%% aproximaciones
x=-pi:0.01:pi;

fx_0 = real(c0 * exp(i*0*pi*x/p));
fx_1 = fx_0 + real(c1*exp(i*1*pi*x/p) + c_1*exp(i*-1*pi*x/p) );
fx_2 = fx_1 + real(c2*exp(i*2*pi*x/p) + c_1*exp(i*-2*pi*x/p) );
fx_3 = fx_2 + real(c3*exp(i*3*pi*x/p) + c_3*exp(i*-3*pi*x/p) );
fx_4 = fx_3 + real(c4*exp(i*4*pi*x/p) + c_4*exp(i*-4*pi*x/p) );
fx_5 = fx_4 + real(c5*exp(i*5*pi*x/p) + c_5*exp(i*-5*pi*x/p) );

plot(x, fx_0)
grid on
hold on

plot(x, fx_1)
plot(x, fx_2)
plot(x, fx_3)
plot(x, fx_4)
plot(x, fx_5)



