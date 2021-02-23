select a.inventory_id, a.film_id, l.rental_id, l.rental_date, f.title from inventory a
join rental l on a.inventory_id = l.inventory_id
join film f on a.film_id = f.film_id;

-- Lab | SQL Queries 9
-- 1. Create a table rentals_may to store the data from rental table with information for the month of May.
-- 2. Insert values in the table rentals_may using the table rental, filtering values only for the month of May.
select * from rental;

drop table if exists rentals_may;

create table rentals_may as select * from rental 
where monthname(rental_date)='May';

select * from rentals_may;

-- 3. Create a table rentals_june to store the data from rental table with information for the month of June.
-- 4. Insert values in the table rentals_june using the table rental, filtering values only for the month of June.
create table rentals_june as select * from rental 
where monthname(rental_date)='June';

select * from rentals_june;

-- 5. Check the number of rentals for each customer for May.
select customer_id, count(rental_id) from rentals_may
group by customer_id;

-- 6. Check the number of rentals for each customer for June.
select customer_id, count(rental_id) from rentals_june
group by customer_id;


