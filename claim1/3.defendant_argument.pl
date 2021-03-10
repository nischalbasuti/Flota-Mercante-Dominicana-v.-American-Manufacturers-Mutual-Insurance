% The war risk policy does not apply due to the condition 8 of rule2-a.
% (i.e. loss is directly due to "capture, seizure, arrest, restraint, detainment, preemption, confiscation or requisition" by the Dominican republic).
% (Rule 2a)
% 
% The defendant argues that the ship was either captured, seized, restrained, detained, preempted, confiscated or requisitioned
% when it was occupied by the Dominican police, which was the cause of the loss.

% argument.........................................
has_control_of_ship_at_time_of_loss(government_forces).
damage_ship(weapon_of_war).
captive_ship(government_forces).
seizure_ship(government_forces).
arrest_ship(government_forces).
restraint_ship(government_forces).
detainment_ship(government_forces).
preemption_ship(government_forces).
confiscation_ship(government_forces).

% rules.........................................
covered_by_war_risk :-
    war_risk,
    not(exemption).

% The risks of hostilities or warlike operations including damages 
% suffered from "weapons of war"
war_risk :- damage_ship(weapon_of_war).

exemption :- damage_ship(barratry).

exemption :-
  captive_ship(government_forces),
  has_control_of_ship_at_time_of_loss(government_forces).
exemption :-
  seizure_ship(government_forces),
  has_control_of_ship_at_time_of_loss(government_forces).
exemption :-
  arrest_ship(government_forces),
  has_control_of_ship_at_time_of_loss(government_forces).
exemption :-
  restraint_ship(government_forces),
  has_control_of_ship_at_time_of_loss(government_forces).
exemption :-
  detainment_ship(government_forces),
  has_control_of_ship_at_time_of_loss(government_forces).
exemption :-
  preemption_ship(government_forces),
  has_control_of_ship_at_time_of_loss(government_forces).
exemption :-
  confiscation_ship(government_forces),
  has_control_of_ship_at_time_of_loss(government_forces).