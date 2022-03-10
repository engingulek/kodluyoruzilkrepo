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