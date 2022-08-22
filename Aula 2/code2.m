%% Clean Base
close all
clc
clear all

%% Code
t = 0:0.1:30;
A = 1;
a = 0.1;
w = pi/2;
y = A*cos(w*t).*exp(-a*t);
ylim([-1 1])

figure
plot(t, y, '--k')
hold all
stick(A, a, w);

%% fun

function stick(A, a, w)
    t = 0:30;
    y = A*cos(w*t).*exp(-a*t);
    stem(t, y, 'filled');
end