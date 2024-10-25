%% part 1

clc; clear; close all;

% Ploting a matrix
mat = [1 5 -4 3];
figure(1)
plot(mat)
mat2 = [1 4 -6; 2:4; 3:5];
figure(2)
plot(mat2)
grid minor

% And a function
x = linspace(0, 10);
y = sin(x);
figure(3)
plot(x, y, "Color",'b', 'LineStyle','--', 'Marker','o', 'LineWidth', 1.5)
title('SinSin')
ylabel('funky')
axis normal

% Multiple lines, one plot.
y2 = cos(x);
y3 = tan(x);
figure(4)
plot(x, y, x, y2, x, y3, 'LineWidth', 1.5)

% Stay
y4 = 2 * x + 1;
figure(5)
plot(x, y4, 'LineStyle','-.')
hold on
plot (x, y2)
legend('y = 2x + 1', 'y = cos x')

% Many plots with subplot
subplot(3, 2, 1)
plot(x, y2)
title('Plot one')
subplot(3, 2, 3)
plot(x, y3)
title('Plot 2')

% Discrete Plotting
figure()
stem(x,y2)
stem(mat2, 'LineWidth', 2)
stem(mat, 'filled')
scatter(x,y2)
scatter(x, y, 'filled', 'r')
y5 = 2 .^ x;
y6 = x .^ 2;
figure()
scatter(x, y5, 's')
hold on
scatter(x, y6)
legend('2^x', 'x^2')
sz = linspace(1, 200);
c = linspace(1, 256);
figure()
scatter(x, y2, sz, 'd')
figure()
scatter(x, y2, [], c)

%% part 2
clc; clear; close all;

x = linspace(0, 20);
y = linspace(0, 20);
z = x.^2 + y;
figure()
plot3(x, y, z)

[X, Y] = meshgrid(x, y);
Z = sin(X) + cos(Y);
figure()
surf(X,Y,Z)

% EOF!