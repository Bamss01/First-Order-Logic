pria(david).
pria(jack).
pria(john).
pria(ray).
pria(peter).

wanita(amy).
wanita(karen).
wanita(liza).
wanita(susan).
wanita(mary).

pasangan(david, amy).
pasangan(jack, karen).
pasangan(john, susan).

orangtua(david, liza).
orangtua(amy, liza).
orangtua(david, john).
orangtua(amy, john).
orangtua(jack, ray).
orangtua(karen, ray).
orangtua(jack, susan).
orangtua(karen, susan).
orangtua(john, peter).
orangtua(susan, peter).
orangtua(john, mary).
orangtua(susan, mary).

ayah(X, Y) :- pria(X), orangtua(X, Y).
ibu(X, Y) :- wanita(X), orangtua(X, Y).
saudara(X, Y) :- orangtua(Z, X), orangtua(Z, Y), X \= Y.

enakkan(X, Y) :- orangtua(Z, X), saudara(Z, Y).
cucu(X, Y) :- orangtua(Y, Z), orangtua(Z, X).

% 1. Siapa saja anak Jack?
% ?- orangtua(jack, X).

% 2. Siapa saja saudara Ray?
% ?- saudara(ray, X).

% 3. Siapa cucu Jack?
% ?- cucu(X, jack).
%
% 4. Siapa ibu Peter?
% ?- ibu(X, peter).
%
% 5. Siapa ayah John?
% ?- ayah(X, john).
