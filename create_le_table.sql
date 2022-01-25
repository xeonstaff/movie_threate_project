create table customers (
	customer_id SERIAL primary key,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(100),
	phone NUMERIC(10),
);

create table concessions (
	product_id SERIAL primary key,
	product_name VARCHAR(100),
	stock_count NUMERIC(10)
);
	
create table movies (
	movie_id SERIAL primary key,
	movie_name VARCHAR(100),
	run_length NUMERIC(3)
);

create table tickets (
	ticket_num SERIAL primary key,
	movie_name VARCHAR(100),
	date_issued DATE default CURRENT_DATE,
	foreign key(movie_id) references movies(movie_id),
	foreign key(customer_id) references customers(customer_id)
	
);

create table orders (
	order_num SERIAL primary key,
	ticket_number NUMERIC(5),
	product_number NUMERIC(5),
	purchase_amount NUMERIC(9,2),
	foreign key(movie_id) references movies(movie_id),
	foreign key(product_id) references concessions(product_id),
	foreign key(customer_id) references customers(customer_id)
);






