:- dynamic cause_of_damage_to_ship/2.
% The defendant argues that the ship was requisitioned by the Dominican police when the occupied
% the ship when they were retreating. Since the loss occurred after the Dominican forces
% requisitioned the ship, the war risk policy does not apply due to the conditions of Rule 2b. 

% fact............................................
damage_ship(weapon_of_war).

% argument.........................................
ship_damaged_after(requisition, government_forces).

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

% exemption 3
exemption(ACTION, PARTY) :-  ship_damaged_after(requisition, government_forces).