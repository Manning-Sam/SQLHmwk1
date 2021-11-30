-- Week 5 - Monday Questions
-- 1. How many actors are there with the last name ‘Wahlberg’? 2
select *
from actor
where last_name = 'Wahlberg';


-- 2. How many payments were made between $3.99 and $5.99? 5607
select count(amount)
from payment
where amount between 3.99 and 5.99;

-- 3. What film does the store have the most of? (search in inventory) multiple film_ids have a count of 4 inventory slots for both stores 1 and 2
select count(inventory_id), film_id
from inventory
where store_id = 2
group by film_id
order by count(inventory_id) desc;


-- 4. How many customers have the last name ‘William’? 0 (1 williams)
select count(customer_id)
from payments
where last_name = 'William';

-- 5. What store employee (get the id) sold the most rentals? (ran with both id numbers; 1 rented more by 36)
select count(rental_id)
from rental
where staff_id = 1;

-- 6. How many different district names are there? 378
select count(distinct district)
from address;

-- 7. What film has the most actors in it? (use film_actor table and get film_id) 508
select count(actor_id), film_id
from film_actor
group by film_id
order by count(actor_id) desc;

-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table) 599
select count(last_name)
from customer;
where store_id = 1 and last_name = '%es';

-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250) the first is 14,596 and the second is 1?
select count(amount)
from payment
having count(rental_id) > 250;

select count(amount)
from payment 
where customer_id between 380 and 430
group by rental_id
having rental_id >250;

-- 10. Within the film table, how many rating categories are there? And what rating has the most 
-- movies total? 5 and PG-13 at 223
select count(film_id), rating
from film
group by rating
order by count(film_id) desc
