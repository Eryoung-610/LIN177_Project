:- ['properties.pl'].
:- ['entailment.pl'].

% Uno
spanish([P1,n,o], [ones]) :-
    phone(P1), tns(P1),bck(P1).

% Dos
spanish([P1,o,s], [ones]) :-
    phone(P1), cor(P1),voi(P1), not(nas(P1)),alv(P1), ant(P1), not(lab(P1)),not(pal(P1)),not(sib(P1)), not(snt(P1)).

% Tres
spanish([P1,r,e,s], [ones]) :-
    phone(P1), alv(P1),ant(P1),cor(P1),not(vel(P1)),not(voi(P1)),not(pal(P1)),not(sib(P1)).

% cuatro
spanish([c,u,a,P1,r,o], [ones]) :-
    phone(P1), alv(P1),ant(P1),cor(P1),not(vel(P1)),not(voi(P1)),not(pal(P1)),not(sib(P1)).

% cinco
spanish([c,P1,n,c,o], [ones]) :-
    phone(P1),tns(P1),not(bck(P1)).

% seis
spanish([P1,e,i,P1], [ones]) :-
    phone(P1), not(voi(P1)), alv(P1),sib(P1), cnt(P1).

% siete
spanish([P1,i,e,t,e], [ones]) :-
    phone(P1), not(voi(P1)), alv(P1),sib(P1), cnt(P1).

% ocho
spanish([P1,c,h,P1], [ones]) :-
    phone(P1),mid(P1),bck(P1).

% nueve
spanish([P1,u,e,v,e], [ones]) :-
    phone(P1), snt(P1),nas(P1),not(lab(P1)),alv(P1),cor(P1),not(sib(P1)).

% diez
spanish([P1,i,e,z], [tens]) :-
    phone(P1), cor(P1),voi(P1), not(nas(P1)),alv(P1), ant(P1), not(lab(P1)),not(pal(P1)),not(sib(P1)), not(snt(P1)).

% once
spanish([P1,n,c,e], [tens]) :-
    phone(P1),mid(P1),bck(P1).

% doce
spanish([P1,o,c,e], [tens]) :-
    phone(P1), cor(P1),voi(P1), not(nas(P1)),alv(P1), ant(P1), not(lab(P1)),not(pal(P1)),not(sib(P1)), not(snt(P1)).

% trece
spanish([P1,r,e,c,e], [tens]) :-
    phone(P1), alv(P1),ant(P1),cor(P1),not(vel(P1)),not(voi(P1)),not(pal(P1)),not(sib(P1)).

% catorce
spanish([c,a,P1,o,r,c,e], [tens]) :-
    phone(P1), alv(P1),ant(P1),cor(P1),not(vel(P1)),not(voi(P1)),not(pal(P1)),not(sib(P1)).

% quince
spanish([q,u,i,P1,c,e], [tens]) :-
    phone(P1), snt(P1),nas(P1),not(lab(P1)),alv(P1),cor(P1),not(sib(P1)).

% 16-19 root
spanish([P1,i,e,c,i], [tens]) :-
    phone(P1), cor(P1),voi(P1), not(nas(P1)),alv(P1), ant(P1), not(lab(P1)),not(pal(P1)),not(sib(P1)), not(snt(P1)).

% Gets dieci-seis, dieci-siete
spanish(Stem, [stem]) :-
    spanish(Root, [tens]),
    spanish(Singular,[ones]),
    append(Root,Singular,Stem),
    last(Root,LastOfRoot),
    [FirstOfOnes|_] = Singular,
    homorganic(LastOfRoot,FirstOfOnes).

% Gets dieci-ocho, dieci-nueve
spanish(Stem, [stem]) :-
    spanish(Root, [tens]),
    spanish(Singular,[ones]),
    append(Root,Singular,Stem),
    last(Root,LastOfRoot),
    [FirstOfOnes|_] = Singular,
    homorganicc(LastOfRoot,FirstOfOnes).

%---------------------------------------------------------------------------------------

% 20
spanish([P1,e,i,n,t,e], [twenty]) :-
    phone(P1),lab(P1),not(cor(P1)),voi(P1),cnt(P1), not(vel(P1)).

