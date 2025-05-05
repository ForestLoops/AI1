% Rule to find maximum of two numbers
max(X, Y, X) :- X >= Y.
max(X, Y, Y) :- Y > X.
------------------------------------------------------------
?- max(5, 3, M).
M = 5.

?- max(10, 25, M).
M = 25.

?- max(7, 7, M).
M = 7.
