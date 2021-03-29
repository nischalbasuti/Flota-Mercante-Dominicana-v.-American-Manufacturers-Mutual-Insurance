contrary(bird(tweety), not_bird(tweety)).
contrary(not_bird(tweety), bird(tweety)).

contrary(a, b) :- !, true.
contrary(b, a) :- !, true.

argument(fly(tweety), [bird(tweety)]).

argument(not_bird(tweety), [penguin(tweety)]).

attack(argument(A, _), argument(A_dash, [Y|REST])) :-
    attack(A,Y), !.

attack(argument(A, B), argument(A_dash, [_, REST])) :-
    attack(argument(A, B), argument(A_dash, REST).

attack(A, B) :-
    contrary(A, B),!.



