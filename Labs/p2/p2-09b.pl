%insert(L - list, R - list, E - integer, I - Integer)
%flow model (i,o,i,i)

insert([], [], _, _).
insert([H|T], [H,E|T2], E, I):-
    (I =:= 1; I =:= 3; I =:= 7; I =:= 15),
    NewI is I + 1,
    insert(T, T2, E, NewI).
insert([H|T], [H|T2], E, I):-
    NewI is I+1,
    insert(T, T2, E, NewI).

%insertList(L - List, R - list)
%flow model (i,o)
insertList([], []).
insertList([H1,H2|T], [H1,H3|R]):-
    is_list(H2),
    !,
    insert(H2, H3, H1, 1),
    insertList(T, R).

insertList([H|T], [H|R]):-
    insertList(T, R).
