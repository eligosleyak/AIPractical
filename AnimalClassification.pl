% Facts about animals and their properties
mammal(bat).
mammal(dog).
mammal(cat).

bird(sparrow).
bird(ostrich).
bird(penguin).

can_fly(bat).
can_fly(sparrow).

lays_eggs(sparrow).
lays_eggs(ostrich).
lays_eggs(penguin).

% Rules to infer properties
animal(X) :- mammal(X).
animal(X) :- bird(X).

% Example Queries:
% 1. Which animals are mammals?
% Query: mammal(X).

% 2. List all animals that can fly.
% Query: can_fly(X).
