%Aula 1 - Matlab
%Analise de Sistemas lineares 2022-2
%Lucas Prado

%% Limpando variaveis
close all
clc
clear all

%% Declarar Função
t = 0:0.01:2;
A = 1;
f = 1;
w = 2*pi*f;
fi = 0;
B = 0;
y = A*sin(w*t +fi) + B;

figure
subplot(2, 1, 1)
plot(t, y, 'r:s')
ylim([-2 2])
grid on
yticks([0.5:0.5:1.5])

t = 0:0.01:2;
A = 0.8;
f = 1.5;
w = 2*pi*f;
fi = pi/8;
B = 0.5;
y = A*sin(w*t +fi) + B;

subplot(2, 1, 2)
plot(t, y, 'g--^', 'LineWidth', 0.4)
ylim([-1 2])
grid on
yticks([0.5:0.5:1.5])
hold all
plot(t, y.^2,'color', [237 66 203]/255)

legend({'Função 1: sen(t)',...
    'Função 2: sen^2(t)'}, 'Location','NorthWest')

title('Eae')
ylabel('Amplitude')
xlabel('Tempo (s)')