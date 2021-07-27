-- Q1: How many actors are there with the last name ‘Wahlberg’? 
-- answer: 2
SELECT COUNT(last_name)
FROM actor
WHERE last_name = 'Wahlberg';

-- Q2: How many payments were made between $3.99 and $5.99? 
-- answer: 5607
SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 and 5.99;

-- Q3: What film does the store have the most of? 
SELECT film_id, COUNT(film_id)
FROM inventory
GROUP BY film_id
ORDER BY COUNT(film_id) DESC;

-- Q4: How many customers have the last name ‘William’? 
-- answer: 0
SELECT COUNT(last_name)
FROM customer
WHERE last_name = 'William';

-- Q5: What store employee (get the id) sold the most rentals? 
-- answer: 1, Mike Hillyer
SELECT staff_id, COUNT(staff_id)
FROM rental
GROUP BY staff_id
ORDER BY COUNT(staff_id) DESC;

SELECT first_name, last_name
FROM staff
WHERE staff_id = 1;

-- Q6: How many different district names are there? 
-- answer: 378
SELECT COUNT(DISTINCT district)
FROM address;

-- Q7: What film has the most actors in it? (use film_actor table and get film_id) answer: 
-- 508, "Lambs Cincinatti"
SELECT film_id, COUNT(actor_id)
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(actor_id) DESC;

SELECT film
FROM film 
WHERE film_id = 508;

-- Q8: From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
-- answer: 13
SELECT COUNT(last_name)
FROM customer
WHERE store_id = 1 and last_name LIKE '%es';

-- Q9: How many payment amounts (4.99, 5.99, etc.) had a number of rentals 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)
-- answer: 3
SELECT COUNT(amount)
FROM payment
WHERE customer_id BETWEEN 380 and 430
GROUP BY amount
HAVING COUNT(amount) > 250;

-- Q10: Within the film table, how many rating categories are there? answer: 5
-- And what rating has the most movies total? answer: 223
SELECT *
FROM film;

SELECT COUNT(film_id)
FROM film
GROUP BY rating
ORDER BY COUNT(film_id) ASC;



