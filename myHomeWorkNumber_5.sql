USE northwind;

SELECT 
    *
FROM
    purchase_order_details
LIMIT 5;


/*1 Посчитайте основные статистики - среднее, сумму, минимум, максимум столбца unit_cost.*/

SELECT 
AVG(unit_cost) AS средняя_цена,
SUM(unit_cost) AS суммарная_цена,
MIN(unit_cost) AS минимальная_цена,
MAX(unit_cost) AS максимальная_цена
FROM purchase_order_details;

/*2 Посчитайте количество уникальных заказов purchase_order_id*/

SELECT 
    COUNT(DISTINCT purchase_order_id) AS уникальные_заказы
FROM
    purchase_order_details
    
/* 3.Посчитайте количество продуктов product_id в каждом заказе purchase_order_id. Отсортируйте полученные данные по убыванию количества.*/
SELECT 
purchase_order_id AS номер_заказа,
COUNT(product_id) AS количество_продуктов
FROM purchase_order_details
GROUP BY purchase_order_id
ORDER BY количество_продуктов DESC;

/*4 Посчитайте заказы по дате доставки date_received Считаем только те продукты, количество quantity которых больше 30*/

SELECT date_received AS дата_доставки,
COUNT(*) AS количество_заказов
FROM purchase_order_details
WHERE quantity >30
GROUP BY date_received;


/*5 Посчитайте суммарную стоимость заказов в каждую из дат Стоимость заказа - произведение quantity на unit_cost*/
SELECT 
date_received AS дата_доставки,
SUM(quantity * unit_cost)AS общая_стоимость
FROM purchase_order_details
GROUP BY date_received;

/* 6 Сгруппируйте товары по unit_cost и вычислите среднее и максимальное значение quantity только для товаров где purchase_order_id не больше 100*/

SELECT 
unit_cost AS цена_товара,
AVG(quantity) AS среднее_количество,
MAX(quantity) AS максимальное_количество
FROM purchase_order_details
WHERE purchase_order_id
GROUP BY unit_cost;

/*7 Выберите только строки где есть значения в столбце inventory_id Создайте столбец category - если unit_cost > 20 то 'Expensive' в остальных случаях 'others' Посчитайте количество продуктов в каждой категории*/
SELECT 
CASE 
WHEN unit_cost>20 THEN 'Expensive'
ELSE 'others'
END AS category,
COUNT(*) AS количество_продуктов
FROM purchase_order_details
WHERE inventory_id IS NOT NULL
GROUP BY category;