% Root for 20+
spanish([P1,e,i,n,t,i], [twentiesroot]) :-
    phone(P1),lab(P1),not(cor(P1)),voi(P1),cnt(P1), not(vel(P1)).

spanish(Stem, [stem]) :-
    spanish(Root, [twentiesroot]),
    spanish(Singular,[ones]),
    append(Root,Singular,Stem).
    
%---------------------------------------------------------------------------------------

% 30
spanish([P1,r,e,i,n,t,a], [thirtytoninety]) :-
    phone(P1), alv(P1),ant(P1),cor(P1),not(vel(P1)),not(voi(P1)),not(pal(P1)),not(sib(P1)).

%---------------------------------------------------------------------------------------

% 40
spanish([c,u,a,r,e,n,P1,a], [thirtytoninety]) :-
    phone(P1), alv(P1),ant(P1),cor(P1),not(vel(P1)),not(voi(P1)),not(pal(P1)),not(sib(P1)).

%---------------------------------------------------------------------------------------

% 50
spanish([c,i,n,c,u,e,n,P1,a], [thirtytoninety]):-
    phone(P1), alv(P1),ant(P1),cor(P1),not(vel(P1)),not(voi(P1)),not(pal(P1)),not(sib(P1)).

%---------------------------------------------------------------------------------------

% 60
spanish([P1,e,s,e,n,t,a], [thirtytoninety]) :-
    phone(P1), not(voi(P1)), alv(P1),sib(P1), cnt(P1).

%---------------------------------------------------------------------------------------

% 70
spanish([P1,e,t,e,n,t,a], [thirtytoninety]) :-
    phone(P1), not(voi(P1)), alv(P1),sib(P1), cnt(P1).

%---------------------------------------------------------------------------------------

% 80
spanish([P1,c,h,e,n,t,a], [thirtytoninety]) :-
    phone(P1),mid(P1),bck(P1).

%---------------------------------------------------------------------------------------

% 90
spanish([P1,o,v,e,n,t,a], [thirtytoninety]) :-
    phone(P1), snt(P1),nas(P1),not(lab(P1)),alv(P1),cor(P1),not(sib(P1)).

%---------------------------------------------------------------------------------------

% 31-99

