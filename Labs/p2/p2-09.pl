%insert(L - list, R - list, E - integer, I - Integer)
%flow model (i,o,i,i)

insert([], [], _, _).
insert([H|T], [H,E|T2], E, I):-
    (I =:= 1; I =:= 3; I =:= 7; I =:=15),
    NewI is I + 1,
    insert(T, T2, E, NewI).
insert([H|T], [H|T2], E, I):-
    NewI is I+1,
    insert(T, T2, E, NewI).
