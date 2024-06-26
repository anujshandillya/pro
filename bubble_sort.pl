swap([X,Y|Rest], [Y,X|Rest]) :-
    X > Y.
swap([Z|Rest1], [Z|Rest2]) :-
    swap(Rest1, Rest2).


bubble_pass(List, Sorted) :-
    swap(List, Swapped),
    !,
    bubble_pass(Swapped, Sorted).
bubble_pass(Sorted, Sorted).


bubble_sort(List, Sorted) :-
    bubble_pass(List, Sorted),
    !. % Cut to prevent backtracking

