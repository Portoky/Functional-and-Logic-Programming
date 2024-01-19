%interval(M - integer, N - integer, R - List).
%flow model - (i,i,o).

interval(N, N, [N]):-!.
interval(M, N, [M|R]):-
    M < N,
    NewM is M+1,
    interval(NewM, N, R).
