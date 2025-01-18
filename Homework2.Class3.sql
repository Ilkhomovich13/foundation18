--create database Homework2

--create table Salesman (
--    salesman_id INT PRIMARY KEY,
--    name VARCHAR(100),
--    city VARCHAR(50),
--    commission DECIMAL(5, 2)
--);

--insert into Salesman (salesman_id, name, city, commission)
--values
--(5001, 'James Hoog', 'New York', 0.15),
--(5002, 'Nail Knite', 'Paris', 0.13),
--(5005, 'Pit Alex', 'London', 0.11),
--(5006, 'Mc Lyon', 'Paris', 0.14),
--(5007, 'Paul Adam', 'Rome', 0.13),
--(5003, 'Lauson Hen', 'San Jose', 0.12);

--create table Customer (
--    customer_id INT PRIMARY KEY,
--    name VARCHAR(100),
--    city VARCHAR(50),
--    grade INT,
--    salesman_id INT
--);

--insert into Customer (customer_id, name, city, grade, salesman_id)
--values
--(3001, 'Hoffman', 'London', 100, 5001),
--(3002, 'Giovanni', 'Rome', 200, 5002),
--(3003, 'Liu', 'San Jose', NULL, 5005),
--(3004, 'Grass', 'Berlin', 300, 5003),
--(3005, 'Anderson', 'New York', 200, 5001),
--(3006, 'Clark', 'London', NULL, 5003),
--(3007, 'Smith', 'Paris', 300, 5006),
--(3008, 'Johnson', 'New York', 200, 5007);

--create table Orders (
--    ord_no INT PRIMARY KEY,
--    purch_amt DECIMAL(10, 2),
--    ord_date DATE,
--    customer_id INT,
--    salesman_id INT
--);

--insert into Orders (ord_no, purch_amt, ord_date, customer_id, salesman_id)
--values
--(70001, 150.50, '2012-10-05', 3005, 5002),
--(70009, 270.65, '2012-09-10', 3001, 5005),
--(70002, 65.26, '2012-10-05', 3002, 5001),
--(70004, 110.50, '2012-08-17', 3009, 5003),
--(70007, 948.50, '2012-09-10', 3005, 5002),
--(70005, 2400.60, '2012-07-27', 3007, 5001),
--(70008, 5760.00, '2012-09-10', 3002, 5001),
--(70010, 1983.43, '2012-10-10', 3004, 5006),
--(70003, 2480.40, '2012-10-10', 3009, 5003);

--select * from Customer

--create table Movie (
--    mov_id INT PRIMARY KEY,
--    mov_title VARCHAR(255),
--    mov_year INT,
--    mov_time INT,
--    mov_lang VARCHAR(50),
--    mov_dt_rel DATE,
--    mov_rel_country VARCHAR(50)
--);

