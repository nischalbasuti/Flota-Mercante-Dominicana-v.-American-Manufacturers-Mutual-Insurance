:- dynamic captive_ship/1, requisition_ship/1, confiscation_ship/1, preemption_ship/1, detainment_ship/1, restraint_ship/1, arrest_ship/1, seizure_ship/1.
% The court argues that the proximate cause of loss is the occupation of the ship by the rebels or
% the use of heavy artillery by the American Military. The alleged barratry by the crew (if it existed)
% nor the actions of the Dominican Government affected the rebel's decision to fire at the American troops,
% who when returning fire sank the ship.

% The sinking of the ship is a warlike operation and is covered by the war risk policy. (Rule 1)

:- include('../war_risk_policy.pl').

% argument.........................................
cause_of_damage_to_ship(weapon_of_war, rebels).