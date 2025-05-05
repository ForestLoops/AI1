% Base case: Insert at the first position (N = 1), so insert I at the front of the list
insert(I, 1, L, [I|L]).

% Recursive case: Decrement N and move to the next position in the list
insert(I, N, [H|T], [H|R]) :-
    N > 1,
    N1 is N - 1,
    insert(I, N1, T, R).
------------------------------------------------------------
?- insert(5, 3, [1, 2, 3, 4], R).
R = [1, 2, 5, 3, 4].

?- insert(a, 1, [b, c, d], R).
R = [a, b, c, d].

?- insert(x, 4, [1, 2, 3], R).
R = [1, 2, 3, x].

?- insert(10, 2, [], R).
R = [10].
