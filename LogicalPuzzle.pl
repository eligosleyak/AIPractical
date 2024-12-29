
% Define the three friends and their possible sports
friend(tom).
friend(jerry).
friend(spike).

sport(cricket).
sport(football).
sport(tennis).

% Rule: Each friend likes a unique sport
likes(Friend, Sport) :- friend(Friend), sport(Sport).

% Solve the puzzle
solve(TomSport, JerrySport, SpikeSport) :-
    % Assign sports to friends
    likes(tom, TomSport),
    likes(jerry, JerrySport),
    likes(spike, SpikeSport),

    % Ensure each sport is unique
    TomSport \= JerrySport,
    TomSport \= SpikeSport,
    JerrySport \= SpikeSport,

    % Apply the clues
    TomSport \= cricket,       % Clue 1: Tom does not like cricket
    JerrySport \= tennis,      % Clue 2: Jerry does not like tennis
    SpikeSport = tennis.       % Clue 3: Spike likes neither cricket nor football


# TomSport = football,
# JerrySport = cricket,
# SpikeSport = tennis.
