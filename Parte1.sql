-- Pregunta 1: ¿Qué años abarca el conjunto de datos?
SELECT 
DISTINCT year
FROM
population_year

-- Pregunta 2: ¿Cuál es el mayor tamaño de la población de Gabón en este conjunto de datos?
SELECT
country,
MAX(population) AS population,
year
FROM
population_years
WHERE 
country = 'Gabon'

-- Pregunta 3: ¿Cuáles eran los 10 países con menor población en 2005?
SELECT
TOP 10 * 
FROM 
population_years
WHERE
year = 2005
ORDER BY 
population

-- Pregunta 4: ¿Cuáles son los distintos países con más de 100 millones de habitantes en el año 2010?
SELECT 
*
FROM
population_years
WHERE
year = 2010 and population >= 100

-- Pregunta 5: ¿Cuántos países de este conjunto de datos tienen la palabra "Islas" en su nombre?
SELECT
COUNT(country) AS numero_paises
FROM
population_years
WHERE
country LIKE '%Islands%'

-- Pregunta 6: ¿Cuál es la diferencia de población entre 2000 y 2010 en Indonesia? 
SELECT 
*
FROM
population_years
WHERE
country = 'Indonesia' and (year = 2000 or year = 2010)
