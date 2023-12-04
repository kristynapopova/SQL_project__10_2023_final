
-- Kolik je možné si koupit litrů mléka a kilogramů chleba za první a poslední srovnatelné období v dostupných datech cen a mezd?

SELECT
	round(AVG (DISTINCT hruba_mzda), 0),
	odvětví,
	payroll_year,
	potraviny,
	category_code,
	cena,
	množství,
	round((AVG (DISTINCT hruba_mzda)) / cena) * množství,
	jednotky
FROM
	t_kristyna_popova_project_sql_primary_final tkppspf
WHERE
	payroll_year IN (2006,2018)
	AND category_code IN  (114201,111301)
GROUP BY
	category_code,
	odvětví,
	payroll_year;










