
/*1. Функция для расчета площади круга*/

DROP FUNCTION IF EXISTS circle_area;

DELIMITER $$

CREATE FUNCTION circle_area(radius DOUBLE)
RETURNS DOUBLE
DETERMINISTIC
BEGIN
  RETURN PI() * POW(radius, 2);
END$$

DELIMITER ;


/*2. Функция для расчета гипотенузы треугольника*/

DROP FUNCTION IF EXISTS triangle_hypotenuse; 

DELIMITER $$

CREATE FUNCTION triangle_hypotenuse(a DOUBLE, b DOUBLE)
RETURNS DOUBLE
DETERMINISTIC
BEGIN
  RETURN SQRT(POW(a, 2) + POW(b, 2));
END$$

DELIMITER ;
