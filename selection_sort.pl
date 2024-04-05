% Find minimum element in a list
min_list([X], X).
min_list([X|Xs], Min) :-
    min_list(Xs, TailMin),
    Min is min(X, TailMin).

% Delete element from a list
delete(_, [], []).
delete(X, [X|Xs], Xs).
delete(X, [Y|Xs], [Y|NewXs]) :-
    delete(X, Xs, NewXs).

% Selection sort predicate
selection_sort([], []).
selection_sort(List, [Min|SortedTail]) :-
    min_list(List, Min),
    delete(Min, List, NewList),
    selection_sort(NewList, SortedTail).

