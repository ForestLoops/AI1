% reverse(List, ReversedList)
reverse(L, R) :- reverse_acc(L, [], R).

% Helper predicate: reverse_acc(List, Accumulator, Result)
reverse_acc([], Acc, Acc).
reverse_acc([H|T], Acc, R) :-
    reverse_acc(T, [H|Acc], R).
------------------------------------------------------------?- reverse([1, 2, 3, 4], X).
X = [4, 3, 2, 1].

?- reverse([], X).
X = [].

?- reverse([a, b, c], R).
R = [c, b, a].
