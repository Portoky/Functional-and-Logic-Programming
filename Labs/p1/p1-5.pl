%isPresent(L - list, E - element)
%(i,i) - false or true

isPresent([E|_], E):-!.
isPresent([_|T], E):-
    isPresent(T, E).

%union(L1 - list, L2 - list, R - resultlist)
%iio

union([], [], []):-!.
union(L1, [], L1):-!.
union(L1, [E|T], [E|R]):-
    not(isPresent(L1, E)),
    union(L1, T, R),
    !.
union(L1, [_|T], R):-
    union(L1, T, R).


%makePair(E - atom, L - list, R - resultlist)
%iio
makePair(_, [], []).
makePair(E, [H|T], [[E2,H2]|R]):-
   makePair(E, T, R),
   E2 is E,
   H2 is H.


%allPairs(L-list, R resultList)
%(io)
allPairs([_], []).
allPairs([], []).
allPairs([H1|T], R3):-
    makePair(H1, T, R1),
    allPairs(T, R2),
    addTwoList(R2, R1, R3).

%addTwoList(L1, L2, R)
%(iio)
addTwoList([], [], []).
addTwoList([H1], [], [H1]).
addTwoList([H1|T1], [], [H1|R1]):-
    addTwoList(T1, [], R1).
addTwoList(L1, [H|T], [H|R]):-
    addTwoList(L1, T, R).
