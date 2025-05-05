% Base case: factorial of 0 is 1
factorial(0, 1).

% Recursive case: factorial of N is N * factorial(N-1)
factorial(N, F) :-
    N > 0,
    N1 is N - 1,
    factorial(N1, F1),
    F is N * F1.
------------------------------------------------------------
?- factorial(0, F).
F = 1.

?- factorial(5, F).
F = 120.

?- factorial(7, F).
F = 5040.
