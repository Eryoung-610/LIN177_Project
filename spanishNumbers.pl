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

% 500
spanish(Stem,[fivehundreds]) :-
    fivehundred(Root),
    append(Root,[s],Stem).

%---------------------------------------------------------------------------------------

% 501-509
spanish(Stem,[fivehundreds]) :-
    fivehundred(Root),
    spanish(Singular,[ones]),
    append(Root,[s],Y),
    append(Y,[//],Z),
    append(Z,Singular,Stem).

%---------------------------------------------------------------------------------------

% 510-515
spanish(Stem,[fivehundreds]) :-
    fivehundred(Root),
    spanish(Tens,[tens]),
    append(Root,[s],Y),
    append(Y,[//],Z),
    append(Z,Tens,Stem).

%---------------------------------------------------------------------------------------

% 516-519
spanish(Stem,[fivehundreds]) :-
    fivehundred(Root),
    spanish(Tens,[tens]),
    spanish(Singular,[ones]),
    append(Root,[s],Y),
    append(Y,[//],Z),
    append(Z,Tens,A),
    append(A,Singular,Stem),
    last(Tens,LastOfTens),
    [FirstOfOnes|_] = Singular,
    homorganic(LastOfTens,FirstOfOnes).

spanish(Stem,[fivehundreds]) :-
    fivehundred(Root),
    spanish(Tens,[tens]),
    spanish(Singular,[ones]),
    append(Root,[s],Y),
    append(Y,[//],Z),
    append(Z,Tens,A),
    append(A,Singular,Stem),
    last(Tens,LastOfTens),
    [FirstOfOnes|_] = Singular,
    homorganicc(LastOfTens,FirstOfOnes).

%---------------------------------------------------------------------------------------

% 520
spanish(Stem,[fivehundreds]) :-
    fivehundred(Root),
    spanish(Tens,[twenty]),
    append(Root,[s],Y),
    append(Y,[//],Z),
    append(Z,Tens,Stem).

%---------------------------------------------------------------------------------------

% 521-529
spanish(Stem,[fivehundreds]) :-
    fivehundred(Root),
    spanish(Tens,[twentiesroot]),
    spanish(Singular,[ones]),
    append(Root,[s],Y),
    append(Y,[//],Z),
    append(Z,Tens,A),
    append(A,Singular,Stem).

%---------------------------------------------------------------------------------------

% 530,540,550,etc up to 590
spanish(Stem,[fivehundreds]) :-
    fivehundred(Root),
    spanish(Tens,[thirtytoninety]),
    % quiniento
    append(Root,[s],Y),
    % quinientos, //,
    append(Y,[//],Z),
    % quinientos, // trienta
    append(Z,Tens,Stem).

%----------------------------------------------------------------------------------------

% 531-539,541-549,551-559,etc up to 599
spanish(Stem,[fivehundreds]) :-
    fivehundred(Root),
    spanish(Tens,[thirtytoninety]),
    spanish(Singular,[ones]),
    append(Root,[s],Y),
    append(Y,[//],Z),
    append(Z,Tens,A),
    append(A,[//],B),
    append(B,[y],C),
    append(C,[//],D),
    append(D,Singular,Stem).

%----------------------------------------------------------------------------------------

% 600
spanish(Stem,[sixhundreds]) :-
    spanish(Root,[hundredroot]),
    sixhundred(Prefix),
    append(Prefix,Root,Temp),
    append(Temp,[s],Stem).

%---------------------------------------------------------------------------------------

% 601-609
spanish(Stem,[sixhundreds]) :-
    spanish(Root,[hundredroot]),
    sixhundred(Prefix),
    spanish(Singular,[ones]),
    append(Prefix,Root,X),
    append(X,[s],Y),
    append(Y,[//],Z),
    append(Z,Singular,Stem).

%---------------------------------------------------------------------------------------

% 610-615
spanish(Stem,[sixhundreds]) :-
    spanish(Root,[hundredroot]),
    sixhundred(Prefix),
    spanish(Tens,[tens]),
    append(Prefix,Root,X),
    append(X,[s],Y),
    append(Y,[//],Z),
    append(Z,Tens,Stem).

%---------------------------------------------------------------------------------------

% 616-619
spanish(Stem,[sixhundreds]) :-
    spanish(Root,[hundredroot]),
    sixhundred(Prefix),
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

spanish(Stem,[sixhundreds]) :-
    spanish(Root,[hundredroot]),
    sixhundred(Prefix),
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

% 620
spanish(Stem,[sixhundreds]) :-
    spanish(Root,[hundredroot]),
    sixhundred(Prefix),
    spanish(Tens,[twenty]),
    append(Prefix,Root,X),
    append(X,[s],Y),
    append(Y,[//],Z),
    append(Z,Tens,Stem).

%---------------------------------------------------------------------------------------

% 621-629
spanish(Stem,[sixhundreds]) :-
    spanish(Root,[hundredroot]),
    sixhundred(Prefix),
    spanish(Tens,[twentiesroot]),
    spanish(Singular,[ones]),
    append(Prefix,Root,X),
    append(X,[s],Y),
    append(Y,[//],Z),
    append(Z,Tens,A),
    append(A,Singular,Stem).

%---------------------------------------------------------------------------------------

% 630,640,650,etc up to 690
spanish(Stem,[sixhundreds]) :-
    spanish(Root,[hundredroot]),
    sixhundred(Prefix),
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

% 631-639,641-649,651-659,etc up to 699
spanish(Stem,[sixhundreds]) :-
    spanish(Root,[hundredroot]),
    sixhundred(Prefix),
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

% 700
spanish(Stem,[sevenhundreds]) :-
    spanish(Root,[hundredroot]),
    sevenhundred(Prefix),
    append(Prefix,Root,Temp),
    append(Temp,[s],Stem).

%---------------------------------------------------------------------------------------

% 701-709
spanish(Stem,[sevenhundreds]) :-
    spanish(Root,[hundredroot]),
    sevenhundred(Prefix),
    spanish(Singular,[ones]),
    append(Prefix,Root,X),
    append(X,[s],Y),
    append(Y,[//],Z),
    append(Z,Singular,Stem).

%---------------------------------------------------------------------------------------

% 710-715
spanish(Stem,[sevenhundreds]) :-
    spanish(Root,[hundredroot]),
    sevenhundred(Prefix),
    spanish(Tens,[tens]),
    append(Prefix,Root,X),
    append(X,[s],Y),
    append(Y,[//],Z),
    append(Z,Tens,Stem).

%---------------------------------------------------------------------------------------

% 716-719
spanish(Stem,[sevenhundreds]) :-
    spanish(Root,[hundredroot]),
    sevenhundred(Prefix),
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

spanish(Stem,[sevenhundreds]) :-
    spanish(Root,[hundredroot]),
    sevenhundred(Prefix),
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

% 720
spanish(Stem,[sevenhundreds]) :-
    spanish(Root,[hundredroot]),
    sevenhundred(Prefix),
    spanish(Tens,[twenty]),
    append(Prefix,Root,X),
    append(X,[s],Y),
    append(Y,[//],Z),
    append(Z,Tens,Stem).

%---------------------------------------------------------------------------------------

% 721-729
spanish(Stem,[sevenhundreds]) :-
    spanish(Root,[hundredroot]),
    sevenhundred(Prefix),
    spanish(Tens,[twentiesroot]),
    spanish(Singular,[ones]),
    append(Prefix,Root,X),
    append(X,[s],Y),
    append(Y,[//],Z),
    append(Z,Tens,A),
    append(A,Singular,Stem).

%---------------------------------------------------------------------------------------

% 730,740,750,etc up to 790
spanish(Stem,[sevenhundreds]) :-
    spanish(Root,[hundredroot]),
    sevenhundred(Prefix),
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

% 731-739,741-749,751-759,etc up to 799
spanish(Stem,[sevenhundreds]) :-
    spanish(Root,[hundredroot]),
    sevenhundred(Prefix),
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

% 800
spanish(Stem,[eighthundreds]) :-
    spanish(Root,[hundredroot]),
    eighthundred(Prefix),
    append(Prefix,Root,Temp),
    append(Temp,[s],Stem).

%---------------------------------------------------------------------------------------

% 801-809
spanish(Stem,[eighthundreds]) :-
    spanish(Root,[hundredroot]),
    eighthundred(Prefix),
    spanish(Singular,[ones]),
    append(Prefix,Root,X),
    append(X,[s],Y),
    append(Y,[//],Z),
    append(Z,Singular,Stem).

%---------------------------------------------------------------------------------------

% 810-815
spanish(Stem,[eighthundreds]) :-
    spanish(Root,[hundredroot]),
    eighthundred(Prefix),
    spanish(Tens,[tens]),
    append(Prefix,Root,X),
    append(X,[s],Y),
    append(Y,[//],Z),
    append(Z,Tens,Stem).

%---------------------------------------------------------------------------------------

% 816-819
spanish(Stem,[eighthundreds]) :-
    spanish(Root,[hundredroot]),
    eighthundred(Prefix),
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

spanish(Stem,[eighthundreds]) :-
    spanish(Root,[hundredroot]),
    eighthundred(Prefix),
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

% 820
spanish(Stem,[eighthundreds]) :-
    spanish(Root,[hundredroot]),
    eighthundred(Prefix),
    spanish(Tens,[twenty]),
    append(Prefix,Root,X),
    append(X,[s],Y),
    append(Y,[//],Z),
    append(Z,Tens,Stem).

%---------------------------------------------------------------------------------------

% 821-829
spanish(Stem,[eighthundreds]) :-
    spanish(Root,[hundredroot]),
    eighthundred(Prefix),
    spanish(Tens,[twentiesroot]),
    spanish(Singular,[ones]),
    append(Prefix,Root,X),
    append(X,[s],Y),
    append(Y,[//],Z),
    append(Z,Tens,A),
    append(A,Singular,Stem).

%---------------------------------------------------------------------------------------

% 830,840,850,etc up to 890
spanish(Stem,[eighthundreds]) :-
    spanish(Root,[hundredroot]),
    eighthundred(Prefix),
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

% 831-839,841-849,851-859,etc up to 899
spanish(Stem,[eighthundreds]) :-
    spanish(Root,[hundredroot]),
    eighthundred(Prefix),
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

% 900
spanish(Stem,[ninehundreds]) :-
    spanish(Root,[hundredroot]),
    ninehundred(Prefix),
    append(Prefix,Root,Temp),
    append(Temp,[s],Stem).

%---------------------------------------------------------------------------------------

% 901-909
spanish(Stem,[ninehundreds]) :-
    spanish(Root,[hundredroot]),
    ninehundred(Prefix),
    spanish(Singular,[ones]),
    append(Prefix,Root,X),
    append(X,[s],Y),
    append(Y,[//],Z),
    append(Z,Singular,Stem).

%---------------------------------------------------------------------------------------

% 910-915
spanish(Stem,[ninehundreds]) :-
    spanish(Root,[hundredroot]),
    ninehundred(Prefix),
    spanish(Tens,[tens]),
    append(Prefix,Root,X),
    append(X,[s],Y),
    append(Y,[//],Z),
    append(Z,Tens,Stem).

%---------------------------------------------------------------------------------------

% 916-919
spanish(Stem,[ninehundreds]) :-
    spanish(Root,[hundredroot]),
    ninehundred(Prefix),
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

spanish(Stem,[ninehundreds]) :-
    spanish(Root,[hundredroot]),
    ninehundred(Prefix),
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

% 920
spanish(Stem,[ninehundreds]) :-
    spanish(Root,[hundredroot]),
    ninehundred(Prefix),
    spanish(Tens,[twenty]),
    append(Prefix,Root,X),
    append(X,[s],Y),
    append(Y,[//],Z),
    append(Z,Tens,Stem).

%---------------------------------------------------------------------------------------

% 921-929
spanish(Stem,[ninehundreds]) :-
    spanish(Root,[hundredroot]),
    ninehundred(Prefix),
    spanish(Tens,[twentiesroot]),
    spanish(Singular,[ones]),
    append(Prefix,Root,X),
    append(X,[s],Y),
    append(Y,[//],Z),
    append(Z,Tens,A),
    append(A,Singular,Stem).

%---------------------------------------------------------------------------------------

% 930,940,950,etc up to 990
spanish(Stem,[ninehundreds]) :-
    spanish(Root,[hundredroot]),
    ninehundred(Prefix),
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

% 931-939,941-949,951-959,etc up to 999
spanish(Stem,[ninehundreds]) :-
    spanish(Root,[hundredroot]),
    ninehundred(Prefix),
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

% 1000
spanish([P1,i,l], [thousand]) :-
    phone(P1),lab(P1),snt(P1),nas(P1).

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

% 500
fivehundred([q,u,P1,n,P1,e,n,t,o]) :-
    phone(P1),tns(P1),not(bck(P1)).

% 600
sixhundred([P1,e,i,P1]) :-
    phone(P1), not(voi(P1)), alv(P1),sib(P1), cnt(P1).

% 700
sevenhundred([P1,e,t,e]) :-
    phone(P1), not(voi(P1)), alv(P1),sib(P1), cnt(P1).

% 800
eighthundred([P1,c,h,P1]) :-
    phone(P1),mid(P1),bck(P1).

% 900
ninehundred([P1,o,v,e]) :-
    phone(P1), snt(P1),nas(P1),not(lab(P1)),alv(P1),cor(P1),not(sib(P1)).