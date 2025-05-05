% Facts: Gender
male(john).
male(paul).
male(tom).
male(david).

female(mary).
female(lisa).
female(anna).
female(susan).

% Facts: Parent relationships
parent(john, paul).
parent(john, lisa).
parent(mary, paul).
parent(mary, lisa).

parent(paul, tom).
parent(paul, anna).
parent(susan, tom).
parent(susan, anna).

% Rules

% X is father of Y if X is male and X is parent of Y
father(X, Y) :- male(X), parent(X, Y).

% X is mother of Y if X is female and X is parent of Y
mother(X, Y) :- female(X), parent(X, Y).

% X is a sibling of Y if they share at least one parent and are not the same person
sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.

% X is grandfather of Y if X is male and is parent of Y's parent
grandfather(X, Y) :- male(X), parent(X, Z), parent(Z, Y).

% X is grandmother of Y if X is female and is parent of Y's parent
grandmother(X, Y) :- female(X), parent(X, Z), parent(Z, Y).

% X is child of Y if Y is parent of X
child(X, Y) :- parent(Y, X).

% X is son of Y if X is male and Y is parent of X
son(X, Y) :- male(X), parent(Y, X).

% X is daughter of Y if X is female and Y is parent of X
daughter(X, Y) :- female(X), parent(Y, X).
------------------------------------------------------------
?- father(john, paul).
true.

?- mother(mary, lisa).
true.

?- sibling(paul, lisa).
true.

?- grandfather(john, tom).
true.

?- daughter(anna, paul).
true.

?- son(tom, paul).
true.

?- child(paul, john).
true.
