Domains
    X is integer
    List is integer*

Predicates
    search(integer,list)
    
Clauses
    search(X,[X|_]).
    search(X,[H|T]):- X<>H,search(X,T).