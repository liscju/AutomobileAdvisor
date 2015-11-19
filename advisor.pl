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

is_sport_car(X) :-
	has_max_velocity_above(X,450),
	has_seats(X,2).

has_cost(fiat_125p,2000).
has_cost(fiat_126p,1200).
has_cost(macerati_granTurismo,240000).
has_cost(ford_mustang,60000).
has_cost(volkswagen_passat,10000).

has_seats(fiat_125p,5).
has_seats(fiat_126p,5).
has_seats(macerati_granTurismo,2).
has_seats(ford_mustang,5).
has_seats(volkswagen_passat,5).

has_power(fiat_125p,57).
has_power(fiat_126p,23).
has_power(macerati_granTurismo,440).
has_power(ford_mustang,345).
has_power(volkswagen_passat,140).

year_of_production(fiat_125p,1980).
year_of_production(fiat_126p,1980).
year_of_production(macerati_granTurismo,2008).
year_of_production(ford_mustang,2006).
year_of_production(volkswagen_passat,2005).

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
