:- dynamic cause_of_damage_to_ship/2.
% Neither the plaintiff nor the defendant provide significant evidence 
% indicating the intent of the parties in including the term "requisition" in the policy. 
% 
% Since there is ambiguity in the definition of "requisition",
% it must be construed against the writer of the contract (Rule 6), in this case the defendant and that "requisition” in this policy means something much closer to formal civil condemnation than a swift rummage through the ship.
% 
% Since there is no requisition, the exclusion clause for
% the war risk policy (Rule2b) cannot be applied.  

% fact............................................
damage_ship(weapon_of_war).

% argument.........................................
ambiguous(requisition).
contract_written_by(defendant).
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
exemption(_, _) :-
    ship_damaged_after(requisition, government_forces),
    construe_term_in_favour_of(requisition, defendant).

construe_term_in_favour_of(TERM, PARTY) :-
    ambiguous(TERM),
    not(contract_written_by(PARTY)).
