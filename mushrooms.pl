:- dynamic
   xpositive/3,
   xnegative/3.

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
                          rings(number, at_most_one).

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
                       cap(appearance, white_and_scaly).

mushroom_is(poisonous) :- negative(bruises, presence, visible),
                          gills(spacing, close),
                          veil(color, white),
                          stalk_root(shape, bulbous),
                          rings(number, one),
                          cap(appearance, white_and_fibrous).

mushroom_is(poisonous) :- negative(bruises, presence, visible),
                          gills(spacing, close),
                          veil(color, white),
                          stalk_root(shape, bulbous),
                          rings(number, one),
                          cap(appearance, white_and_smooth).

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

mushroom_is(edible) :- positive(bruises, presence, visible),
                       stalk_root(shape, club).

mushroom_is(edible) :- positive(bruises, presence, visible),
                       stalk_root(shape, equal),
                       rings(number, two).

mushroom_is(poisonous) :- positive(bruises, presence, visible),
                          stalk_root(shape, equal),
                          rings(number, at_most_one).

mushroom_is(edible) :- positive(bruises, presence, visible),
                       stalk_root(shape, bulbous),
                       cap(surface, fibrous).

mushroom_is(edible) :- positive(bruises, presence, visible),
                       stalk_root(shape, bulbous),
                       cap(surface, scaly),
                       rings(number, none).

mushroom_is(edible) :- positive(bruises, presence, visible),
                       stalk_root(shape, bulbous),
                       cap(surface, scaly),
                       rings(number, one),
                       gills(spacing, close).

mushroom_is(poisonous) :- positive(bruises, presence, visible),
                          stalk_root(shape, bulbous),
                          cap(surface, scaly),
                          rings(number, one),
                          gills(spacing, crowded).

mushroom_is(poisonous) :- positive(bruises, presence, visible),
                          stalk_root(shape, bulbous),
                          rings(number, two),
                          cap(appearance, white_and_flat_and_scaly).

mushroom_is(edible) :- positive(bruises, presence, visible),
                       stalk_root(shape, bulbous),
                       rings(number, two),
                       cap(appearance, brown_and_flat_and_scaly),
                       stalk_above_ring(color, red).

mushroom_is(edible) :- positive(bruises, presence, visible),
                       stalk_root(shape, bulbous),
                       rings(number, two),
                       cap(appearance, pink_and_flat_and_scaly),
                       stalk_above_ring(color, red).

mushroom_is(edible) :- positive(bruises, presence, visible),
                       stalk_root(shape, bulbous),
                       rings(number, two),
                       cap(appearance, brown_and_flat_and_scaly),
                       stalk(color, white_and_red).

mushroom_is(poisonous) :- positive(bruises, presence, visible),
                          stalk(appearance, white_and_bulbous),
                          rings(number, two),
                          cap(appearance, brown_and_flat_and_scaly).

mushroom_is(edible) :- positive(bruises, presence, visible),
                       stalk_root(shape, bulbous),
                       rings(number, two),
                       cap(appearance, pink_and_flat_and_scaly),
                       stalk(color, white_and_red).

mushroom_is(poisonous) :- positive(bruises, presence, visible),
                          stalk(appearance, white_and_bulbous),
                          cap(appearance, pink_and_flat_and_scaly),
                          rings(number, two).

mushroom_is(poisonous) :- positive(bruises, presence, visible),
                          stalk_root(shape, bulbous),
                          rings(number, two),
                          cap(appearance, bell_and_scaly).

mushroom_is(edible) :- positive(bruises, presence, visible),
                       stalk_root(shape, bulbous),
                       rings(number, two),
                       cap(appearance, convex_and_scaly).

mushroom_is(edible) :- positive(bruises, presence, visible),
                       stalk_root(shape, bulbous),
                       rings(number, two),
                       cap(appearance, conical_and_scaly).

mushroom_is(edible) :- positive(bruises, presence, visible),
                       stalk_root(shape, bulbous),
                       cap(surface, smooth),
                       gills(spacing, crowded).

mushroom_is(poisonous) :- positive(bruises, presence, visible),
                          stalk_root(shape, bulbous),
                          cap(surface, smooth),
                          gills(spacing, close),
                          rings(number, at_most_one).

mushroom_is(edible) :- positive(bruises, presence, visible),
                       stalk_root(shape, bulbous),
                       gills(spacing, close),
                       rings(number, two),
                       cap(appearance, convex_and_smooth).

mushroom_is(edible) :- positive(bruises, presence, visible),
                       stalk_root(shape, bulbous),
                       gills(spacing, close),
                       rings(number, two),
                       cap(appearance, conical_and_smooth).

mushroom_is(poisonous) :- positive(bruises, presence, visible),
                          stalk_root(shape, bulbous),
                          gills(spacing, close),
                          rings(number, two),
                          cap(appearance, bell_and_smooth).

mushroom_is(poisonous) :- positive(bruises, presence, visible),
                          stalk_root(shape, bulbous),
                          gills(spacing, close),
                          rings(number, two),
                          cap(appearance, white_and_flat_and_smooth).

mushroom_is(edible) :- positive(bruises, presence, visible),
                       stalk_root(shape, bulbous),
                       gills(spacing, close),
                       rings(number, two),
                       cap(appearance, brown_and_flat_and_smooth),
                       stalk_above_ring(color, red).

