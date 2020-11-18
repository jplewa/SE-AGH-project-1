:- dynamic
    xpositive/3,
    xnegative/3.

mushroom_is(edible) :- positive(bruises, presence, visible),
                       stalk_root(shape, club).

mushroom_is(edible) :- negative(bruises, presence, visible),
                        gills(spacing, crowded),
                        stalk_root(shape, equal).

mushroom_is(edible) :- negative(bruises, presence, visible),
                       gills(spacing, crowded),
                       stalk_root(shape, club),
                       stalk_above_ring(color, white).

mushroom_is(poisonous) :- negative(bruises, presence, visible),
                          gills(spacing, crowded),
                          stalk_root(shape, club),
                          stalk_above_ring(color, red).

mushroom_is(poisonous) :- negative(bruises, presence, visible),
                          gills(spacing, crowded),
                          stalk_root(shape, bulbous),
                          stalk_below_ring(color, red).

mushroom_is(poisonous) :- negative(bruises, presence, visible),
                          gills(spacing, crowded),
                          stalk_root(shape, bulbous),
                          stalk_below_ring(color, white),
                          rings(number, none).  

mushroom_is(poisonous) :- negative(bruises, presence, visible),
                          gills(spacing, crowded),
                          stalk_root(shape, bulbous),
                          stalk_below_ring(color, white),
                          rings(number, one).  

mushroom_is(edible) :- negative(bruises, presence, visible),
                       gills(spacing, crowded),
                       stalk_root(shape, bulbous),
                       stalk_below_ring(color, white),
                       rings(number, two).  

mushroom_is(edible) :- negative(bruises, presence, visible),
                       gills(spacing, close),
                       veil(color, brown).

mushroom_is(edible) :- negative(bruises, presence, visible),
                       gills(spacing, close),
                       veil(color, orange).

% TODO: double-check
mushroom_is(edible) :- negative(bruises, presence, visible),
                       gills(spacing, close),
                       veil(color, yellow).

mushroom_is(poisonous) :- negative(bruises, presence, visible),
                          gills(spacing, close),
                          veil(color, white),
                          stalk_root(shape, club).

mushroom_is(poisonous) :- negative(bruises, presence, visible),
                          gills(spacing, close),
                          veil(color, white),
                          stalk_root(shape, bulbous),
                          rings(number, none).

mushroom_is(edible) :- negative(bruises, presence, visible),
                       gills(spacing, close),
                       veil(color, white),
                       stalk_root(shape, bulbous),
                       rings(number, two).

mushroom_is(edible) :- negative(bruises, presence, visible),
                       gills(spacing, close),
                       veil(color, white),
                       stalk_root(shape, bulbous),
                       rings(number, one),
                       cap(color, white),
                       cap(surface, scaly).

mushroom_is(poisonous) :- negative(bruises, presence, visible),
                          gills(spacing, close),
                          veil(color, white),
                          stalk_root(shape, bulbous),
                          rings(number, one),
                          cap(color, white),
                          cap(surface, fibrous).

mushroom_is(poisonous) :- negative(bruises, presence, visible),
                          gills(spacing, close),
                          veil(color, white),
                          stalk_root(shape, bulbous),
                          rings(number, one),
                          cap(color, white),
                          cap(surface, smooth).

mushroom_is(poisonous) :- negative(bruises, presence, visible),
                          gills(spacing, close),
                          veil(color, white),
                          stalk_root(shape, equal),
                          cap(surface, scaly).

mushroom_is(poisonous) :- negative(bruises, presence, visible),
                          gills(spacing, close),
                          veil(color, white),
                          stalk_root(shape, equal),
                          cap(surface, smooth).

mushroom_is(edible) :- negative(bruises, presence, visible),
                       gills(spacing, close),
                       veil(color, white),
                       stalk_root(shape, equal),
                       cap(surface, fibrous).

stalk_root(X, Y) :- positive(stalk_root, X, Y).

gills(X, Y) :- positive(gills, X, Y).

stalk_above_ring(X, Y) :- positive(stalk_above_ring, X, Y).

stalk_below_ring(X, Y) :- positive(stalk_below_ring, X, Y).

rings(X, Y) :- positive(rings, X, Y).

veil(X, Y) :- positive(veil, X, Y).

cap(X, Y) :- positive(cap, X, Y).

% TODO: double check if positive/3 & negative/3 both work as intended
positive(X, Y, Z) :- xpositive(X, Y, Z), !.
positive(X, Y, Z) :- \+xnegative(X, Y, Z), 
                     \+other_match_exists(X, Y, Z), 
                     ask(X, Y, Z, yes).

negative(X, Y, Z) :- xnegative(X, Y, Z), !.
negative(X, Y, Z) :- \+xpositive(X, Y, Z), other_match_exists(X, Y, Z), !.
negative(X, Y, Z) :- \+xpositive(X, Y, Z), ask(X, Y, Z, no).

other_match_exists(X, Y, Z) :- xpositive(X, Y, W), Z \= W, !.

replace_underscores(X, X) :- re_replace("_", " ", X, X), !.
replace_underscores(X, Y) :- re_replace("_", " ", X, X1), replace_underscores(X1, Y).

ask(X, Y, Z, yes) :- !, 
                     replace_underscores(X, X1),
                     replace_underscores(Y, Y1),
                     replace_underscores(Z, Z1),
                     format('Is the ~w of ~w ~w? (y/n)~n', [Y1, X1, Z1]),
                     read(Reply),
                     memorize(X, Y, Z, Reply),
                     (Reply = 'y').

ask(X, Y, Z, no) :- !,
                    replace_underscores(X, X1),
                    replace_underscores(Y, Y1),
                    replace_underscores(Z, Z1),
                    format('Is the ~w of ~w ~w? (y/n)~n', [Y1, X1, Z1]),
                    read(Reply),
                    memorize(X, Y, Z, Reply),
                    (Reply = 'n').

memorize(X, Y, Z, 'y') :- memorize(X, Y, Z, yes).

memorize(X, Y, Z, 'n') :- memorize(X, Y, Z, no).

memorize(X, Y, Z, yes) :- assertz(xpositive(X, Y, Z)).

memorize(X, Y, Z, no) :- assertz(xnegative(X, Y, Z)).

clear_facts :- write('Press any key to exit'), nl,
               retractall(xpositive(_, _, _)),
               retractall(xnegative(_, _, _)),
               get_char(_).
                    
execute :- mushroom_is(X), !,
           format('~nYour mushroom is ~w', X),
           nl, clear_facts.
            
execute :- write('No answer found'), nl,
           clear_facts.
