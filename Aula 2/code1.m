%% Clean Base
close all
clc
clear all

%% Code
t = 0:0.001:2;
w = 2*pi;

x1 = sin(w*t);
N = length(x1);
x1_ruido = x1' + randn(N,1)*0.1;

figure
plot(t,x1_ruido)
th = 0.2;
y = ceifar(x1_ruido,th);
hold on
plot(t,y, '--k')


%% fun

function y = ceifar(x,th)
    %Entradas:
    %   x: sinal de dimensão N
    %   th: threshold ou limiar
    %
    %Saidas:
    %   y: sinal ceifado de dimensão Nx1

    N = length(x);
    y = zeros(N,1);
    for i = 1:N
        if x(i) > th
            y(i) = th;
        elseif x(i) < -th
            y(i) = -th;
        else
            y(i) = x(i);
        end %elseif
    end %for
end %ceifar