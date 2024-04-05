% Partitioning predicate
partition(_, [], [], []).
partition(Pivot, [X|Xs], [X|L], R) :-
    X =< Pivot,
    partition(Pivot, Xs, L, R).
partition(Pivot, [X|Xs], L, [X|R]) :-
    X > Pivot,
    partition(Pivot, Xs, L, R).

% Quicksort predicate
quicksort([], []).
quicksort([X|Xs], Sorted) :-
    partition(X, Xs, L, R),
    quicksort(L, LSorted),
    quicksort(R, RSorted),
    append(LSorted, [X|RSorted], Sorted).
?- quicksort([5, 3, 8, 1, 9, 2], Sorted).
Sorted = [1, 2, 3, 5, 8, 9].

