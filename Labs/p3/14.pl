%sSum(L - list, S - sum, R - list)
%flow model: i,i,i,o


sSum(_, S, S, []):-!.

sSum([], _, _, []):-fail.

sSum([_|T], S, CS, R):-
    sSum(T, S, CS, R).

sSum([H|T], S, CS, [H|R]):-
    H + CS =< S,
    !,
    NewCS is H + CS,
    sSum(T, S, NewCS, R).

%(i ,i ,o)
allSum(L, S, Res):-
    findall(Y, sSum(L, S, 0, Y), Res).


