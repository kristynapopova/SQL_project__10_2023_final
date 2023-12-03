

CREATE TABLE t_kristyna_popova_project_SQL_secondary_final AS
SELECT
	e.country,
	e.year,
	e.gdp, 
	e.population,
	e.gini
FROM
	economies e
WHERE
	country IN (
	SELECT
		country
	FROM
		countries c
	WHERE
		continent = 'EUROPE')	
AND e.year BETWEEN 2006 AND 2018		
AND e.gdp IS NOT NULL
AND gini IS NOT NULL ;		
		


