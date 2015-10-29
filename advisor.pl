:- module(advisor, []).

match_sport_car(X) :-
	is_single(X),
	is_self_confident(X).

match_city_car(X) :-
	is_single(X),
	needs_car_for_city(X).

match_family_compact_car(X) :-
	not(is_single(X)),
	has_small_family(X).

match_family_mid_size_car(X) :-
	not(is_single(X)),
	has_medium_family(X).


/**
 * Examples of different persons:
 * tom - sport car
 * ela - city car 
 * wojtek - family compact car 
 * justyna - family medium car
 */
is_single(tom).
is_self_confident(tom).

is_single(ela).
needs_car_for_city(ela).

not(is_single(wojtek)).
has_small_family(wojtek).

not(is_single(justyna)).
has_medium_family(justyna).
/** End of examples */
