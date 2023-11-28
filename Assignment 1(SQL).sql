--Q .1.Identify the primary keys and foreign keys in maven movies db.Discuss the differences.--
 --Ans.Each table in a relational database should have a primary key, and it is used to 
 --uniquely identify each record in that table, the primary key is created on one or 
 --more columns in a table, and it ensures data integrity and enables efficient data retrieval. 
--Foreign keys are used to enforce referential integrity, ensuring that relationships between
-- tables are valid and that data remains consistent.

--Q 2.List all details of acters.--
use mavenmovies;
select * from actor;

--Q.3.List all customer information from db.--
select * from customer;

#Q.4.list different countries.
select *from country;

--Q.5.Display all active customers.
select customer_id from customer where active=1;

--Q.6.List of all rental ids from customer with ID1.
select * from rental;
select rental_id from rental where customer_id=1;

#Q.7.Display all the films whose renatl duration is greater than 5.
select * from film;
select title from film where rental_duration >5;

#Q.8.List the total number of films whose replacement cost is greater than $15 and less than $20. 
select title from film where replacement_cost >15.00 and replacement_cost <20.00;

#Q.9.Display the count of unique first name of actors.;
select count( distinct (first_name)) from actor;

#Q.10.Dispaly the first 10 records from the customer table.
select * from customer limit 10;

# Q.11. Display the first 3 records from the customer table whose first name starts with ‘b’.
select first_name from customer where first_name like "B%" limit 3;

# Q.12.Display the names of the first 5 movies which are rated as ‘G’.
select * from film;
select *from film where rating="G" limit 5;

# Q.13.Find all customers whose first name starts with "a".
select *from customer;
select first_name from customer where first_name like "a%";

# Q.14.Find all customers whose first name ends with "a".
select first_name from customer where first_name like "%a";

# Q.15. Display the list of first 4 cities which start and end with ‘a’.
select  * from city;
select city from city where city like "a%a";

# Q.16. Find all customers whose first name have "NI" in any position.
select * from customer;
select first_name from customer where first_name like "%NI%";

# Q.17.Find all customers whose first name have "r" in the second position .
select first_name from customer where first_name like "_r%";

# Q.18. Find all customers whose first name starts with "a" and are at least 5 characters in length.
select First_name from customer where first_name like "a____%";

# Q.19.Find all customers whose first name starts with "a" and ends with "o".
select first_name from customer where first_name like "a%o";

# Q.20.Get the films with pg and pg-13 rating using IN operator.
select * from film;
select * from film where rating in ('PG','PG-13');

# Q.21. Get the films with length between 50 to 100 using between operator. 
select * from film where length between 50 and 100;

# Q.22.Get the top 50 actors using limit operator.
select * from actor;
select concat (first_name," ",Last_name) from actor limit 50;

# Q.23.Get the distinct film ids from inventory table. 

select distinct (film_id) from inventory;
