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
has_cost(renault_kangoo,9900).
has_cost(mini_cooper,14900).
has_cost(jeep_grand_cherokee,27700).

has_seats(fiat_125p,5).
has_seats(fiat_126p,5).
has_seats(macerati_granTurismo,2).
has_seats(ford_mustang,5).
has_seats(volkswagen_passat,5).
has_seats(renault_kangoo,2).
has_seats(mini_cooper,5).
has_seats(jeep_grand_cherokee,5).

has_power(fiat_125p,57).
has_power(fiat_126p,23).
has_power(macerati_granTurismo,440).
has_power(ford_mustang,345).
has_power(volkswagen_passat,140).
has_power(renault_kangoo,82).
has_power(mini_cooper,90).
has_power(jeep_grand_cherokee,170).

year_of_production(fiat_125p,1980).
year_of_production(fiat_126p,1980).
year_of_production(macerati_granTurismo,2008).
year_of_production(ford_mustang,2006).
year_of_production(volkswagen_passat,2005).
year_of_production(renault_kangoo,2008).
year_of_production(mini_cooper,2005).
year_of_production(jeep_grand_cherokee,2003).

engine_displacement(fiat_125p,1500).
engine_displacement(fiat_126p,650).
engine_displacement(macerati_granTurismo,4700).
engine_displacement(ford_mustang,4600).
engine_displacement(volkswagen_passat,1968).
engine_displacement(renault_kangoo,1461).
engine_displacement(mini_cooper,1600).
engine_displacement(jeep_grand_cherokee,2003).

is_type(fiat_125p,sedan).
is_type(renault_kangoo,pick_up).
is_type(mini_cooper,hatchback).
is_type(jeep_grand_cheerokee,suv).