spanish(Stem,[stem]) :-
    spanish(Root,[thirtytoninety]),
    spanish(Singular,[ones]),
    append(Root, [//], X),
    append(X,[y],Y),
    append(Y,[//], Z),
    append(Z,Singular,Stem).

%---------------------------------------------------------------------------------------

% 100
spanish([c,i,e,P1], [hundred]) :-
    phone(P1), snt(P1),nas(P1),not(lab(P1)),alv(P1),cor(P1),not(sib(P1)).

spanish([c,i,e,P1,t,o], [hundredroot]) :-
    phone(P1), snt(P1),nas(P1),not(lab(P1)),alv(P1),cor(P1),not(sib(P1)).

% 100-109
spanish(Stem,[hundreds]) :-
    spanish(Root,[hundredroot]),
    spanish(Singular,[ones]),
    append(Root,[//],Temp),
    append(Temp,Singular,Stem).

% 110-115
spanish(Stem,[hundreds]) :-
    spanish(Root,[hundredroot]),
    spanish(Tens,[tens]),
    append(Root,[//],Temp),
    append(Temp,Tens,Stem).

% 116-120
spanish(Stem,[hundreds]) :-
    spanish(Root,[hundredroot]),
    spanish(Tens,[tens]),
    spanish(Singular,[ones]),
    last(Tens,LastOfTens),
    [FirstOfOnes|_] = Singular,
    % ciento, //
    append(Root, [//], Temp),
    % ciento, //, dieci
    append(Temp, Tens, Tempp),
    % ciento, //, dieciseis
    append(Tempp,Singular,Stem),
    homorganic(LastOfTens,FirstOfOnes).

spanish(Stem,[hundreds]) :-
    spanish(Root,[hundredroot]),
    spanish(Tens,[tens]),
    spanish(Singular,[ones]),
    last(Tens,LastOfTens),
    [FirstOfOnes|_] = Singular,
    % ciento, //
    append(Root, [//], Temp),
    % ciento, //, dieci
    append(Temp, Tens, Tempp),
    % ciento, //, dieciseis
    append(Tempp,Singular,Stem),
    homorganicc(LastOfTens,FirstOfOnes).

%---------------------------------------------------------------------------------------

% 120
spanish(Stem,[hundreds]) :-
    spanish(Root,[hundredroot]),
    spanish(Twenty,[twenty]),
    append(Root,[//],Temp),
    append(Temp,Twenty,Stem).


% 120s
spanish(Stem,[hundreds]) :-
    spanish(Root,[hundredroot]),
    spanish(Tens,[twentiesroot]),
    spanish(Singular,[ones]),
    append(Root,[//],Temp),
    append(Temp, Tens, Tempp),
    append(Tempp,Singular,Stem).

%---------------------------------------------------------------------------------------

% 130
spanish(Stem,[hundreds]) :-
    spanish(Root,[hundredroot]),
    spanish(Tens,[thirties]),
    append(Root,[//],Temp),
    append(Temp,Tens,Stem).

%---------------------------------------------------------------------------------------

% 140
spanish(Stem,[hundreds]) :-
    spanish(Root,[hundredroot]),
    spanish(Tens,[forties]),
    append(Root,[//],Temp),
    append(Temp,Tens,Stem).


%---------------------------------------------------------------------------------------

% 150
spanish(Stem,[hundreds]) :-
    spanish(Root,[hundredroot]),
    spanish(Tens,[fifites]),
    append(Root,[//],Temp),
    append(Temp,Tens,Stem).

%---------------------------------------------------------------------------------------

% 160
spanish(Stem,[hundreds]) :-
    spanish(Root,[hundredroot]),
    spanish(Tens,[sixties]),
    append(Root,[//],Temp),
    append(Temp,Tens,Stem).


%---------------------------------------------------------------------------------------

% 170
spanish(Stem,[hundreds]) :-
    spanish(Root,[hundredroot]),
    spanish(Tens,[seventies]),
    append(Root,[//],Temp),
    append(Temp,Tens,Stem).


%---------------------------------------------------------------------------------------

% 180
spanish(Stem,[hundreds]) :-
    spanish(Root,[hundredroot]),
    spanish(Tens,[eighties]),
    append(Root,[//],Temp),
    append(Temp,Tens,Stem).

%---------------------------------------------------------------------------------------

% 190
spanish(Stem,[hundreds]) :-
    spanish(Root,[hundredroot]),
    spanish(Tens,[nineties]),
    append(Root,[//],Temp),
    append(Temp,Tens,Stem).

% 130,140,150,160,170,180,190
spanish(Stem, [hundreds]) :-
    spanish(Root,[hundredroot]),
    spanish(Tens,[thirtytoninety]),
    append(Root,[//],Temp),
    append(Temp,Tens,Stem).

% 130,140,150,160,170,180,190 plus the singular
spanish(Stem,[hundreds]) :-
    spanish(Root,[hundredroot]),
    spanish(Tens,[thirtytoninety]),
    spanish(Singular,[ones]),
    append(Root,[//],Temp),
    append(Temp,Tens,Tempp),
    append(Tempp,[//],Temppp),
    append(Temppp,[y],Tempppp),
    append(Tempppp,[//],Temppppp),
    append(Temppppp,Singular,Stem).

%---------------------------------------------------------------------------------------

% 200
spanish(Stem,[twohundreds]) :-
    spanish(Root,[hundredroot]),
    twohundred(Prefix),
    append(Prefix,Root,Temp),
    append(Temp,[s],Stem).

%---------------------------------------------------------------------------------------

% 201-209
spanish(Stem,[twohundreds]) :-
    spanish(Root,[hundredroot]),
    twohundred(Prefix),
    spanish(Singular,[ones]),
    append(Prefix,Root,X),
    append(X,[s],Y),
    append(Y,[//],Z),
    append(Z,Singular,Stem).

%---------------------------------------------------------------------------------------

% 210-215
spanish(Stem,[twohundreds]) :-
    spanish(Root,[hundredroot]),
    twohundred(Prefix),
    spanish(Tens,[tens]),
    append(Prefix,Root,X),
    append(X,[s],Y),
    append(Y,[//],Z),
    append(Z,Tens,Stem).

%---------------------------------------------------------------------------------------

% 216-219
spanish(Stem,[twohundreds]) :-
    spanish(Root,[hundredroot]),
    twohundred(Prefix),
    spanish(Tens,[tens]),
    spanish(Singular,[ones]),
    append(Prefix,Root,X),
    append(X,[s],Y),
    append(Y,[//],Z),
    append(Z,Tens,A),
    append(A,Singular,Stem),
    last(Tens,LastOfTens),
    [FirstOfOnes|_] = Singular,
    homorganic(LastOfTens,FirstOfOnes).

spanish(Stem,[twohundreds]) :-
    spanish(Root,[hundredroot]),
    twohundred(Prefix),
    spanish(Tens,[tens]),
    spanish(Singular,[ones]),
    append(Prefix,Root,X),
    append(X,[s],Y),
    append(Y,[//],Z),
    append(Z,Tens,A),
    append(A,Singular,Stem),
    last(Tens,LastOfTens),
    [FirstOfOnes|_] = Singular,
    homorganicc(LastOfTens,FirstOfOnes).

%---------------------------------------------------------------------------------------

% 220
spanish(Stem,[twohundreds]) :-
    spanish(Root,[hundredroot]),
    twohundred(Prefix),
    spanish(Tens,[twenty]),
    append(Prefix,Root,X),
    append(X,[s],Y),
    append(Y,[//],Z),
    append(Z,Tens,Stem).

%---------------------------------------------------------------------------------------

% 221-229
spanish(Stem,[twohundreds]) :-
    spanish(Root,[hundredroot]),
    twohundred(Prefix),
    spanish(Tens,[twentiesroot]),
    spanish(Singular,[ones]),
    append(Prefix,Root,X),
    append(X,[s],Y),
    append(Y,[//],Z),
    append(Z,Tens,A),
    append(A,Singular,Stem).

%---------------------------------------------------------------------------------------

% 230,240,250,etc up to 290
spanish(Stem,[twohundreds]) :-
    spanish(Root,[hundredroot]),
    twohundred(Prefix),
    spanish(Tens,[thirtytoninety]),
    % dosciento
    append(Prefix,Root,X),
    % doscientos
    append(X,[s],Y),
    % doscientos, //,
    append(Y,[//],Z),
    % doscientos, // trienta
    append(Z,Tens,Stem).

%---------------------------------------------------------------------------------------

% 231-239,241-249,251-259,etc up to 299
spanish(Stem,[twohundreds]) :-
    spanish(Root,[hundredroot]),
    twohundred(Prefix),
    spanish(Tens,[thirtytoninety]),
    spanish(Singular,[ones]),
    append(Prefix,Root,X),
    append(X,[s],Y),
    append(Y,[//],Z),
    append(Z,Tens,A),
    append(A,[//],B),
    append(B,[y],C),
    append(C,[//],D),
    append(D,Singular,Stem).

%---------------------------------------------------------------------------------------

% 300
spanish(Stem,[threehundreds]) :-
    spanish(Root,[hundredroot]),
    threehundred(Prefix),
    append(Prefix,Root,Temp),
    append(Temp,[s],Stem).

%---------------------------------------------------------------------------------------

% 301-309
spanish(Stem,[threehundreds]) :-
    spanish(Root,[hundredroot]),
    threehundred(Prefix),
    spanish(Singular,[ones]),
    append(Prefix,Root,X),
    append(X,[s],Y),
    append(Y,[//],Z),
    append(Z,Singular,Stem).

%---------------------------------------------------------------------------------------

% 310-315
spanish(Stem,[threehundreds]) :-
    spanish(Root,[hundredroot]),
    threehundred(Prefix),
    spanish(Tens,[tens]),
    append(Prefix,Root,X),
    append(X,[s],Y),
    append(Y,[//],Z),
    append(Z,Tens,Stem).

%---------------------------------------------------------------------------------------

% 316-319
spanish(Stem,[threehundreds]) :-
    spanish(Root,[hundredroot]),
    threehundred(Prefix),
    spanish(Tens,[tens]),
    spanish(Singular,[ones]),
    append(Prefix,Root,X),
    append(X,[s],Y),
    append(Y,[//],Z),
    append(Z,Tens,A),
    append(A,Singular,Stem),
    last(Tens,LastOfTens),
    [FirstOfOnes|_] = Singular,
    homorganic(LastOfTens,FirstOfOnes).

spanish(Stem,[threehundreds]) :-
    spanish(Root,[hundredroot]),
    threehundred(Prefix),
    spanish(Tens,[tens]),
    spanish(Singular,[ones]),
    append(Prefix,Root,X),
    append(X,[s],Y),
    append(Y,[//],Z),
    append(Z,Tens,A),
    append(A,Singular,Stem),
    last(Tens,LastOfTens),
    [FirstOfOnes|_] = Singular,
    homorganicc(LastOfTens,FirstOfOnes).

%---------------------------------------------------------------------------------------

% 320
spanish(Stem,[threehundreds]) :-
    spanish(Root,[hundredroot]),
    threehundred(Prefix),
    spanish(Tens,[twenty]),
    append(Prefix,Root,X),
    append(X,[s],Y),
    append(Y,[//],Z),
    append(Z,Tens,Stem).

%---------------------------------------------------------------------------------------

% 321-329
spanish(Stem,[threehundreds]) :-
    spanish(Root,[hundredroot]),
    threehundred(Prefix),
    spanish(Tens,[twentiesroot]),
    spanish(Singular,[ones]),
    append(Prefix,Root,X),
    append(X,[s],Y),
    append(Y,[//],Z),
    append(Z,Tens,A),
    append(A,Singular,Stem).

%---------------------------------------------------------------------------------------

% 330,340,350,etc up to 390
spanish(Stem,[threehundreds]) :-
    spanish(Root,[hundredroot]),
    threehundred(Prefix),
    spanish(Tens,[thirtytoninety]),
    % dosciento
    append(Prefix,Root,X),
    % doscientos
    append(X,[s],Y),
    % doscientos, //,
    append(Y,[//],Z),
    % doscientos, // trienta
    append(Z,Tens,Stem).

%----------------------------------------------------------------------------------------

% 331-339,341-349,351-359,etc up to 399
spanish(Stem,[threehundreds]) :-
    spanish(Root,[hundredroot]),
    threehundred(Prefix),
    spanish(Tens,[thirtytoninety]),
    spanish(Singular,[ones]),
    append(Prefix,Root,X),
    append(X,[s],Y),
    append(Y,[//],Z),
    append(Z,Tens,A),
    append(A,[//],B),
    append(B,[y],C),
    append(C,[//],D),
    append(D,Singular,Stem).

%----------------------------------------------------------------------------------------

% 400
spanish(Stem,[fourhundreds]) :-
    spanish(Root,[hundredroot]),
    fourhundred(Prefix),
    append(Prefix,Root,Temp),
    append(Temp,[s],Stem).

%---------------------------------------------------------------------------------------

% 401-409
spanish(Stem,[fourhundreds]) :-
    spanish(Root,[hundredroot]),
    fourhundred(Prefix),
    spanish(Singular,[ones]),
    append(Prefix,Root,X),
    append(X,[s],Y),
    append(Y,[//],Z),
    append(Z,Singular,Stem).

%---------------------------------------------------------------------------------------

% 410-415
spanish(Stem,[fourhundreds]) :-
    spanish(Root,[hundredroot]),
    fourhundred(Prefix),
    spanish(Tens,[tens]),
    append(Prefix,Root,X),
    append(X,[s],Y),
    append(Y,[//],Z),
    append(Z,Tens,Stem).

%---------------------------------------------------------------------------------------

% 416-419
spanish(Stem,[fourhundreds]) :-
    spanish(Root,[hundredroot]),
    fourhundred(Prefix),
    spanish(Tens,[tens]),
    spanish(Singular,[ones]),
    append(Prefix,Root,X),
    append(X,[s],Y),
    append(Y,[//],Z),
    append(Z,Tens,A),
    append(A,Singular,Stem),
    last(Tens,LastOfTens),
    [FirstOfOnes|_] = Singular,
    homorganic(LastOfTens,FirstOfOnes).

spanish(Stem,[fourhundreds]) :-
    spanish(Root,[hundredroot]),
    fourhundred(Prefix),
    spanish(Tens,[tens]),
    spanish(Singular,[ones]),
    append(Prefix,Root,X),
    append(X,[s],Y),
    append(Y,[//],Z),
    append(Z,Tens,A),
    append(A,Singular,Stem),
    last(Tens,LastOfTens),
    [FirstOfOnes|_] = Singular,
    homorganicc(LastOfTens,FirstOfOnes).

%---------------------------------------------------------------------------------------

% 420
spanish(Stem,[fourhundreds]) :-
    spanish(Root,[hundredroot]),
    fourhundred(Prefix),
    spanish(Tens,[twenty]),
    append(Prefix,Root,X),
    append(X,[s],Y),
    append(Y,[//],Z),
    append(Z,Tens,Stem).

%---------------------------------------------------------------------------------------

% 421-429
spanish(Stem,[fourhundreds]) :-
    spanish(Root,[hundredroot]),
    fourhundred(Prefix),
    spanish(Tens,[twentiesroot]),
    spanish(Singular,[ones]),
    append(Prefix,Root,X),
    append(X,[s],Y),
    append(Y,[//],Z),
    append(Z,Tens,A),
    append(A,Singular,Stem).

%---------------------------------------------------------------------------------------

% 430,440,450,etc up to 490
spanish(Stem,[fourhundreds]) :-
    spanish(Root,[hundredroot]),
    fourhundred(Prefix),
    spanish(Tens,[thirtytoninety]),
    % dosciento
    append(Prefix,Root,X),
    % doscientos
    append(X,[s],Y),
    % doscientos, //,
    append(Y,[//],Z),
    % doscientos, // trienta
    append(Z,Tens,Stem).

%----------------------------------------------------------------------------------------

% 431-439,441-449,451-459,etc up to 499
spanish(Stem,[fourhundreds]) :-
    spanish(Root,[hundredroot]),
    fourhundred(Prefix),
    spanish(Tens,[thirtytoninety]),
    spanish(Singular,[ones]),
    append(Prefix,Root,X),
    append(X,[s],Y),
    append(Y,[//],Z),
    append(Z,Tens,A),
    append(A,[//],B),
    append(B,[y],C),
    append(C,[//],D),
    append(D,Singular,Stem).

%----------------------------------------------------------------------------------------


% HOMORGANICS
% Need i to match with s. For dieci-seis, dieci-siete
homorganic(A,B) :-
    not(bck(A)) <=> cnt(B),cor(B),
    not(cns(A)) <=> cnt(B),cor(B),
    tns(A) <=> cnt(B),cor(B).

% Need i to match with o,n. For dieci-ocho, dieci-nueve
homorganicc(A,B) :-
    not(cor(A)) <=> snt(B),not(hih(B)),
    not(cns(A)) <=> snt(B),not(hih(B)),
    not(bck(A)) <=> snt(B),not(hih(B)),
    hih(A) <=> snt(B),not(hih(B)).

% Need prefixs ending in e,o, or s to match with cientos.
homorganiccc(A,B) :-
    sib(A) <=> sib(B),
    not(voi(A)) <=> not(voi(B)).

% Need prefix starting with non vowel to match with cientos
homorganicccc(A,B) :-
    not(cns(A)) <=> sib(B),not(voi(B)),
    mid(A) <=> sib(B),not(voi(B)),
    bck(A) <=> sib(B),not(voi(B)),
    not(hih(A)) <=> sib(B),not(voi(B)).


% -----------------------------------------------------

% PREFIXES FOR HUNDREDS
% 200
twohundred([P1,o,s]) :-
    phone(P1), cor(P1),voi(P1), not(nas(P1)),alv(P1), ant(P1), not(lab(P1)),not(pal(P1)),not(sib(P1)), not(snt(P1)).

% 300
threehundred([P1,r,e,s]) :-
    phone(P1), alv(P1),ant(P1),cor(P1),not(vel(P1)),not(voi(P1)),not(pal(P1)),not(sib(P1)).

% 400
fourhundred([c,u,a,P1,r,o]) :-
    phone(P1), alv(P1),ant(P1),cor(P1),not(vel(P1)),not(voi(P1)),not(pal(P1)),not(sib(P1)).