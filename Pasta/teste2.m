%% Clean Base

clear all
close all
clc

%% Code
t = 0:0.01:2;
y = -3:0.01:3;
figure
x = sin(2*pi*t);

plot(t, x, 'k--');

hold all

x = 2*sin(2*pi*t);
plot(t, x, 'r');

x = 0.5*sin(2*pi*t);
plot(t, x, 'b');

title('Mudança de escala: y=a*x');
ylabel('Amplitude')
xlabel('Tempo (s)')

legend({'x(t) = sen(2\pit)', 'x(t) = 2sen(2\pit)', 'x(t) = 0.5sen(2\pit)'});

ylim([-3 3])
grid on
