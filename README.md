# Prolog Programs

This repository contains various Prolog programs for different tasks.

## Search

```prolog
Domains
    X=integer
    List=integer*

Predicates
    search(integer,list)
    
Clauses
    search(X,[X|_]).
    search(X,[H|T]):-X<>H,search(X,T).
```

## Size of list

```prolog
Domains
N=integer
L=integer*

Predicates
size(N,L)

Clauses
size(0,[]).
size(N,[_|T]) :-
    size(M,T),
    N = M+1.
```

## Sum of the elements of the list

```prolog
Domains
    L=integer*

Predicates
    sum(L,integer)

Clauses
    sum([],0).
    sum([H|T],R):-sum(T,X),R=H+X.
```

## Factorial of a number

```prolog
Domains
N=integer
R=integer

Predicates
fact(N,R)

Clauses
fact(0,1)
fact(N,Result) :-
    N>0,
    H=N-1,
    fact(H,R),
    Result=N*R.
```

## Subset

```prolog
Domains
    L=integer*

Predicates
    member(integer,L)
    subset(L,L)

Clauses
    member(X,[X|_]).
    member(X,[H|T]):- X<>H, member(X,T).
    subset([],list).
    subset([H|T],list):- member(H,list),subset(T,list).
```

## Fibonacci Series

```prolog
```

## Append list

```prolog
Domains
    X=integer*

Predicates
    append(X,X,X)

Clauses
    append([],X,X).
    append([H|T],X,[H|T2]):-append(T,X,T2).
```

## Delete an occurence

```prolog
Domains
    Y=integer*

Predicates
    delete(integer,Y,Y)

Clauses
    delete(Y,[Y|T],T).
    delete(Y,[H|T],[H|T2]):-Y<>H,delete(Y,T,T2).
```

## Replace an occurence

```prolog
Domains
    Y=integer*

Predicates
    replace(integer,integer,Y,Y)

Clauses
    replace(_,_,[],[]).
    replace(N,M,[N|T],[M|T2]).
    replace(N,M,[H|T],[H|T2]):-N<>H,replace(N,M,T,T2).
```

## Delete all occurences

```prolog
Domains
    Y=integer*

Predicates
    delete(integer,Y,Y)

Clauses
    delete(_,[],[]).
    delete(Y,[Y|T],B).
    delete(Y,[H|T],[H|T2]):-Y<>H,delete(Y,T,T2).
```

## Replace all occurences

```prolog
Domains
    Y=integer*

Predicates
    replace(integer,integer,Y,Y)

Clauses
    replace(_,_,[],[]).
    replace(N,M,[N|T],[M|T2]):-replace(N,M,T,T2).
    replace(N,M,[H|T],[H|T2]):-N<>H,replace(N,M,T,T2).
```

## Reverse a list

```prolog
Domains
    X=integer*

Predicates
    append(X,X,X)
    reverseL(X,X)

Clauses
    append([],X,X).
    append([H|T],X,[H|T2]):-append(T,X,T2).
    reverseL([],[]).
    reverseL([H|T],L2):-reverseL(T,L1),append(L1,[H],L2).
```