--insert into Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country)
--values
--(901, 'Vertigo', 1958, 128, 'English', '1958-08-24', 'UK'),
--(902, 'The Innocents', 1961, 100, 'English', '1962-02-19', 'SW'),
--(903, 'Lawrence of Arabia', 1962, 216, 'English', '1962-12-11', 'UK'),
--(904, 'The Deer Hunter', 1978, 183, 'English', '1979-03-08', 'UK'),
--(905, 'Amadeus', 1984, 160, 'English', '1985-01-07', 'UK'),
--(906, 'Blade Runner', 1982, 117, 'English', '1982-09-09', 'UK'),
--(907, 'Eyes Wide Shut', 1999, 159, 'English', NULL, 'UK'),
--(908, 'The Usual Suspects', 1995, 106, 'English', '1995-08-25', 'UK'),
--(909, 'Chinatown', 1974, 130, 'English', '1974-08-09', 'UK'),
--(910, 'Boogie Nights', 1997, 155, 'English', '1998-02-16', 'UK'),
--(911, 'Annie Hall', 1977, 93, 'English', '1977-04-20', 'USA'),
--(912, 'Princess Mononoke', 1997, 134, 'Japanese', '2001-10-19', 'UK'),
--(913, 'The Shawshank Redemption', 1994, 142, 'English', '1995-02-17', 'UK'),
--(914, 'American Beauty', 1999, 122, 'English', NULL, 'UK'),
--(915, 'Titanic', 1997, 194, 'English', '1998-01-23', 'UK'),
--(916, 'Good Will Hunting', 1997, 126, 'English', '1998-06-03', 'UK'),
--(917, 'Deliverance', 1972, 109, 'English', '1982-10-05', 'UK'),
--(918, 'Trainspotting', 1996, 94, 'English', '1996-02-23', 'UK'),
--(919, 'The Prestige', 2006, 130, 'English', '2006-11-10', 'UK'),
--(920, 'Donnie Darko', 2001, 113, 'English', NULL, 'UK'),
--(921, 'Slumdog Millionaire', 2008, 120, 'English', '2009-01-09', 'UK'),
--(922, 'Aliens', 1986, 137, 'English', '1986-08-29', 'UK'),
--(923, 'Beyond the Sea', 2004, 118, 'English', '2004-11-26', 'UK'),
--(924, 'Avatar', 2009, 162, 'English', '2009-12-17', 'UK'),
--(925, 'Braveheart', 1995, 178, 'English', '1995-09-08', 'UK'),
--(926, 'Seven Samurai', 1954, 207, 'Japanese', '1954-04-26', 'JP'),
--(927, 'Spirited Away', 2001, 125, 'Japanese', '2003-09-12', 'UK'),
--(928, 'Back to the Future', 1985, 116, 'English', '1985-12-04', 'UK');

--select * from Movie

--select mov_title, mov_year
--from movie

--select mov_year from movie
--where mov_title = 'American Beauty';

--select mov_year from movie

--create table Reviewer (
--    rev_id INT PRIMARY KEY,
--	rev_name VARCHAR (250)
--	);

--insert into Reviewer (rev_id, rev_name)
--values
--   (9001, 'Righty Sock'),
--   (9002, 'Jack Malvern'),
--   (9003, 'Flagrant Baronessa'),
--   (9004, 'Alec Shaw'),
--   (9005, ''),
--   (9006, 'Victor Woeltjen'),
--   (9007, 'Simon Wright'),
--   (9008, 'Neal Wruck'),
--   (9009, 'Paul Monks'),
--   (9010, 'Mike Salvati'),
--   (9011, ''),
--   (9012, 'Wesley S. Walker'),
--   (9013, 'Sasha Goldshtein'),
--   (9014, 'Josh Cates'),
--   (9015, 'Krug Stillo'),
--   (9016, 'Scott LeBrun'),
--   (9017, 'Hannah Steele'),
--   (9018, 'Vincent Cadena'),
--   (9019, 'Brandt Sponseller'),
--   (9020, 'Richard Adams');

--create Rating (
--    mov_id INT,
--    rev_id INT,
--    rev_stars DECIMAL(3, 2),
--    num_o_ratings INT,
--    PRIMARY KEY (mov_id, rev_id)
--);

--insert into Rating (mov_id, rev_id, rev_stars, num_o_ratings)
--values
--(906, 9005, 8.20, 484746),
--(924, 9006, 7.30, NULL),
--(908, 9007, 8.60, 779489),
--(909, 9008, NULL, 227235),
--(910, 9009, 3.00, 195961),
--(911, 9010, 8.10, 203875),
--(912, 9011, 8.40, NULL),
--(914, 9013, 7.00, 862618),
--(915, 9001, 7.70, 830095),
--(916, 9014, 4.00, 642132),
--(925, 9015, 7.70, 81328),
--(918, 9016, NULL, 580301),
--(920, 9017, 8.10, 609451),
--(921, 9018, 8.00, 667758),
--(922, 9019, 8.40, 511613),
--(923, 9020, 6.70, 13091);





