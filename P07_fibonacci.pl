% Base cases
generate_fib(0, 0).
generate_fib(1, 1).

% Recursive case
generate_fib(N, T) :-
    N > 1,
    N1 is N - 1,
    N2 is N - 2,
    generate_fib(N1, T1),
    generate_fib(N2, T2),
    T is T1 + T2.
------------------------------------------------------------
?- generate_fib(0, T).
T = 0.

?- generate_fib(1, T).
T = 1.

?- generate_fib(5, T).
T = 5.

?- generate_fib(7, T).
T = 13.
