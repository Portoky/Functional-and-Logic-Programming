%gcd(a - Integer, b - integer, m - integer)
%flow model(i,i,o)

gcd(A, 0, A):- A > 0.
gcd(A, B, M):-
    B2 is A mod B,
    A2 is B,
    gcd(A2, B2, M).

%lcm(A, B, R)
%(iio)
lcm(A, B, R):-
    gcd(A, B, M),
    R is (A * B) / M.

powerOfTwo(1).
powerOfTwo(A):-
    A mod 2 =:= 0,
    A2 is A / 2,
    powerOfTwo(A2).

%addVTwo(E, L, I - integerindex, R)
%i,i,i,o
addVTwo(_, [], _, []).
addVTwo(E, [H1|T1], I, [H1,E|T2]):-
    powerOfTwo(I),
    !,
    addVTwo(E, T1, I+1, T2).
addVTwo(E, [H1|T1], I, [H1|T2]):-
    addVTwo(E, T1, I+1, T2).

