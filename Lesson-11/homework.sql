----create database KSQ_Airport;

----use KSQ_Airport

--create table passenger (
--    passenger_id bigint primary key,
--    first_name varchar(50),
--    last_name varchar(50),
--    date_of_birth date,
--    country_of_citizenship varchar(50),
--    country_of_residence varchar(50),
--    created_at datetime2 default current_timestamp,
--    updated_at datetime2 default current_timestamp
--);

--create table security_check (
--    sch_id bigint primary key,
--    check_result varchar(50),
--    comments varchar(6555),
--    created_at datetime default sysdatetime()
--);

--insert into passenger (passenger_id, first_name, last_name, date_of_birth, country_of_citizenship, country_of_residence) values
--(1, 'Alex', 'Johnson', '1985-06-15', 'USA', 'Canada'),
--(2, 'Maria', 'Gonzalez', '1992-09-23', 'Mexico', 'USA'),
--(3, 'Chen', 'Wei', '1988-11-05', 'China', 'Australia');

--insert into security_check (sch_id, check_result, comments) values
--(101, 'Cleared', 'No issues detected'),
--(102, 'Flagged', 'Additional screening required'),
--(103, 'Cleared', 'Routine check completed successfully');

--create table baggage_check (
--    bagg_id bigint primary key,
--    check_result varchar(50),
--    created_at datetime default current_timestamp,
--    updated_at datetime default current_timestamp,
--    booking_id bigint,
--    passenger_id bigint,
--    constraint fk_passenger_id_bagg foreign key(passenger_id) references passenger(passenger_id)
--);

--create table no_fly_list (
--    nfl_id bigint primary key,
--    active_from date,
--    active_to date,
--    no_fly_reason varchar(255),
--    created_at datetime default current_timestamp,
--    updated_at datetime default current_timestamp,
--    passenger_id bigint,
--    constraint fk_passenger_id_nfl foreign key(passenger_id) references passenger(passenger_id)
--);

--create table booking (
--    booking_id bigint primary key,
--    flight_id bigint,
--    status varchar(20),
--    booking_platform varchar(20),
--    created_at datetime default current_timestamp,
--    updated_at datetime default current_timestamp,
--    passenger_id bigint,
--    constraint fk_passenger_id_booking foreign key(passenger_id) references passenger(passenger_id)
--);

--create table baggage (
--    bagg_id bigint primary key,
--    weight_in_kg decimal(4,2),
--    created_at datetime default current_timestamp,
--    updated_at datetime default current_timestamp,
--    booking_id bigint,
--    constraint fk_booking_id_bagg foreign key(booking_id) references booking(booking_id)
--);

--create table boarding_pass (
--    boarding_id bigint primary key,
--    qr_code varchar(6555),
--    created_at datetime default current_timestamp,
--    updated_at datetime default current_timestamp,
--    booking_id bigint,
--    constraint fk_booking_id_boarding foreign key(booking_id) references booking(booking_id)
--);

--create table airline (
--    airline_id bigint primary key,
--    airline_code varchar(10),
--    airline_name varchar(100),
--    airline_country varchar(50),
--    created_at datetime default current_timestamp,
--    updated_at datetime default current_timestamp
--);

--create table airport (
--    airport_id bigint primary key,
--    airport_name varchar(50),
--    country varchar(50),
--    state varchar(50),
--    city varchar(50),
--    created_at datetime default current_timestamp,
--    updated_at datetime default current_timestamp
--);


--create table flights (
--    flight_id bigint primary key,
--    departing_gate varchar(20),
--    arriving_gate varchar(20),
--    created_at datetime default current_timestamp,
--    updated_at datetime default current_timestamp,
--    airline_id bigint,
--    departing_airport_id bigint,
--    arriving_airport_id bigint,
--    constraint fk_airline_id foreign key(airline_id) references airline(airline_id),
--    constraint fk_departing_airport foreign key(departing_airport_id) references airport(airport_id),
--    constraint fk_arriving_airport foreign key(arriving_airport_id) references airport(airport_id)
--);

--select * from airline


--select * from airport


--select * from baggage


--select * from baggage_check


--select * from boarding_pass


--select * from booking


--select * from flights


--select * from no_fly_list

--select * from passenger


--select * from security_check
