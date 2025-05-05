% Base case: any number raised to power 0 is 1
power(_, 0, 1).

% Recursive case: Num^Pow = Num * Num^(Pow-1)
power(Num, Pow, Ans) :-
    Pow > 0,
    Pow1 is Pow - 1,
    power(Num, Pow1, Ans1),
    Ans is Num * Ans1.
------------------------------------------------------------
?- power(2, 3, A).
A = 8.

?- power(5, 0, A).
A = 1.

?- power(3, 4, A).
A = 81.
