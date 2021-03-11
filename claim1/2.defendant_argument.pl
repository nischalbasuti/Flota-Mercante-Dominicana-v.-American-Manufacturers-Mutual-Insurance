% Loss was due to barratry, which does not exist under the war risk policy, but under the Hull Policy (Rule 3)
% The defendant argues that the actions of the master and crew constitute to barratry which was the proximate cause of loss.

% argument.........................................
cause_of_damage_to_ship(barratry, crew).

% rules.........................................
covered_by_war_risk(ACTION, PARTY) :-
    war_risk,
    not(exemption(ACTION, PARTY)).

war_risk :- cause_of_damage_to_ship(weapon_of_war, _).

% exemption 1
exemption(ACTION, PARTY) :- cause_of_damage_to_ship(barratry, crew).
