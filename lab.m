n = input("Введите количество точек разбиения n = ");
k = input("Выберите оснащение: левое(-1), среднее(0), правое(1) \n");
fun = @(x) x.^3;



figure(1)
hold on;
grid on;
grid minor;

x = 0.5/n:1/n:1;
s = sum(fun(x+k*0.5/n)/n);
bar(x,fun(x+k*0.5/n),1);
title("n = "+n+"   S = "+s);

x = 0:0.0001:1;
plot(x,fun(x),"LineWidth",2,"Color","#A2142F");