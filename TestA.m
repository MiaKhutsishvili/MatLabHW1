clc; clear; close all;

% Defining a vector for the first time!
v = [1, 1, 1]

% It will be shown, the next vector though won't.
u = [2, -1, 0];

% You may ignore spaces:
t = [1 65   7]

% A big big vector
V = 2:14

% A big step big vector:)
U = 3:3:15
X = 20:-2:10

% Another way
Y = linspace (1, 9, 5)
% == 5 points between 1 - 10

% Transposing a matrix:
XX = transpose (X)
% Or
T = t'

% A matrix
A = [3 4; 5 6]
A2 = A'
B = [3:5; 6:3:12]

% Matlab is 1 based
B (2, 3)
B (end)

% Special Matrixes 
C = ones (4)
D = ones (2, 5)

% 3D ones
E = ones (2, 2, 2)

% Classname of ones
p = [1 + 2j, 3]
q = ones (2, 'like', p)

% Zeros
Z = zeros (3)

% Eye is I!
I = eye (5)

% Random
R = rand (4, 3)

% Operations
A + A2
B * B'

% Not A multiple!
em = [1 2; 2 3; 3 4];
um = [1 1; 2 2; 3 3];
em .* um
em * um'

% Pow err
po = [1:3; 2:4; 3:5];
po ^ 3

% NO Po
nopo = [1:3; 2:4]
nopo .^ 2

% / is * inverse 
% inverse for squares
inv (A)

% EOF!