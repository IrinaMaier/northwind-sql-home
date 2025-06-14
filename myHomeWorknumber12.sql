
DESCRIBE employees; /*проверила какие есть точные названия полей*/


/*1 Вывести id департамента , в котором работает сотрудник, в зависимости от Id сотрудника*/

SELECT 
    job_title AS department_info
FROM
    employees
WHERE
    id = 5;


/*2 Создайте хранимую процедуру get_employee_age, которая принимает id сотрудника (IN-параметр) и возвращает его возраст через OUT-параметр.*/


DELIMITER //

CREATE PROCEDURE get_employee_age (
    IN emp_id INT,
    OUT emp_age INT
)
BEGIN
    SET emp_age = NULL;
    SELECT 'Поле возраста отсутствует в таблице employees' AS message;
END //
DELIMITER ;


/*3 Создайте хранимую процедуру increase_salary, которая принимает зарплату сотрудника (INOUT-параметр) и уменьшает ее на 10%.*/

DELIMITER //
CREATE PROCEDURE increase_salary(IN emp_id INT)
BEGIN
    SELECT 'Поле salary отсутствует в таблице employees' AS result;
END //
DELIMITER ;

