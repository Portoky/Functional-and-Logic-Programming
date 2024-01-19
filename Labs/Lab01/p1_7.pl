%isPresent(E - integer, L - list)
%flow model - (i,i)

isPresent(E, [E|_]):-!.
isPresent(E, [_|T]):-
    isPresent(E, T).


%intersection of to sets
%intersect(L1 - list1, L2 - list2, R - result)
%flow model-(i,i,o)
intersection([], _, []):-!.
intersection([H|T], L2, [H|R]):-
    isPresent(H, L2),
    intersection(T, L2, R),
    !.
intersection([_|T], L2, R):-
    intersection(T, L2, R).


