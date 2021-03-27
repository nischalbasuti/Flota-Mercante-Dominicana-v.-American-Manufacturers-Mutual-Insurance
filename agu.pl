:- include('./apu.pl').
:- include('./war_risk_policy.pl').

attack(d1, p1) :- cause_of_damage_to_ship(barratry, crew).
attack(d2, p1) :- cause_of_damage_to_ship(barratry, crew).
attack(d3, p1) :- cause_of_damage_to_ship(capture, government_forces).
attack(c1, d1) :- cause_of_damage_to_ship(weapon_of_war, rebels).
attack(c1, d2) :-
    cause_of_damage_to_ship(weapon_of_war, rebels),
    ship_damaged_after(requisition, government_forces).
attack(c2, d3) :-
     cause_of_damage_to_ship(weapon_of_war, rebels),
     ship_damaged_after(requisition, government_forces),
     ambiguous(requisition),
     contract_written_by(defendant).