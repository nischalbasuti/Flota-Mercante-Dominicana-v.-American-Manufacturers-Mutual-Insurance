% The war risk policy applies as the sinking of the ship is
% a loss caused by warlike operations 

% argument.........................................
damage(ship, weapon_of_war).

% rules.........................................
covered_by_war_risk :-
    war_risk,
    not(exemption).

% The risks of hostilities or warlike operations including damages 
% suffered from "weapons of war"
war_risk :- damage(ship, weapon_of_war).

exemption :- false.