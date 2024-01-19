%bubbleSort(L - list, R - result list)
%flow model(i, o)
bubble_sort(List,Sorted):-b_sort(List,[],Sorted).
b_sort([],Acc,Acc).
b_sort([H|T],Acc,Sorted):-bubble(H,T,NT,Max),b_sort(NT,[Max|Acc],Sorted).

bubble(X,[],[],X).
bubble(X,[Y|T],[Y|NT],Max):-X>Y,bubble(X,T,NT,Max).
bubble(X,[Y|T],[X|NT],Max):-X=<Y,bubble(Y,T,NT,Max).

bs_sublist([], []).
bs_sublist([H|T], [NewH|R]):-
    is_list(H),
    !,
    bubble_sort(H, NewH),
    bs_sublist(T, R).
bs_sublist([H|T], [H|R]):-
    bs_sublist(T, R).

