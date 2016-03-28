% sample programs
% Sammmm
clear all;
close all;
x = 0:0.1:10;
y = 2 * exp(-.2 * x);
plot(x,y);
disp(log10(100));
u = 1;
v = 3;
a = (4*u)/(3*v);
disp('a = ');
disp(num2str(a));
b = (2*v)^-2/(u+v)^2;
disp('b = ');
disp(num2str(b));
c = v^3/v^3-u^3;
disp('c = ');
disp(num2str(c));
d = (4/3)*pi*v^2;
disp('d = ');
disp(num2str(d));

