%insertAllElements(L-list, L2 - list, R resultList)
%flowmodel(iio)
insertAllElements(L1, [], L1).
insertAllElements(L1, [H|T], [H|R]):-
    insertAllElements(L1, T, R).


%replaceWithAnother(L1, K, L2, R)
%flowmodel(i,i,i,o)
replaceWithAnother([], _, _, []).
replaceWithAnother([K|T], K, L2, R2):-!,
    replaceWithAnother(T, K, L2, R),
    insertAllElements(R, L2, R2).

replaceWithAnother([H|T], K, L2, [H|R]):-
    replaceWithAnother(T, K, L2, R).

getFirstEl([], 0).
getFirstEl([H|_], H).
%b
%replaceWithAnotherSublists(L1, L2, R)
%iio
replaceWithAnotherSublists([], _, []):-!.
replaceWithAnotherSublists([H|T],L2,[H|R]):-
    not(is_list(H)),
    !,
    replaceWithAnotherSublists(T, L2, R).
replaceWithAnotherSublists([H|T], L2, [H2|R2]):-
    replaceWithAnotherSublists(T, L2, R2),
    getFirstEl(H, K),
    replaceWithAnother(H, K, L2, H2).



