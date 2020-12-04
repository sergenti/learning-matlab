% RANDI

% Create a (m x n) matrix: m rows, n columns
% Fill the matrix with random values from a to b

A = randi([a, b], [m, n])

% all element of the odd rows are now equal to a single random number
M(1:2:end, :) = randi([1, 10])

% fully randomized odd rows elements
% how many times does it have to randomize?
% returns an array of derired length all specified
M(1:2:end, :) = randi([1, 10], size(M(1:2:end, :)))
