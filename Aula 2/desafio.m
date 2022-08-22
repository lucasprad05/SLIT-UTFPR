%% Clean Base
close all
clc
clear all

%% Code
t = 0:0.01:2;
y = -3:0.01:3;

x1 = sin(2*pi*t);
subplot(2, 1, 1);
plot(t, x1, 'r');
hold all

x2 = 3*t-3;
subplot(2, 1, 1);
plot(t, x2, 'b');
ylabel('Amplitude')
xlabel('Tempo (s)')
ylim([-3 3])
title('Adição: y=x1+x2');
grid on
legend({'x1(t): sin(2\pit)',...
    'x2(t): 3t-3'}, 'Location','NorthWest')



subplot(2, 1, 2);
plot(t, x1, '--r');
hold all

subplot(2, 1, 2);
plot(t, x2, '--b');
ylabel('Amplitude')
xlabel('Tempo (s)')

x3 = x1 + x2;
subplot(2, 1, 2);
plot(t, x3, 'k');
grid on
legend({'y(t)=x1 + x2', '3t-3',...,
    'sin(2\pit)'}, 'Location','NorthWest')
