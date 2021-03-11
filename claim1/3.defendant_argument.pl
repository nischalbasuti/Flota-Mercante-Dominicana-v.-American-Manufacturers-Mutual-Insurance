% The war risk policy does not apply due to the condition 8 of rule2-a.
% (i.e. loss is directly due to "capture, seizure, arrest, restraint, detainment, preemption, confiscation or requisition" by the Dominican republic).
% (Rule 2a)
% 
% The defendant argues that the ship was either captured, seized, restrained, detained, preempted, confiscated or requisitioned
% when it was occupied by the Dominican police, which was the cause of the loss.

% argument.........................................
cause_of_damage_to_ship(capture, government_forces).

% rules.........................................
covered_by_war_risk(ACTION, PARTY) :-
    war_risk,
    not(exemption(ACTION, PARTY)).

war_risk :- cause_of_damage_to_ship(weapon_of_war, _).

% exemption 1
exemption(ACTION, PARTY) :- cause_of_damage_to_ship(barratry, crew).

% exemption 2
exemption(ACTION, PARTY) :- cause_of_damage_to_ship(capture, government_forces). 
exemption(ACTION, PARTY) :- cause_of_damage_to_ship(seizure, government_forces).
exemption(ACTION, PARTY) :- cause_of_damage_to_ship(arrest, government_forces).
exemption(ACTION, PARTY) :- cause_of_damage_to_ship(restraint, government_forces).
exemption(ACTION, PARTY) :- cause_of_damage_to_ship(detainment, government_forces).
exemption(ACTION, PARTY) :- cause_of_damage_to_ship(preemption, government_forces).
exemption(ACTION, PARTY) :- cause_of_damage_to_ship(confiscation, government_forces).
exemption(ACTION, PARTY) :- cause_of_damage_to_ship(requisition, government_forces).