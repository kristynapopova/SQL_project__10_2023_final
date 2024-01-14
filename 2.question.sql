
-- Kolik je možné si koupit litrů mléka a kilogramů chleba za první a poslední srovnatelné období v dostupných datech cen a mezd? (všechny odvětví dohromady )

SELECT
	payroll_year AS period_comparison,
	food_category,
	ROUND((AVG(DISTINCT gross_wage)) / price) AS can_be_bought,
	units
FROM
	t_kristyna_popova_project_sql_primary_final tkppspf
WHERE
	payroll_year IN (2006,2018)
	AND category_code IN  (114201,111301)
GROUP BY
	category_code,
	payroll_year;


	
 
	
