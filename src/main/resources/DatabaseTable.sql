drop database if exists customer_db;
create database customer_db;
use  customer_db;

CREATE TABLE Customer(
	customer_id INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(30) NOT NULL,
	mobile_no VARCHAR(10) NOT NULL,
	email_id VARCHAR(30) NOT NULL,
	PRIMARY KEY (customer_id)
);

insert into Customer (customer_id, name, mobile_no, email_id) values (1, 'Elanchiyam', '9080501365', 'elanch13@gmail.com');
insert into Customer (customer_id, name, mobile_no, email_id) values (2, 'Aswin', '9890501365', 'aswin13@gmail.com');

select * from Customer;

CREATE TABLE CustomerAddress(
	address_id INT NOT NULL AUTO_INCREMENT,
	customer_id INT ,
	address VARCHAR(30) NOT NULL,
	state VARCHAR(20) NOT NULL,
	city VARCHAR(30) NOT NULL,
	pin_code VARCHAR(6) NOT NULL,
	PRIMARY KEY ( address_id  ),
	FOREIGN KEY( customer_id ) REFERENCES Customer( customer_id  )
);
insert into CustomerAddress (address_id, customer_id, address, state, city, pin_code) values (1,2, '89,uywyeurh,sdufwhdfw', 'Bangalore', 'Electronic city' , '789641');
select * from CustomerAddress;

