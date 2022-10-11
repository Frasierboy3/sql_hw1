-- homework.SQL
--1. How many actors are there with the last name ‘Wahlberg’?: There are 2 actors with the last name "Wahlburg" 
SELECT COUNT(*)
FROM actor
WHERE last_name = 'Wahlberg';

--2. How many payments were made between $3.99 and $5.99?: There are 5 payments
SELECT amount, COUNT(*)
FROM payment 
WHERE amount BETWEEN 3.99 and 5.99
GROUP BY amount;

--3. What film does the store have the most of? (search in inventory): 200 - Curtain Videotape
SELECT film_id ,COUNT(*)
FROM inventory 
GROUP BY film_id
ORDER BY COUNT DESC
LIMIT 1;

SELECT title
FROM film
WHERE film_id = 200

--4. How many customers have the last name ‘William’?: 0 
SELECT COUNT(*)
FROM customer
WHERE last_name = 'William';

--5. What store employee (get the id) sold the most rentals?: staff id is 1 - Mike Hillyer
SELECT staff_id, COUNT(*)
FROM rental
GROUP BY staff_id 
ORDER BY COUNT DESC;

SELECT first_name, last_name
FROM staff
WHERE staff_id = 1;
--6. How many different district names are there? 378 
SELECT COUNT(DISTINCT district)
FROM address;

--7. What film has the most actors in it? (use film_actor table and get film_id): film ID= 508 -Lambs Cincinatti 
SELECT film_id, COUNT(*)
FROM film_actor
GROUP BY film_id  
ORDER BY COUNT DESC; 

SELECT title
FROM film
WHERE film_id = 508;
--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table): 13 
SELECT COUNT(*)
FROM customer
WHERE store_id = 1 AND last_name LIKE '%es';

--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250): 3 different payments (4.99, 6.99, 8.99)
SELECT amount,COUNT(*)
FROM payment
WHERE customer_id BETWEEN 380 and 430 
GROUP BY amount HAVING COUNT(*) > 250
ORDER BY amount;

--10.Within the film table, how many rating categories are there? And what rating has the most
--movies total?: 5 ratings, pg-13 has most movies.  
SELECT COUNT(DISTINCT rating)
FROM film;

SELECT rating, COUNT(*)
FROM film
GROUP BY rating
ORDER BY COUNT DESC
LIMIT 1;
