%% Part I
clc; clear; close all;

% Fourier series (Numerical)
t = linspace(-2, 2, 10000); % Better if t = T
f = t.^3; % Fourier is for MOTENAVEB -> Bast Nimdamane
T = 4;
N = 100;
a0 = 1/T * trapz(t, f);
a = zeros(1, N);
b = zeros(1, N);
for n = 1:N
    a(n) = 2/T * round (trapz(t, f.*cos(n*t*2*pi/T)), 5);
    b(n) = 2/T * round (trapz(t, f.*sin(n*t*2*pi/T)), 5);
end
F = a0 * ones(1, length(t));
for n = 1:N
    F = F + a(n)*cos(2*pi*n*t/T) + b(n)*sin(2*pi*n*t/T);
end
figure()
plot (t, F, t, f)
legend ('y = t^3','Fourier of y')
stem (t, F)
stem (1:N, abs(a)) % Odd function
stem (1:N, abs(b)) % Absolute value
figure()
stem (1:N, angle(b))
figure()
stem (1:N, b)

% Plotting complex
z = 6 + 6i;
figure()
polarplot(angle(z),abs(z),"o")

t = linspace(0,4*pi,200);
z = t.*exp(1i*t);
figure()
plot(z,"-")
axis equal
grid on
xlabel("Re(z)")
ylabel("Im(z)")
figure()
polarplot(z,"-")