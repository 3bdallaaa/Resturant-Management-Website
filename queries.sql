#composite
SELECT Customer_ID, concat(street,' ',city) as 'Full ADDRESS' 
	FROM customer
	WHERE city='Versailles';


#delete query
DELETE FROM restaurant_management_system.users WHERE role='chef';
select ID,name from restaurant_management_system.users;

#update query
UPDATE restaurant_management_system.customer
SET email = 'new_email@example.com', phone = '4567890'
WHERE city = 'Maradi';
select * from restaurant_management_system.customer;

#select total of all the coloumn
SELECT sum(total) AS 'Total'
FROM orders;
#select
SELECT customer_id, sum(payment * cashin) AS 'Total'
FROM orders
GROUP BY customer_id;

#join two tables
SELECT customer.name_, customer.email, orders.total, orders.status_
FROM customer
INNER JOIN orders USING (ID);
