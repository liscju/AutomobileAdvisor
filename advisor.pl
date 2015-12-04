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
has_cost(mercedes_sprinter,86000).
has_cost(renault_master,24000).
has_cost(oper_vectra,14200).
has_cost(nissan_note,21500).
has_cost(hammer_h3,61500).
has_cost(maybach_57S,499999).
has_cost(bugatti_veyron,13500000).
has_cost(subaru_impreza,50000).
has_cost(chrysler_voyager,9700).
has_cost(bmw_3,2999).
has_cost(kia_ceed,19700).
has_cost(tarpan_honker,15200).

has_seats(fiat_125p,5).
has_seats(fiat_126p,5).
has_seats(macerati_granTurismo,4).
has_seats(ford_mustang,5).
has_seats(volkswagen_passat,5).
has_seats(renault_kangoo,2).
has_seats(mini_cooper,5).
has_seats(jeep_grand_cherokee,5).
has_seats(mercedes_sprinter,21).
has_seats(renault_master,3).
has_seats(opel_vectra,5).
has_seats(nissan_note,5).
has_seats(hammer_h3,5).
has_seats(maybach_57S,4).
has_seats(bugatti_veyron,2).
has_seats(subaru_impreza,4).
has_seats(chrysler_voyager,7).
has_seats(bmw_3,5).
has_seats(kia_ceed,5).
has_seats(tarpan_honker,2).

has_doors(fiat_125p,4).
has_doors(fiat_126p,3).
has_doors(macerati_granTurismo,2).
has_doors(ford_mustang,2).
has_doors(volkswagen_passat,4).
has_doors(renault_kangoo,3).
has_doors(mini_cooper,3).
has_doors(jeep_grand_cherokee,5).
has_doors(mercedes_sprinter,3).
has_doors(renault_master,5).
has_doors(oper_vectra,4).
has_doors(nissan_note,5).
has_doors(hammer_h3,5).
has_doors(maybach_57S,4).
has_doors(bugatti_veyron,2).
has_doors(subaru_impreza,3).
has_doors(chrysler_voyager,5).
has_doors(bmw_3,4).
has_doors(kia_ceed,5).
has_doors(tarpan_honker,2).

has_power(fiat_125p,57).
has_power(fiat_126p,23).
has_power(macerati_granTurismo,440).
has_power(ford_mustang,345).
has_power(volkswagen_passat,140).
has_power(renault_kangoo,82).
has_power(mini_cooper,90).
has_power(jeep_grand_cherokee,170).
has_power(mercedes_sprinter,160).
has_power(renault_master,75).
has_power(opel_vectra,122).
has_power(nissan_note,88).
has_power(hammer_h3,244).
has_power(maybach_57S,612).
has_power(bugatti_veyron,1199).
has_power(subaru_impreza,300).
has_power(chrysler_voyager,140).
has_power(bmw_3,102).
has_power(kia_ceed,109).
has_power(tarpan_honker,90).

year_of_production(fiat_125p,1980).
year_of_production(fiat_126p,1980).
year_of_production(macerati_granTurismo,2008).
year_of_production(ford_mustang,2006).
year_of_production(volkswagen_passat,2005).
year_of_production(renault_kangoo,2008).
year_of_production(mini_cooper,2005).
year_of_production(jeep_grand_cherokee,2003).
year_of_production(mercedes_sprinter,2004).
year_of_production(renault_master,2007).
year_of_production(opel_vectra,2004).
year_of_production(nissan_note,2008).
year_of_production(hammer_h3,2007).
year_of_production(maybach_57S,2007).
year_of_production(bugatti_veyron,2015).
year_of_production(subaru_impreza,1998).
year_of_production(chrysler_voyager,2003).
year_of_production(bmw_3,1994).
year_of_production(kia_ceed,2007).
year_of_production(tarpan_honker,1991).

engine_displacement(fiat_125p,1500).
engine_displacement(fiat_126p,650).
engine_displacement(macerati_granTurismo,4700).
engine_displacement(ford_mustang,4600).
engine_displacement(volkswagen_passat,1968).
engine_displacement(renault_kangoo,1461).
engine_displacement(mini_cooper,1600).
engine_displacement(jeep_grand_cherokee,3000).
engine_displacement(mercedes_sprinter,2700).
engine_displacement(renault_master,2487).
engine_displacement(opel_vectra,1800).
engine_displacement(nissan_note,1386).
engine_displacement(hammer_h3,3700).
engine_displacement(maybach_57S,5980).
engine_displacement(bugatti_veyron,7998).
engine_displacement(subaru_impreza,2000).
engine_displacement(chrysler_voyager,2500).
engine_displacement(bmw_3,1596).
engine_displacement(kia_ceed,1400).
engine_displacement(tarpan_honker,2500).

is_type(fiat_125p,sedan).
is_type(fiat_126p,hatchback).
is_type(macerati_granTurismo,coupe).
is_type(ford_mustang,coupe).
is_type(volkswagen_passat,sedan).
is_type(renault_kangoo,pick_up).
is_type(mini_cooper,hatchback).
is_type(jeep_grand_cheerokee,suv).
is_type(mercedes_sprinter,minibus).
is_type(renault_master,van).
is_type(opel_vectra,sedan).
is_type(nissan_note,hatchback).
is_type(hammer_h3,suv).
is_type(maybach_57S,sedan).
is_type(bugatti_veyron,coupe).
is_type(subaru_impreza,coupe).
is_type(chrysler_voyager,van).
is_type(bmw_3,sedan).
is_type(kia_ceed,hatchback).
is_type(tarpan_honker,pickup).

has_name(fiat_125p,"Maluch (fiat 125p)").

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

% Prdicates that connect client properties with cars

is_car_suitable_for_client_age(young, Car) :-
       is_car_new(Car).

is_car_suitable_for_client_age(mid, Car).

is_car_suitable_for_client_age(old, Car) :-
	is_car_old(Car).

is_car_suitable_for_client_money(poor, Car) :-
	is_car_cheap(Car).

is_car_suitable_for_client_money(mid, Car) :-
	is_car_cheap(Car).

is_car_suitable_for_client_money(mid, Car) :-
	is_car_medium_prices(Car).

is_car_suitable_for_client_money(rich, Car).

is_car_suitable_for_client_family(single, Car).

is_car_suitable_for_client_family(family_guy, Car) :-
	has_seats(Car, X),
	X >= 4.

is_car_suitable_for_client_location(smallcity, Car) :-
	is_car_cheap(Car).

is_car_suitable_for_client_location(smallCity, Car) :-
	is_car_medium_prices(Car).

is_car_suitable_for_client_location(bigcity, Car) :-
	is_car_medium_prices(Car).

is_car_suitable_for_client_location(bigcity, Car) :-
	is_car_expensive(Car).

is_car_suitable_for_client_location(village, Car) :-
	is_type(Car, minibus).

is_car_suitable_for_client_location(village, Car) :-
	is_type(Car, sedan).

is_car_suitable_for_client_location(village, Car) :-
	is_type(Car, suv).

% End of predicates that connects client props with cars


% Main method for finding appropriate Car for Client
% Client is tuple of:
% Age -> young, mid, old
% Money -> poor, mid, rich
% Family -> single, family_guy
% Location -> smallcity, bigcity, village.
is_suitable_car(client(Age, Money, Family, Location), Car) :-
	is_car_suitable_for_client_age(Age, Car),
	is_car_suitable_for_client_money(Money, Car),
	is_car_suitable_for_client_family(Family, Car),
	is_car_suitable_for_client_location(Location, Car).










