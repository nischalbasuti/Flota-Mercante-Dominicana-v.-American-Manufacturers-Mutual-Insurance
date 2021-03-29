attack(argument(A, _), argument(A_dash, [Y|REST])) :-
    attack(A,Y), !.

attack(argument(A, B), argument(A_dash, [_, REST])) :-
    attack(argument(A, B), argument(A_dash, REST)).

attack(A, B) :-
    contrary(A, B),!.
%----------------------------------------------------------------------------------
contrary(cause_of_damage_to_ship(X,Y), not_cause_of_damage_to_ship(X,Y)).
contrary(not_cause_of_damage_to_ship(X,Y), cause_of_damage_to_ship(X,Y)).

% Claim 1
argument(covered_by_war_risk, [cause_of_damage_to_ship(weapon_of_war, rebels)]).

% Defendant argument 1
argument(not_cause_of_damage_to_ship(weapon_of_war, rebels), [cause_of_damage_to_ship(barratry, crew)]).