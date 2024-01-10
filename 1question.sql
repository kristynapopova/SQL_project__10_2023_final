
-- Rostou v průběhu let mzdy ve všech odvětvích, nebo v některých klesají?


SELECT
	gross_wage,
	industry,
	payroll_year
FROM
	t_kristyna_popova_project_sql_primary_final tab1
GROUP BY industry, payroll_year;



