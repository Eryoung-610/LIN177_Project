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