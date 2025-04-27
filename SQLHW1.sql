
NUMMER 1

SELECT 
    *
FROM
    suppliers;
    
SELECT 
    *
FROM
    suppliers    
WHERE
    company = 'Supplier A';

NUMMER 2

SELECT 
    *
FROM
    purchase_orders;
    
SELECT 
    *
FROM
    purchase_orders
WHERE
    supplier_id = 2;

NUMMER 3

SELECT 
    supplier_id, shipping_fee
FROM
    purchase_orders
WHERE
    created_by = 1 AND supplier_id = 5
    
Этот запрос возвращет только столбцы supplier_id и shipping_fee для строк, где:
created_by = 1 (создано пользователем с ID 1)
И одновременно supplier_id = 5 (поставщик с ID 5)
Результат покажет стоимость доставки для заказов, которые соответствуют обоим условиям.


NUMMER 4

SELECT 
    last_name, first_name
FROM
    employees
WHERE
    address = '123 2nd Avenue'
        OR address = '123 8th Avenue';
        
SELECT 
    last_name, first_name
FROM
    employees
WHERE
    address IN ('123 2nd Avenue' , '123 8th Avenue');
    
NUMMER 5   

SELECT 
    last_name, first_name
FROM
    employees
WHERE
    last_name LIKE '%p%'
        AND last_name NOT LIKE 'p%'
        AND last_name NOT LIKE '%p'
        
        
NUMMER 6
SELECT 
    *
FROM
    orders
WHERE
    shipper_id IS NULL;