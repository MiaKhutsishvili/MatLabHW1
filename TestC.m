%% Part I
% For while if else continue break.
clc; clear; close all;

for A = [1:20]
    disp(A)
end

i = 0;
while i < 5
    disp(i)
    i = i + 1;
end

if i < 6
    disp('yes')
else
    disp('no')
end

for i = 1:10
    if i == 7
        break
    end
    if i / 2 == 3
        disp(i)
    else 
        continue
    end
    disp('hop')
end
disp(i)

%% Part II
clc; clear; close all;

% Symbolic variables
syms x;
syms A [1 4];

% Symbolic functions
syms f(x) g(x, y);
f(x) = x^2 + x;
g(x, y) = x - 2*y;
f(10)
g(4, 2)

% Another way:
F = @(x) cos(x);
F(0)

% Plotting 
fplot(F)
fplot(x, f)


%% Part III
clc; clear; close all;

% Derivative & Integral

% Numerical functions:
% D
x = -10:0.001:10;
y = 3 * x.^2;
dx = 0.001;
yPrime = diff(y) / dx;
figure()
plot(x, y, x(1:length(yPrime)), yPrime)
% I
y1 = -x;
figure()
plot(x, y1)
if trapz(x, y1) < 0.0000001
    disp('Halelooya')
end

% Symbolic functions
% D
syms x;
f = x^2;
df = diff(f)
syms y;
g = 2*x + cos(y);
dgx = diff(g, x)
dgy = diff(g, y)
% I
int(df)
int(f)
int(dgx, x)
int(dgy, x)

%% Part IV
clc; clear; close all;

% Absolute & Angle
a = 3 + 4j; 
abs(a)
b = -1;
angle(b)
angle(a)
c = exp(3);
abs(c)
angle(c)
