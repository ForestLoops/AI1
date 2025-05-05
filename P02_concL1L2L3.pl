% Base case: Appending an empty list to L2 results in L2
conc([], L2, L2).

% Recursive case: Break L1 into head and tail, and build the result list
conc([H|T], L2, [H|R]) :-
    conc(T, L2, R).
------------------------------------------------------------
?- conc([1,2], [3,4], X).
X = [1, 2, 3, 4].

?- conc([], [a, b, c], X).
X = [a, b, c].

?- conc([x, y], [], X).
X = [x, y].

?- conc([1], [2,3,4], L).
L = [1, 2, 3, 4].
