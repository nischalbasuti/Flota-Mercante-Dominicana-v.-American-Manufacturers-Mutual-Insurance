construe_term_in_favour_of(TERM, PARTY) :-
    ambiguous(TERM),
    not(contract_written_by(PARTY)).