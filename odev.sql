/*Odev 1*/
/*Soru 1*/ 
SELECT title,description from film
/*Soru 2*/
Select * from film Where (length > 60 and length < 70)
/*Soru 3*/
Select * from film Where (rental_rate = 0.99 and replacement_cost = 12.99 or replacement_cost = 28.99)
/*Soru 4*/
Select last_name from customer Where first_name = 'Mary'
/*Soru 5*/
Select * from film Where not (length < 50) and  (rental_rate = 2.99 or rental_rate = 4.99 )

/*Odev 2*/
/*Soru 1*/
Select * from film Where replacement_cost Between 12.99 and 16.99
/*Soru 2*/
Select first_name,last_name from actor Where first_name in ('Penelope','Nick','Ed')
/*Soru 3*/
Select * from film Where rental_rate in (0.99, 2.99, 4.99) and  replacement_cost in (12.99, 15.99, 28.99)


/*Odev 3*/
/*Soru 1*/
Select * from country WHERE country LIKE 'A%a'

/*Soru 2*/
Select * from country WHERE country LIKE '%n' and len(country) >= 6

/*Soru 3*/
Select title from film Where title LIKE '%t%' 

/*Soru 4*/
Select * from film  WHERE title LIKE 'C%' and len(title) > 90 and rental_rate = 2.99 

/*Odev 8*/

/*Soru 1*/
Create Table employee (
id Serial Primary Key,
name VARCHAR(50) Not Null,
email VARCHAR(100),
birthday DATE)

/*Soru2*/
/*50 tane veri eklemiştir.*/

/*soru 3*/
 UPDATE employee
 SET name='engin',
     email='engingulek@gmail.com'
  WHERE id  BETWEEN 1 AND 5
  RETURNING *;
  
  /*Soru 4*/
    DELETE FROM employee
  WHERE id>45;


/*odev 4*/
/*Soru 1*/
SELECT DISTINCT replacement_cost from film

/*Soru 2*/
SELECT DISTINCT Count(*) from film

/*Soru 3*/
Select DISTINCT Count(*) from film  WHERE title LIKE 'T%' and rating = 'G'
/*Soru 4*/
SELECT COUNT(*) FROM country WHERE country LIKE '_____';

Select Count(*) from city Where city LIKE 'R%' or city LIKE '%r'

/*odev 5*/

/*Soru 1*/
Select * from film Where title Like '%n' ORDER BY length DESC LIMIT 5;
/*Soru 2*/
Select * from film Where title Like '%n' Order By Length Desc offset 5 Limit 5
/*Soru 3*/
Select * from customer Where store_id = 1 Order by last_name Desc Limit 4




/*Soru 6*/
/*Soru 1*/
Select Avg(rental_rate) from film
/*Soru 2*/
Select Count(title) from film Where title Like 'C%'
/*Soru 3*/
Select length from film Where rental_rate = 0.99 Order By  length desc Limit 1
/*İkinci yol*/
SELECT MAX(length) FROM film WHERE rental_rate = 0.99;
/*Soru 4 */
Select COUNT(DISTINCT(replacement_cost))  from film Where length > 150


/*Ödev 7*/
/*Soru 1*/
Select rental_rate,Count(rental_rate) from film group by rental_rate
/*Soru 2*/
Select rental_rate,count(*) from film group by rental_rate having count(rental_rate)>50
/*Soru 3*/
Select store_id ,Count(*) from customer group by store_id
/*Soru 4*/
Select country_id,Count(*) from city group by country_id order by COUNT(*) DESC Limit 1



/*Ödev 8*/

/*Soru 1*/
Create Table employee (
id Serial Primary Key,
name VARCHAR(50) Not Null,
email VARCHAR(100),
birthday DATE)

/*Soru2*/
/*50 tane veri eklemiştir.*/

/*soru 3*/
 UPDATE employee
 SET name='engin',
     email='engingulek@gmail.com'
  WHERE id  BETWEEN 1 AND 5
  RETURNING *;
  
  /*Soru 4*/
    DELETE FROM employee
  WHERE id>45;
  
  
  
  /*Ödev 9*/
/*Soru 1*/
Select city.city, country.country from city Join country on city.country_id = country.country_id
/*Soru 2*/
Select  payment.payment_id,customer.first_name,customer.last_name from customer Join  payment  on customer.customer_id =  payment.customer_id
/*Soru 3*/
Select rental.rental_id,customer.first_name,customer.last_name from customer Join rental on customer.customer_id = rental.customer_id


/*Soru 10*/
/*Soru 1*/
Select city.city, country.country from city Left join country on city.country_id = country.country_id
/*Soru 2*/
Select payment_id, customer.first_name, customer.last_name 
from customer Right join payment on customer.customer_id = payment.customer_id;
/*Soru 3*/
Select rental.rental_id , customer.first_name, customer.last_name from customer 
Full join  rental on rental.customer_id = customer.customer_id

