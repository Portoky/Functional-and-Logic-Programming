%add_front_list(L-list, E- integer, Res -result list)
%iio
add_front_list([], E, [E]).
add_front_list(L, E, [E|L]).
%add_plus_digits(L-List, F - integer, Res - result list)
%(iio)
add_plus_digits(L, 0, L).
add_plus_digits(L, F, Res):-
    NewF is F mod 10,
    NextF is F // 10,
    add_plus_digits(L, NextF, R),
    add_front_list(R, NewF, Res).

%m_front_dig(L - list, K - integer, Res -result List)
%(i,i,o)
m_front_dig(L, K, Res):-
    multiply(L, K, F, R),
    add_plus_digits(R, F, Res).
%multiply(L - list, K - integer, F - integer (for flag), R - result
% list) flow model(i,i, o,o)
multiply([], _, 0, []).
multiply([H|T], K, NewF, [NewH|R]):-
    multiply(T, K, F, R),
    MulH is H * K,
    MulAddH is MulH + F,
    NewF is MulAddH // 10,
    NewH is MulAddH mod 10.
