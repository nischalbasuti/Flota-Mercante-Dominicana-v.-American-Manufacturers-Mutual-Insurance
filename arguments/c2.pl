% argument c2
% attacks d3
:- dynamic cause_of_damage_to_ship/2.
% Neither the plaintiff nor the defendant provide significant evidence 
% indicating the intent of the parties in including the term "requisition" in the policy. 
% 
% Since there is ambiguity in the definition of "requisition",
% it must be construed against the writer of the contract (Rule 6),
% in this case the defendant and that "requisition” in this policy means

% something much closer to formal civil condemnation than a swift rummage through the ship.
% 
% Since there is no requisition, the exclusion clause for
% the war risk policy (Rule2b) cannot be applied.  

% argument.........................................
cause_of_damage_to_ship(weapon_of_war, rebels).

ambiguous(requisition).
contract_written_by(defendant).
ship_damaged_after(requisition, government_forces).

% exemption 3
exemption :-
    ship_damaged_after(requisition, government_forces),
    construe_term_in_favour_of(requisition, defendant).

construe_term_in_favour_of(TERM, PARTY) :-
    ambiguous(TERM),
    not(contract_written_by(PARTY)).
