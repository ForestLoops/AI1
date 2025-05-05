% Rule to multiply two numbers
multi(N1, N2, R) :- R is N1 * N2.
------------------------------------------------------------
?- multi(5, 3, R).
R = 15.

?- multi(7, 0, R).
R = 0.

?- multi(9, 6, R).
R = 54.
