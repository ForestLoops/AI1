% Base case: The sum of an empty list is 0
sumlist([], 0).

% Recursive case: Sum of the list is the head plus the sum of the tail
sumlist([H|T], S) :-
    sumlist(T, S1),
    S is H + S1.
------------------------------------------------------------
?- sumlist([1, 2, 3, 4], S).
S = 10.

?- sumlist([5, 10, 15], S).
S = 30.

?- sumlist([], S).
S = 0.
