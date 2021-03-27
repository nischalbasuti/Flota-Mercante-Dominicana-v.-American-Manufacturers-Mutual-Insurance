:- dynamic cause_of_damage_to_ship/2.

covered_by_war_risk :-
    war_risk,
    not(exemption).

war_risk :- cause_of_damage_to_ship(weapon_of_war, _).

% exemption 1
exemption :- cause_of_damage_to_ship(barratry, crew).

% exemption 2
exemption :- cause_of_damage_to_ship(capture, government_forces). 
exemption :- cause_of_damage_to_ship(seizure, government_forces).
exemption :- cause_of_damage_to_ship(arrest, government_forces).
exemption :- cause_of_damage_to_ship(restraint, government_forces).
exemption :- cause_of_damage_to_ship(detainment, government_forces).
exemption :- cause_of_damage_to_ship(preemption, government_forces).
exemption :- cause_of_damage_to_ship(confiscation, government_forces).
exemption :- cause_of_damage_to_ship(requisition, government_forces).
