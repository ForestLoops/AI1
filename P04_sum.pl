% Rule to calculate the sum of two numbers
sum(X, Y, Z) :- Z is X + Y.
------------------------------------------------------------
?- sum(5, 3, Result).
Result = 8.

?- sum(10, 15, X).
X = 25.
