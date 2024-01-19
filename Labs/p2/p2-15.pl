%predecessor(L, F, R)
%ioo
predecessor([], -1, []).
predecessor([H|T], NewF, [NewH|R]):-
    predecessor(T, F, R),
    H2 is H + F,
    H2 < 0,
    !,
    NewF is H2,
    NewH is 10 + H2.
predecessor([H|T], NewF, [NewH|R]):-
    predecessor(T, F, R),
    NewH is H + F,
    NewF is 0.


