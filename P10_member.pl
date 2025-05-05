% Base case: X is a member of a list if X is the head of the list
memb(X, [X|_]).

% Recursive case: X is a member if it is in the tail of the list
memb(X, [_|T]) :-
    memb(X, T).
------------------------------------------------------------
?- memb(3, [1, 2, 3, 4, 5]).
true.

?- memb(a, [x, y, z]).
false.

?- memb(b, [a, b, c]).
true.

?- memb(7, [1, 2, 3, 4, 5]).
false.
