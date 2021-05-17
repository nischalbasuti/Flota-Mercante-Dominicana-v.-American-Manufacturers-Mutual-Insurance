% argument c2
% attacks d3

cause_of_damage_to_ship(weapon_of_war, rebels).

ambiguous(requisition).
contract_written_by(defendant).
ship_damaged_after(requisition, government_forces).

% exemption 3
exemption :-
    ship_damaged_after(requisition, government_forces),
    construe_term_in_favour_of(requisition, defendant).