% The war risk policy applies as the sinking of the ship is
% a loss caused by warlike operations 

% argument.............................................
cause_of_damage_to_ship(weapon_of_war, rebels).
cause_of_damage_to_ship(weapon_of_war, americans).

% rules.........................................
covered_by_war_risk :-
    war_risk.

% The risks of hostilities or warlike operations including damages suffered from "weapons of war"
war_risk :- cause_of_damage_to_ship(weapon_of_war, _).
