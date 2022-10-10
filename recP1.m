clear
clc
clear all

%%
ni= 0:10;
x = ((1/2).^ni);
N = length(x);

%Na mao, confirmacao
y1 = 1*(1/4).^(ni-1) + 2*(1/2).^(ni-1); 

y(1) = 8;
y2(1) = 8;

for ni = 2:N
    y(ni) =x(ni) +  y(ni-1)/4;
end

for ni = 2:N
    if ni ~= 2
        y2(ni) = y2(ni-1)/4;
    else
        y2(ni) = 1 + y2(ni-1)/4;
    end
end

%vetor de n para plotar
n = -1:N-2;

%subplot(2,1,1)
%hold all
%plot(n,y1)%na mao, confirmacao
%stem(n,y,'filled','r')
%xlabel('n')
%ylabel('y[n]')
%title('Degrau')
%ylim([0 9])
%grid on

subplot(2,1,1)
hold all
stem(n,y2,'filled','k')
xlabel('n')
ylabel('y[n]')
title('Impulso')
ylim([0 9])
grid on

y_conv = conv(y2,y1,'same');
subplot(2,1,2)
hold all
stem(n,y_conv,'filled','c')
xlabel('n')
ylabel('y[n]')
title('Convulução - Func conv')
ylim([0 9])
grid on
