% Base case: If N = 1, remove the head of the list
delete(1, [H|T], T).

% Recursive case: Decrement N and skip the head of the list
delete(N, [H|T], [H|R]) :-
    N > 1,
    N1 is N - 1,
    delete(N1, T, R).
------------------------------------------------------------
?- delete(3, [1, 2, 3, 4, 5], R).
R = [1, 2, 4, 5].

?- delete(1, [a, b, c, d], R).
R = [b, c, d].

?- delete(4, [10, 20, 30], R).
R = [10, 20].

?- delete(2, [x, y, z], R).
R = [x, z].
