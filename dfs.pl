% Define the tree structure
tree(a, [b, c]).
tree(b, [d, e]).
tree(c, [f]).
tree(d, []).
tree(e, []).
tree(f, []).

add([],X,X).
add([H|T],X,[H|T2]):-
    add(T,X,T2).

reverseL([],[]).
reverseL([H|T],L2):-
    reverseL(T,L1),
    add(L1,[H],L2).

% DFS traversal to find the path to the goal node
dfs_path(Start, Goal, Path) :-
    dfs_path_helper(Start, Goal, [Start], Path).

dfs_path_helper(Node, Node, _, [Node]).

dfs_path_helper(Start, Goal, Visited, [Start|Path]) :-
    tree(Start, Children),
    member(Next, Children),
    \+ member(Next, Visited),
    dfs_path_helper(Next, Goal, [Next|Visited], Path).
