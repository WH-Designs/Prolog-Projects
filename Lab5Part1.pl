%% File: Lab5Part1.pl
%% Name: Wyatt Haak



%Facts:

%Male
male(abraham).
male(herb).
male(homer).
male(bart).
male(clancy).

%Female
female(mona).
female(jackie).
female(marge).
female(patty).
female(selma).
female(lisa).
female(maggie).
female(ling).

%Parents
parent(abraham, homer).
parent(clancy, marge).
parent(clancy, patty).
parent(clancym, slema).
parent(homer, bart).
parent(homer, lisa).
parent(homer, maggie).

parent(jackie, marge).
parent(jackie, patty).
parent(jackie, selma).
parent(mona, homer).
parent(marge, bart).
parent(marge, lisa).
parent(marge, maggie).



%Predicates:

father(X, Y) :-
parent(X, Y), male(X).

mother(X, Y) :-
parent(X, Y), female(X).

child(X, Y) :-
parent(Y, X).

son(X, Y) :-
child(X, Y), male(X).

daughter(X, Y) :-
child(X, Y), female(X).

sibling(X, Y) :-
parent(Z, X), parent(Z, Y), X \= Y.

brother(X, Y) :-
sibling(X, Y), male(Y).

sister(X, Y) :-
sibling(X, Y), female(Y).

grandParent(X, Y) :-
parent(X, Z), parent(Z, Y).

grandFather(X, Y) :-
grandparent(X, Y), male(X).

grandMother(X, Y) :-
grandparent(X, Y), female(X).

grandChild(X, Y) :-
grandparent(Y, X).

grandSon(X, Y) :-
grandChild(X, Y), male(X).

grandDaughter(X, Y) :-
grandChild(X, Y), female(X).

parentSiblings(X, Y) :-
sibling(Z, X), parent(Z, Y).

uncle(X, Y) :-
parentSiblings(X, Y), male(X).

aunt(X, Y) :-
parentSiblings(X, Y), female(X).

%Queries

% grandMother(X, bart).

% grandChild(X, mona).

% aunt(X, lisa).

% grandParent(X, lisa).

% sibling(X, marge).







