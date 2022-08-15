%% Clean Base
close all
clc
clear all

%% Code
t = 0:0.01:2;
y = -2:0.01:2;

x1 = 0.5*sin(2*pi*t)+1;
subplot(2, 2, 1);
plot(t, x1, 'k');
yticks([0:0.5:1.5])
title('x1 = 0.5*sin(2*pi*t)+1');
ylabel('Amplitude')
xlabel('Tempo (s)')
ylim([-2 2])
xlim([0 2])
grid on

x2 = sin(20*pi*t);
subplot(2, 2, 2);
plot(t, x2, 'r');
ylim([-2 2])
xlim([0 2])
title('x2 = sin(20\pit)');
ylabel('Amplitude')
xlabel('Tempo (s)')
grid on

y = x1.*x2;
subplot(2, 2, [3 4]);
plot(t, y, 'r');
ylim([-2 2])
xlim([0 2])
title('Multiplicação: y = x1*x2');
ylabel('Amplitude')
xlabel('Tempo (s)')
grid on

hold all
subplot(2, 2, [3 4]);
plot(t, x1, 'k');
subplot(2, 2, [3 4]);
plot(t, -x1, 'k');