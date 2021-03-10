% The court argues that the proximate cause of loss is the occupation of the ship by the rebels or
% the use of heavy artillery by the American Military. The alleged barratry by the crew (if it existed)
% nor the actions of the Dominican Government affected the rebel's decision to fire at the American troops,
% who when returning fire sank the ship.

% The sinking of the ship is a warlike operation and is covered by the war risk policy. (Rule 1)

% argument.........................................
damage(ship, weapon_of_war).

% rules.........................................
covered_by_war_risk :-
    war_risk,
    not(exemption).

% The risks of hostilities or warlike operations including damages suffered from "weapons of war"
war_risk :- damage(ship, weapon_of_war).

exemption :- false.