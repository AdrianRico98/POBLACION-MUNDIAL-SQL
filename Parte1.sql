-- Pregunta 1: �Qu� a�os abarca el conjunto de datos?
SELECT 
DISTINCT year
FROM
population_year

-- Pregunta 2: �Cu�l es el mayor tama�o de la poblaci�n de Gab�n en este conjunto de datos?
SELECT
country,
MAX(population) AS population,
year
FROM
population_years
WHERE 
country = 'Gabon'

-- Pregunta 3: �Cu�les eran los 10 pa�ses con menor poblaci�n en 2005?
SELECT
TOP 10 * 
FROM 
population_years
WHERE
year = 2005
ORDER BY 
population

-- Pregunta 4: �Cu�les son los distintos pa�ses con m�s de 100 millones de habitantes en el a�o 2010?
SELECT 
*
FROM
population_years
WHERE
year = 2010 and population >= 100

-- Pregunta 5: �Cu�ntos pa�ses de este conjunto de datos tienen la palabra "Islas" en su nombre?
SELECT
COUNT(country) AS numero_paises
FROM
population_years
WHERE
country LIKE '%Islands%'

-- Pregunta 6: �Cu�l es la diferencia de poblaci�n entre 2000 y 2010 en Indonesia? 
SELECT 
*
FROM
population_years
WHERE
country = 'Indonesia' and (year = 2000 or year = 2010)
