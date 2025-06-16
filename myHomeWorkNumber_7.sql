/*1   Вывести названия продуктов таблица products, включая количество
 заказанных единиц quantity для каждого продукта таблица order_details.

1.1 Решить задачу с помощью  CTE (Common Table Expression)*/

WITH product_quantity AS (
  SELECT 
    product_id,
    SUM(quantity) AS total_quantity
  FROM order_details
  GROUP BY product_id
)
SELECT 
    p.product_name,
    COALESCE(pq.total_quantity, 0) AS total_ordered
FROM
    products p
        LEFT JOIN
    product_quantity pq ON p.id = pq.product_id;
    
   /* 1.2 подзапроса */
   
SELECT 
    p.product_name,
    COALESCE((SELECT 
                    SUM(quantity)
                FROM
                    order_details od
                WHERE
                    od.product_id = p.id
                GROUP BY product_id),
            0) AS ordered_quantity
FROM
    products p
ORDER BY p.product_name;
    
    
 /*2  Найти все заказы таблица orders, сделанные после даты самого 
 первого заказа клиента Lee таблица customers.  */
 
SELECT 
    o.*
FROM
    orders o
WHERE
    o.order_date > (SELECT 
            MIN(order_date)
        FROM
            orders
        WHERE
            customer_id IN (SELECT 
                    id
                FROM
                    customers
                WHERE
                    last_name = 'Lee'))
ORDER BY o.order_date;
    
   /* 3 Найти все продукты таблицы  products c максимальным target_level*/
SELECT 
    *
FROM
    products
WHERE
    target_level = (SELECT 
            MAX(target_level)
        FROM
            products);
