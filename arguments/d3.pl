% argument d3
% attacks p1
:- dynamic cause_of_damage_to_ship/2.
% The defendant argues that the ship was requisitioned by the Dominican police when the occupied
% the ship when they were retreating. Since the loss occurred after the Dominican forces
% requisitioned the ship, the war risk policy does not apply due to the conditions of Rule 2b. 

% argument.........................................
cause_of_damage_to_ship(weapon_of_war, rebels).

ship_damaged_after(requisition, government_forces).

% exemption 3
exemption :-  ship_damaged_after(requisition, government_forces).

d3 :- cause_of_damage_to_ship(weapon_of_war, rebels).