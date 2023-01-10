-- Question 1: How many actors are there with the last name 'Wahlberg'?
select first_name, last_name
from actor
where last_name like 'Wahlberg';
-- 2 : Nick and Daryl

-- Question 2: How many payments were made between $3.99 and $5.99?
select COUNT(amount)
from payment
where amount between 3.99 and 5.99;
-- 3,239

-- Question 3: What film does the store have the most of?
select COUNT(film_id), film_id 
from inventory
group by film_id
order by COUNT(film_id) desc;
-- 72 different films have 8 in inventory

-- Question 4: How many customers have the last name 'William'?
select customer_id, first_name, last_name
from customer
where last_name = 'William';
-- None

-- Question 5: What store employee (get the id) sold the most rentals?
select COUNT(staff_id), staff_id 
from rental
group by staff_id
order by COUNT(staff_id) desc;
-- Employee ID 1 sold the most rentals

-- Question 6: How many different district names are there?
select COUNT(distinct district)
from address;
-- 378 different districts

-- Question 7: What film has the most actors in it?
select COUNT(actor_id) as Number_Of_Actors, film_id
from film_actor
group by film_id
order by COUNT(actor_id) desc;
-- Film ID 508 has 15 actors in it

-- Question 8: From store_id 1 how many customers have a last name ending in 'es'?
select first_name, last_name, customer_id
from customer
where store_id = 1 and last_name like '%es';
-- 13 Customers from store_id 1 have a last name ending in 'es'

-- Question 9: How many payment amounts had a number of rentals above 250 for 
-- customers with IDs between 380 and 430?
select count(amount), amount
from payment
where customer_id between 380 and payment_id
group by amount
having COUNT(rental_id) > 250;
-- 5 discrete amounts (2.99, 6.99, 7.99, 4.99, 5.99, 8.99) 

-- Question 10: Within the film table, how many rating categories are there?
select COUNT(distinct rating) 
from film;
-- 5 rating categories
--And what rating has the most movies in total?
select COUNT(title), rating
from film
group by rating;
-- PG-13 has the most films
