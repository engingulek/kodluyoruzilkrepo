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
