create table mov_customer(
	customer_id serial primary key,
	fname varchar(50),
	lname varchar(50),
	phone varchar(25),
	email varchar(100),
	bill_acc bool default false
);

select * from mov_customer;

create table movie(
	movie_id serial primary key,
	title varchar(100),
	genre varchar(50),
	rating varchar(25)
);

select * from movie ;

create table concession(
	sale_id serial primary key,
	items varchar(100),
	amount numeric(6, 2),
	customer_id integer,
		foreign key(customer_id) references mov_customer(customer_id)
);

select * from concession;

create table tickets(
	ticket_id serial primary key,
	showtime date default current_date,
	movie_id integer,
		foreign key(movie_id) references movie(movie_id),
	customer_id integer,
		foreign key(customer_id) references mov_customer(customer_id)
);

select * from tickets;

insert into mov_customer(fname, lname, phone, email)
values 
('Corey', 'Taylor', '515-333-6663', 'shrine@r&rHOF.com'),
('Maynard', 'Keenan', '408-992-9558', 'leavemealone@bfwinery.com'),
('Brad', 'Roberts', '1234canadian#', 'myvoiceisasubwoofer@ctd.com'),
('Travis', 'Meeks', 'rehab-hotline', 'highhopescomedown@nolonger.com');

insert into movie(title, genre, rating)
values 
('Studio 666', 'rock-horror', 'R'),
('Another Spiderman', 'comic', 'pg-13'),
('Another Batman', 'dark-comic', 'R'),
('Another Matrix', 'dystopian', 'R'),
('Another Sing', 'kiddos', 'G');

insert into mov_customer(fname, lname, phone, email)
values('Guest', 'Guest', 'nada', 'houselist@thisdomain.com');

insert into concession(items, amount, customer_id)
values 
('twizzlers, popcorn', 365.89, 5),
('popcorn', 28.0, 5),
('choc raisins', 18.50, 2),
('2 lrg fountain drinks', 15.50, 4);

select * from concession;
select * from mov_customer;
select * from movie;

insert into tickets(movie_id, customer_id)
values 
(1, 5),
(1, 2), 
(1, 3),
(4, 3), 
(3, 5), 
(5, 1),
(2, 4);


