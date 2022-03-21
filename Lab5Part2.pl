%% File: Lab5Part2.pl
%% Name: Wyatt Haak


%Facts:
%house(yellow, psu_alum, fox, water, twinkies)
%house(blue, uo_alum, horses, tea, pie)
%house(red, osu_alum, snail, milk, cookies)
%house(ivory, oit_alum, dog, oj, icecream)
%house(green, wou_alum, owl, coffee, cheesecake)


%Predicates:

is_right(L, R, Rest) :-
append(_, [L, R | _], Rest).

next_to(X, Y, List) :-
is_right(X, Y, List);
is_right(Y, X, List).

owns_owl(Street, Who) :-

    Street = [_House1, _House2, _House3, _House4, _House5],

    member(house(red, osu_alum, _, _, _), Street),

    member(house(_, oit_alum, dog, _, _), Street),

    member(house(green, _, _, coffee, _), Street),

    member(house(_, uo_alum, _, tea, _), Street),

    is_right(house(green, _, _, _, _),
    house(ivory, _, _, _, _), Street),

    member(house(_, _, snail, _, cookies), Street),

    member(house(yellow, _, _, _, twinkies), Street),

    [_, _, house(_, _, _, milk, _), _, _] = Street,

    [house(_, psu_alum, _, _, _), _, _, _, _] = Street,

    next_to(house(_, _, _, _, pie), house(_, _, fox, _, _), Street),

    next_to(house(_, _, _, _, twinkies), house(_, _, horse, _, _), Street),

    member(house(_, _, _, oj, icecream), Street),

    member(house(_, wou_alum, _, _, cheesecake), Street),

    next_to(house(_, psu_alum, _, _, _), house(blue, _, _, _, _), Street),

    member(house(_, Who, owl, _, _), Street).


