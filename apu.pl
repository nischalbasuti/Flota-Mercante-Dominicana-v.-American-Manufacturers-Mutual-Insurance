:- dynamic attack/2.
acceptable(X) :- not(defeat(X)).
defeat(X) :- attack(Y, X), acceptable(Y).