% Base case: The maximum of a single-element list is the element itself
maxlist([M], M).

% Recursive case: Compare the head with the maximum of the tail
maxlist([H|T], M) :-
    maxlist(T, M1),
    (H > M1 -> M = H ; M = M1).
------------------------------------------------------------
?- maxlist([1, 2, 3, 4], M).
M = 4.

?- maxlist([10, 5, 20, 3], M).
M = 20.

?- maxlist([7, 8, 2, 5], M).
M = 8.

?- maxlist([3], M).
M = 3.
