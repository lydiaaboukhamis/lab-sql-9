### Instructions SQL Lab 9

#In this lab we will find the customers who were active in consecutive months of May and June. Follow the steps to complete the analysis.
select * from sakila.rental
order by rental_date asc;  # + desc : checking --> only data for months may and june in the year 2005!


-- Create a table `rentals_may` to store the data from rental table with information for the month of May.
-- Insert values in the table `rentals_may` using the table rental, filtering values only for the month of May.

drop table sakila.rentals_may;
CREATE TABLE sakila.rentals_may
AS (SELECT * from sakila.rental where rental_date like'2005-05%' );




-- Create a table `rentals_june` to store the data from rental table with information for the month of June.
-- Insert values in the table `rentals_june` using the table rental, filtering values only for the month of June.
drop table sakila.rentals_june;
CREATE TABLE sakila.rentals_june
AS (SELECT * from sakila.rental where rental_date like'2005-06%' );



-- Check the number of rentals for each customer for May.
select customer_id, count(rental_id) as RentalNumberMay from sakila.rentals_may
group by customer_id;
-- Check the number of rentals for each customer for June.
select customer_id, count(rental_id) as RentalNumberJune from sakila.rentals_june
group by customer_id;




