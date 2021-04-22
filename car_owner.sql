create table car (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    make VARCHAR(50) NOT NULL,
	model VARCHAR(50) NOT NULL,
	price INT NOT NULL
);

create table owner (
    id BIGSERIAL NOT NULL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(50),
	gender VARCHAR(50),
	birth_date DATE NOT NULL,
	country VARCHAR(50),
	car_id INT REFERENCES car (id)
);

\i ~/Downloads/car.sql;
\i ~/Downloads/owner.sql;