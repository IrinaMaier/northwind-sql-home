/*number1*/

SELECT 
    TIMESTAMPDIFF(SECOND,
        '1995-12-15',
        NOW()) AS myage_in_seconds;

/*number2*/

SELECT DATE_ADD(CURDATE(), INTERVAL 51 DAY) AS date_after_51_days;

/*number3*/
SELECT 
    DATE_ADD(CURDATE(), INTERVAL 51 DAY) AS future_date,
    DAYNAME(DATE_ADD(CURDATE(), INTERVAL 51 DAY)) AS day_of_week;

/*number4*/
USE northwind;
SELECT 
    transaction_created_date AS orogonal_date,
    DATE_ADD(transaction_created_date,
        INTERVAL 3 HOUR) AS date_plus_3_hours
FROM
    inventory_transactions;
    
 /*number5*/   
 
 SELECT 
	CONCAT('Клиент с id', CAST(customer_id AS CHAR), 'сделал заказ', order_date) AS order_info
 FROM 
	orders;
    



