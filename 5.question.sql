 -- 5. Má výška HDP vliv na změny ve mzdách a cenách potravin? Neboli, pokud HDP vzroste výrazněji v jednom roce, 
-- projeví se to na cenách potravin či mzdách ve stejném nebo násdujícím roce výraznějším růstem?


SELECT
	payroll_year,
	ROUND((GDP - LAG(GDP) OVER(ORDER BY YEAR)) / LAG(GDP) OVER(ORDER BY YEAR) * 100, 2) AS percentual_growth_GDP,
	ROUND((AVG (gross_wage) - LAG(AVG (gross_wage)) OVER(ORDER BY payroll_year)) / LAG(AVG (gross_wage)) OVER(ORDER BY payroll_year) * 100, 2) AS percentual_growth_wage,
	ROUND((AVG(price)- LAG(AVG (price)) OVER(ORDER BY payroll_year)) / LAG(AVG (price)) OVER(ORDER BY payroll_year) * 100, 2) AS percentual_growth_food
FROM
	t_kristyna_popova_project_sql_secondary_final fin2
JOIN t_kristyna_popova_project_sql_primary_final fin1
ON
	fin2.year = fin1.payroll_year
WHERE
	country = 'Czech Republic'
GROUP BY payroll_year;