mushroom_is(edible) :- positive(bruises, presence, visible),
                       stalk_root(shape, bulbous),
                       gills(spacing, close),
                       rings(number, two),
                       cap(appearance, brown_and_flat_and_smooth),
                       stalk(color, white_and_red).

mushroom_is(poisonous) :- positive(bruises, presence, visible),
                          stalk(appearance, white_and_bulbous),
                          gills(spacing, close),
                          rings(number, two),
                          cap(appearance, brown_and_flat_and_smooth).

mushroom_is(edible) :- positive(bruises, presence, visible),
                       stalk_root(shape, bulbous),
                       gills(spacing, close),
                       rings(number, two),
                       cap(appearance, pink_and_flat_and_smooth),
                       stalk_above_ring(color, red).

mushroom_is(poisonous) :- positive(bruises, presence, visible),
                          stalk(appearance, white_and_bulbous),
                          gills(spacing, close),
                          rings(number, two),
                          cap(appearance, pink_and_flat_and_smooth).

mushroom_is(edible) :- positive(bruises, presence, visible),
                       stalk_root(shape, bulbous),
                       gills(spacing, close),
                       rings(number, two),
                       cap(appearance, pink_and_flat_and_smooth),
                       stalk(color, white_and_red).

gills(X, Y) :- positive(gills, X, Y).

stalk_root(X, Y) :- positive(stalk_root, X, Y).

stalk_above_ring(X, Y) :- positive(stalk_above_ring, X, Y).

stalk_below_ring(X, Y) :- positive(stalk_below_ring, X, Y).

stalk(appearance, white_and_bulbous) :- stalk(color, white),
                                        stalk_root(shape, bulbous).

stalk(color, white_and_red) :- stalk_above_ring(color, white),
                               stalk_below_ring(color, red).

stalk(X, Y) :- stalk_above_ring(X, Y), stalk_below_ring(X, Y).

rings(number, at_most_one) :- rings(number, none), rings(number, one).

rings(X, Y) :- positive(rings, X, Y).

veil(X, Y) :- positive(veil, X, Y).

cap(appearance, white_and_flat) :- cap(color, white),
                                   cap(shape, flat).

cap(appearance, white_and_smooth) :- cap(color, white),
                                     cap(surface, smooth).

cap(appearance, white_and_scaly) :- cap(color, white),
                                    cap(surface, scaly).

cap(appearance, white_and_fibrous) :- cap(color, white),
                                      cap(surface, fibrous).

cap(appearance, white_and_flat_and_smooth) :- cap(appearance, white_and_flat),
                                              cap(surface, smooth).

cap(appearance, white_and_flat_and_scaly) :- cap(appearance, white_and_flat),
                                             cap(surface, scaly).

cap(appearance, pink_and_flat) :- cap(color, pink),
                                  cap(shape, flat).

cap(appearance, pink_and_flat_and_smooth) :- cap(appearance, pink_and_flat),
                                             cap(surface, smooth).

cap(appearance, pink_and_flat_and_scaly) :- cap(appearance, pink_and_flat),
                                            cap(surface, scaly).

cap(appearance, brown_and_flat) :- cap(color, brown),
                                   cap(shape, flat).

cap(appearance, brown_and_flat_and_smooth) :- cap(appearance, brown_and_flat),
                                              cap(surface, smooth).

cap(appearance, brown_and_flat_and_scaly) :- cap(appearance, brown_and_flat),
                                             cap(surface, scaly).

cap(appearance, convex_and_smooth) :- cap(shape, convex),
                                      cap(surface, smooth).

cap(appearance, convex_and_scaly) :- cap(shape, convex),
                                     cap(surface, scaly).

cap(appearance, conical_and_smooth) :- cap(shape, conical),
                                       cap(surface, smooth).

cap(appearance, conical_and_scaly) :- cap(shape, conical),
                                      cap(surface, scaly).

cap(appearance, bell_and_smooth) :- cap(shape, bell),
                                    cap(surface, smooth).

cap(appearance, bell_and_scaly) :- cap(shape, bell),
                                   cap(surface, scaly).

cap(X, Y) :- positive(cap, X, Y).

positive(X, Y, Z) :- xpositive(X, Y, Z), !.
positive(X, Y, Z) :- \+xnegative(X, Y, Z),
                     \+other_match_exists(X, Y, Z),
                     ask(X, Y, Z, yes).

negative(X, Y, Z) :- xnegative(X, Y, Z), !.
negative(X, Y, Z) :- \+xpositive(X, Y, Z), other_match_exists(X, Y, Z), !.
negative(X, Y, Z) :- \+xpositive(X, Y, Z), ask(X, Y, Z, no).

other_match_exists(X, Y, Z) :- xpositive(X, Y, W), Z \= W, !.

ask(X, Y, Z, yes) :- !,
                    re_replace("_"/g, " ", X, X1),
                    re_replace("_"/g, " ", Y, Y1),
                    re_replace("_"/g, " ", Z, Z1),
                    format('Is the ~w of ~w ~w? (y/n)~n', [Y1, X1, Z1]),
                    read(Reply),
                    memorize(X, Y, Z, Reply),
                    (Reply = 'y').

ask(X, Y, Z, no) :- !,
                    re_replace("_"/g, " ", X, X1),
                    re_replace("_"/g, " ", Y, Y1),
                    re_replace("_"/g, " ", Z, Z1),
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
