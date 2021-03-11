:- dynamic captive_ship/1, requisition_ship/1, confiscation_ship/1, preemption_ship/1, detainment_ship/1, restraint_ship/1, arrest_ship/1, seizure_ship/1.
% The court argues that the proximate cause of loss is the occupation of the ship by the rebels or
% the use of heavy artillery by the American Military. The alleged barratry by the crew (if it existed)
% nor the actions of the Dominican Government affected the rebel's decision to fire at the American troops,
% who when returning fire sank the ship.

% The sinking of the ship is a warlike operation and is covered by the war risk policy. (Rule 1)

% fact............................................
damage_ship(weapon_of_war).

% argument.........................................
cause_of_damage_to_ship(war_like_operations, rebels).

% rules.........................................
covered_by_war_risk(ACTION, PARTY) :-
    war_risk,
    not(exemption(ACTION, PARTY)).

war_risk :- damage_ship(weapon_of_war).

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