% Facts
mother(mary, alice).
mother(mary, john).
father(james, alice).
father(james, john).
mother(susan, mary).
father(robert, mary).

% Rules
child(X, Y) :- mother(Y, X).
child(X, Y) :- father(Y, X).

grandparent(X, Y) :- mother(X, Z), child(Y, Z).
grandparent(X, Y) :- father(X, Z), child(Y, Z).

% Example Queries
% 1. Who is the child of Mary?
% Query: child(X, mary).

% 2. Who is the grandparent of Alice?
% Query: grandparent(X, alice).

% 3. List all children of James.
% Query: child(X, james).
