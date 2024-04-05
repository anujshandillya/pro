% Swap two elements in a list
swap([X,Y|Rest], [Y,X|Rest]) :-
    X > Y.
swap([Z|Rest1], [Z|Rest2]) :-
    swap(Rest1, Rest2).

% Perform a single pass of bubble sort
bubble_pass(List, Sorted) :-
    swap(List, Swapped),
    !, % Cut to prevent backtracking
    bubble_pass(Swapped, Sorted).
bubble_pass(Sorted, Sorted).

% Bubble sort predicate
bubble_sort(List, Sorted) :-
    bubble_pass(List, Sorted),
    !. % Cut to prevent backtracking

