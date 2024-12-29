% Facts
parent(mary, alice).
parent(mary, john).
parent(james, alice).
parent(james, john).
parent(robert, mary).
parent(susan, mary).

% Rules
child(X, Y) :- parent(Y, X).

sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.

grandparent(X, Y) :- parent(X, Z), parent(Z, Y).

% Example Queries
% 1. Who is the parent of John?
% Query: parent(X, john).

% 2. List all children of Mary.
% Query: child(X, mary).

% 3. Find all grandparents in the family.
% Query: grandparent(X, _).
