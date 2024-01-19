%merge(L1 - list, L2 - list, R - resultlist)
%flow model(i,i,o)

mergeList([], [], []):-!.
mergeList(L1, [], L1):-!.
mergeList([], L2, L2):-!.
mergeList([H1|T1], [H2|T2],R):-
    H1 =:= H2,
    !,
    mergeList([H1|T1], T2, R).
mergeList([H1|T1], [H2|T2], [H1|R]):-
    H1 < H2,
    !,
    mergeList(T1, [H2|T2], R).
mergeList([H1|T1], [H2|T2], [H2|R]):-
    H1 > H2,
    !,
    mergeList([H1|T1], T2, R).


%mergeSublist(L - list, R - resultlist)
%flow model(i,o)

mergeSublist([], []):-!.
mergeSublist([H1|T], NewR):-
    is_list(H1),
    !,
    mergeSublist(T, R),
    mergeList(H1, R, NewR).
mergeSublist([_|T],R):-
    mergeSublist(T,R).
