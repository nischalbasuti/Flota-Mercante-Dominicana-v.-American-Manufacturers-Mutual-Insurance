% Loss was due to barratry, which does not exist under the war risk policy, but under the Hull Policy (Rule 3)
% The defendant argues that the actions of the master and crew constitute to barratry which was the proximate cause of loss.

% argument.........................................
damage(ship, barratry).

% rules.........................................
covered_by_war_risk :-
    war_risk,
    not(exemption).

% The risks of hostilities or warlike operations including damages 
% suffered from "weapons of war"
war_risk :- damage(ship, weapon_of_war).

exemption :- damage(ship, barratry).