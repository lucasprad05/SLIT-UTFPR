%% Clean Base
close all
clc
clear all

%% Code
A=2;
B=4;
x=trapezio(A,B);
n = -B-A:B+A;
stem(n,x,'Filled', 'r');
xlabel('n');
ylabel('x[n]')
grid on

%% fun

function x=trapezio(A,Bi)
    B = Bi - 1;
    subida = (1:B)*(1/B);
    reta = ones(1,2*A+1);
    descida = flip(1:B)*(1/B);

    x = [0 subida reta descida 0];
end
    