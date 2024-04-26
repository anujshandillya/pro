husband('VJ', 'BM').
husband('VM', 'HM').
father('VJ', 'DM').
father('VM', 'VJ').

wife(X, Y) :-
    husband(Y, X).

mother(X, Y) :-
    wife(X, Z),
    father(Z, Y).

parent(X, Y) :-
    mother(X, Y);
    father(X, Y).

son(X, Y) :-
    male(X),
    father(X, Y).

daughter(X, Y) :-
    female(X),
    mother(X, Y).

grandfather(X, Y) :-
    father(X, Z),
    father(Z, Y).

grandmother(X, Y) :-
    mother(X, Z),
    mother(Z, Y).

male(X) :-
    son(X, _);
    father(X, _).

female(X) :-
    daughter(X, _);
    mother(X, _).
