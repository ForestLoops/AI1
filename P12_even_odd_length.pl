% Base case: An empty list has length 0 (even)
evenlength([]).

% Recursive case: A list has even length if the tail has odd length
evenlength([_|T]) :-
    oddlength(T).

% Base case: A list with one element has length 1 (odd)
oddlength([_]).

% Recursive case: A list has odd length if the tail has even length
oddlength([_|T]) :-
    evenlength(T).
------------------------------------------------------------
?- evenlength([1, 2, 3, 4]).
true.

?- evenlength([1, 2, 3]).
false.

?- oddlength([1, 2, 3, 4]).
false.

?- oddlength([1, 2, 3]).
true.
