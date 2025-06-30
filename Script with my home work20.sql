USE hr;

SELECT COUNT(*) FROM hr.employees ;

SELECT COUNT(*) AS employee_count FROM hr.employees;

SELECT COUNT(*) AS department_count FROM hr.departments;


USE world;

SELECT AVG(Population) AS avg_india_city_population 
FROM world.city
WHERE CountryCode = 'IND';

SELECT 
    MIN(Population) AS min_population,
    MAX(Population) AS max_population
FROM world.city
WHERE CountryCode = 'IND';

SELECT MAX(SurfaceArea) AS max_surface_area
FROM world.country;


SELECT AVG(LifeExpectancy) AS avg_life_expectancy
FROM world.country;

SELECT Name, Population
FROM world.city
WHERE Population = (SELECT MAX(Population) FROM world.city);