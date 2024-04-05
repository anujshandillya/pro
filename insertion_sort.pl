% Insert element into sorted list
insert(X, [], [X]).
insert(X, [Y|Ys], [X,Y|Ys]) :-
    X =< Y.
insert(X, [Y|Ys], [Y|Zs]) :-
    X > Y,
    insert(X, Ys, Zs).

% Insertion sort predicate
insertion_sort([], []).
insertion_sort([X|Xs], Sorted) :-
    insertion_sort(Xs, SortedTail),
    insert(X, SortedTail, Sorted).

