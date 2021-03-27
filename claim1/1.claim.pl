% The war risk policy applies as the sinking of the ship is
% a loss caused by warlike operations 

:- include('../war_risk_policy.pl').

% argument.............................................
cause_of_damage_to_ship(weapon_of_war, rebels).
cause_of_damage_to_ship(weapon_of_war, americans).

contrary(cause_of_damage_to_ship(X,Y), not_cause_of_damage_to_ship(X,Y)).

p1 :- cause_of_damage_to_ship(weapon_of_war, rebels).