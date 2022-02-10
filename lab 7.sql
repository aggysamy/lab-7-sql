Use sakila;
#1 actors which last names are not repeated
select * from actor;
select last_name, count(last_name) as count_names 
from actor group by last_name having count_names=1;
#2Which last names appear more than once?
select * from actor;
select last_name, count(last_name)as count_names
from actor
group by last_name
having count_names>1;
#3Using the rental table, find out how many rentals were processed by each employee.
select * from rental;
select staff_id, count(rental_id)
from rental
group by staff_id;
#4Using the film table, find out how many films were released each year.
select* from film;
select release_year, count(film_id) 
from film
group by release_year;
#5Using the film table, find out for each rating how many films were there.
select rating, count(film_id)
from film
group by rating;

select * from film;
select rating, round(AVG(length))
from film
group by rating;
#6What is the mean length of the film for each rating type. Round off the average lengths to two decimal places
select * from film;
select rating, round(AVG(length),2) as avg_len
from film
group by rating 
order by avg_len desc;
#7Which kind of movies (rating) have a mean duration of more than two hours?
Select * from film;
select rating, round(AVG(length),2) as avg_len
from film
group by rating 
having avg_len >120;