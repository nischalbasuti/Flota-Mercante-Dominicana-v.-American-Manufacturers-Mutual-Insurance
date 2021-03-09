% facts----------------------------------------
has_control_of_ship_at_time_of_loss(rebels).
has_control_of_ship_before_time_of_loss(government_forces).
has_control_of_ship_before_time_of_loss(rebels).
restraint(ship_owner, rebels).
%/facts----------------------------------------

% rules ---------------------------------------
covered_by_war_risk :-
  war_risk,
  not(exemption).

exemption :-
  requisition(ship_owner, government_forces),
  has_control_of_ship_before_time_of_loss(government_forces).
exemption :-
  captive(ship_owner, government_forces),
  has_control_of_ship_at_time_of_loss(government_forces).
exemption :-
  seizure(ship_owner, government_forces),
  has_control_of_ship_at_time_of_loss(government_forces).
exemption :-
  arrest(ship_owner, government_forces),
  has_control_of_ship_at_time_of_loss(government_forces).
exemption :-
  restraint(ship_owner, government_forces),
  has_control_of_ship_at_time_of_loss(government_forces).
exemption :-
  detainment(ship_owner, government_forces),
  has_control_of_ship_at_time_of_loss(government_forces).
exemption :-
  preemption(ship_owner, government_forces),
  has_control_of_ship_at_time_of_loss(government_forces).
exemption :-
  confiscation(ship_owner, government_forces),
  has_control_of_ship_at_time_of_loss(government_forces).

% An event is considered a war risk if 
% 1. it does falls under free of capture and seizure clause. (Part of the hull policy)
% 2. any loss from hostile act includeing confiscation, expropriation, nationalization, or deprivation.
war_risk :- captive(ship_owner, hostile_forces).
war_risk :- seizure(ship_owner, hostile_forces).
war_risk :- restraint(ship_owner, hostile_forces).

% TODO: check syntax to see if the following exist
captive(PARTY_A, PARTY_B).
seizure(PARTY_A, PARTY_B).
arrest(PARTY_A, PARTY_B).
restraint(PARTY_A, PARTY_B).
detainment(PARTY_A, PARTY_B).
preemption(PARTY_A, PARTY_B).
confiscation(PARTY_A, PARTY_B).
requisition(PARTY_A, PARTY_B) :- formal_civil_condemnation(PARTY_B).
%/rules ---------------------------------------

% Trying to get `civil_procedure(government_forces).` to evaluate to `false` without errors for not
% defining `civil_procedure`.
formal_civil_condemnation(_) :- false.

%% Uncomment this if civil_procedure(government_forces) is supposed to be true.
% civil_procedure(government_forces).
