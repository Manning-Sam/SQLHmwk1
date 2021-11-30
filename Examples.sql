--Select all records from the actor table
SELECT *
FROM actor;

--query for first_name and last_name in actor table
select first_name, last_name
from actor;

--query for a first_name that equals something specific
select *
from actor 
where first_name = 'Nick';

--query for a first_name using a like and where clause
select *
from actor 
where first_name like 'Nick';

--search for first_names that begin with J using like and where clauses and a wildcard (%)
select *
from actor
where first_name like 'J%';
--above does not work with an equal sign because of the wildcard

--query for something that starts with ka dn has 2 letters afterwards use the _
select *
from actor
where first_name like 'K__'
--number of underscores specifies how many

--querry for all the first_name data that starts with k and ends with th(combining % and _)
select first_name, last_name
from actor 
where first_name like 'K__%th'

--comparing operators
--greater than > Less than <
--greater and equal to >= Less than and equal to <=
--not equal <>
select *
from payment;

--query for data that shows customers who paid an amount greater than $2
select *
from payment
where amount > 2;

select *
from payment
where amount < 2;

select *
from payment
where amount <= 7.99;

select *
from payment
where amount >= 4.99;

--query fro data that shows customers who paid between 2.99 and 5.99
select *
from payment 
where amount between 2.99 and 7.99;

--sort in ascending order (defaults to ascending but can also specify with ASC keyword)
select *
from payment 
where amount between 3.99 and 7.99;
order by amount ASC;

--order in descending order using keyword DESC
select *
from payment 
where amount between 3.99 and 7.99
order by amount desc;

--SQL aggregations (whole formed by parts) => SUM(), AVG(), COUNT(), MIN(), MAX()

--query to display sum of the amounts paid that are greated than 5.99
select SUM(amount)
from payment
where amount > 5.99;

--query to display average amounts of paid items that are greater than 5.99
select AVG(amount)
from payment
where amount > 5.99;

--query to diplay tha count of items sold that are greater than 5.99
select COUNT(amount)
from payment 
where amount > 5.99;

--query to display the count of DISTICT amounts paid that are greater than 5.99
select COUNT(distinct amount)
from payment
where amount > 5.99;

select distinct amout
from payment
order by amount;

--alais (renaming your column headers)
select min(amount) as min_cost_payments
from payment;

select max(amount) as max_cost_payments
from payment;

--query to display all amounts
select * 
from payment
where amount = 7.99;

--query to display different amounts grouped together and count the amount
select amount, count(amount)
from payment
group by amount
order bby amount desc;

--query to display customer_ids with the summed amount for each customer
select customer_id, sum(amount)
from payment
group by customer_id
order by sum(amount) desc;

--query to diaplay customer_ids with the summed amount for each customer(different way to use group by)
select customer_id, amount
from payment
group by the amount, customer_id
order by customer_id desc;

--using having clause to provide restrictions on aggregated data 
select customer_id, sum(amount)
from payment
group by customer_id
having sum(amount) > 175
order by sum(amount) desc;

--customer table
select*
from customer;

--query to display customer_ids that show up more than 5 times
--group by the customer's email
select count(customer_id), email
from customer
where email like 'j_.w%'
group by email
having count(customer_id) > 0;






