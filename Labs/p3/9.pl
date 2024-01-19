%insert L E R
%iio
insert(L, E, [E|L]).
insert([H|T], E, [H|R]):-
    insert(T, E, R).
perm([], []).
perm([H|T], NewR):-
    perm(T, R),
    insert(R, H, NewR).

absDiff(A, B, R):-
    A < B,
    !,
    R is B-A.
absDiff(A,B,R):-
    R is A-B.
%L, e, R
%iii
checkAbsDiff([], _, _):-!. %it means there is nothing behind it
checkAbsDiff([H|_], E, R):-
    absDiff(H,E,R),
    !.
checkAbsDiff([_,H2|T], E, R):- % it means at least length > 2
    checkAbsDiff([H2|T], E, R).

%N, R
%io
createList(0, []):-!.
createList(N, [N|R]):-
    N1 is N - 1,
    createList(N1, R).

checkPerm([]):-!.
checkPerm([H|T]):-
    checkAbsDiff(T, H, 1),
    checkPerm(T).

oneSol(L, R):-
    perm(L, R),
    checkPerm(R).
