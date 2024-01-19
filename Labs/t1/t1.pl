%isPresent(E - integer, L - list)
%flow model(i, i)

isPresent(_, []):-!,fail.
isPresent(E, [E|_]):-!.
isPresent(E, [_|T]):-
    isPresent(E, T).


%toSet(L, R)
%flow model(i,o), (i,i)

toSet([], []).
toSet([H|T], [H|R]):-
    not(isPresent(H, T)),
    !,
    toSet(T, R).
toSet([_|T], R):-
    toSet(T, R).
