:- module(advisor, []).

% Database of Cars

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

% End of Car Database

% Predicates about different car properties

is_car_cheap(Car) :-
	has_cost(Car, X),
	X < 2000.

is_car_medium_prices(Car) :-
	has_cost(Car, X),
	X >= 2000,
	X =< 10000.

is_car_expensive(Car) :-
	has_cost(Car, X),
	X > 10000.

is_car_slow(Car) :-
	has_power(Car, X),
	X < 100.

is_car_mid_speed(Car) :-
	has_power(Car, X),
	X >= 100,
	X =< 300.

is_car_fast(Car) :-
	has_power(Car, X),
	X > 300.

is_car_old(Car) :-
	year_of_production(Car, X),
	X =< 1990.
	
is_car_has_mid_age(Car) :-
	year_of_production(Car, X),
	X > 1990,
	X < 2005.
	
is_car_new(Car) :-
	year_of_production(Car, X),
	X >= 2005.
	
has_engine_low_displacement(Car) :-
	engine_displacement(Car, X),
	X < 2000.
	
has_engine_mid_displacement(Car) :-
	engine_displacement(Car, X),
	X >= 2000,
	X =< 4000.
	
has_engine_high_displacement(Car) :-
	engine_displacement(Car, X),
	X > 4000.

	
% End of predicates about different car properties
