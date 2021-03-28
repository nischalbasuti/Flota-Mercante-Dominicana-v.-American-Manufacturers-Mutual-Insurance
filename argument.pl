% contrary(bird(tweety), not_bird(tweety)).
% contrary(not_bird(tweety), bird(tweety)).

contrary(a, b) :- !, true.
contrary(b, a) :- !, true.

argument(r, [a)]).

argument(b, [c]).


attack(argument(A, B), argument(A_dash, [Y, REST])) :-
    attack(A, argument(A_dash), REST).

attack(argument(A, _), argument(_, [Y, REST])) :-
    contrary(A, Y).