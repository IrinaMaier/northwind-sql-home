USE northwind;

nummer 1

SELECT 
    *
FROM
    suppliers;
    
nummer 2

SELECT 
    id,
    order_id,
    IF(unit_price > 10,
        'Expensive',
        'Cheap') AS category
FROM
    order_details;
    
споособ 2

SELECT 
    id,
    order_id,
    CASE
        WHEN unit_price > 10 THEN 'Expensive'
        ELSE 'Cheap'
    END AS category
FROM
    order_details;
    
nummer 3
SELECT 
    *, (quantity * unit_price) AS total_price
FROM
    order_details
WHERE
    purchase_order_id IS NULL;
    
Nummer 4
SELECT 
    CONCAT(first_name, ' ', last_name) AS full_name
FROM
    employees
LIMIT 2 , 3;


nummer 5

DESCRIBE orders;

SELECT 
 DATE_FORMAT(order_date, '%Y-%m') AS year_month
FROM orders;

nummer 6
SELECT DISTINKT company
FROM customers
ORDER BY company DESK;
    

