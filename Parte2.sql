-- Pregunta 1:  �Cu�ntas entradas de la tabla de pa�ses son de �frica?
SELECT
COUNT (ID) as numero_registros
FROM
countries
WHERE
continent = 'Africa'
-- Pregunta 2: �Cu�l era la poblaci�n total del continente de Ocean�a en 2005?
SELECT
SUM(P.population) AS poblacion_total
FROM countries as C
left join population_years as P
on C.id = P.country_id
WHERE 
C.continent = 'Oceania' and P.year = 2005
-- Pregunta 3: �Cu�l es la poblaci�n media de los pa�ses de Am�rica del Sur en 2003?
SELECT
AVG (population) as poblacion_media
FROM countries as C
left join population_years as P
on C.id = P.country_id
WHERE 
C.continent = 'South America' and year = 2003
-- Pregunta 4: �Qu� pa�s ten�a la menor poblaci�n en 2007?
SELECT
C.name,
P.population
FROM countries as C
left join population_years as P
on C.id = P.country_id
WHERE 
year = 2007 and population is not null
ORDER BY population
LIMIT 1
-- Pregunta 5: �Cu�l es la poblaci�n media de Polonia durante el periodo de tiempo cubierto por este conjunto de datos?
SELECT
AVG(population) AS poblacion_media_polonia
FROM countries as C
left join population_years as P
on C.id = P.country_id
WHERE 
C.name = 'Poland'
-- Pregunta 6: �Cu�ntos pa�ses tienen la palabra "El" en su nombre?
SELECT
COUNT(name) AS numero_registros
FROM
countries
WHERE
name LIKE '%The%'
-- Pregunta 7: �Cu�l era la poblaci�n total de cada continente en 2010?
SELECT
DISTINCT(C.continent),
SUM(population) as poblacion_total,
year
FROM countries as C
left join population_years as P
on C.id = P.country_id
WHERE
year = 2010
GROUP BY
C.continent
