
-- Existuje rok, ve kterém byl meziroční nárůst cen potravin výrazně vyšší než růst mezd? (větší než 10%)?


SELECT
	payroll_year,
	ROUND(AVG(gross_wage),2) AS average_gross_wage,
	LAG(AVG(gross_wage)) OVER(
	ORDER BY
	payroll_year) AS previous_row_wage,
	ROUND((AVG(gross_wage) - LAG(AVG(gross_wage)) OVER(ORDER BY payroll_year)) / LAG(AVG(gross_wage)) OVER(ORDER BY payroll_year) * 100, 2) AS wage_percentual_growth,
	ROUND(AVG(price),2)  AS average_food_price,
	LAG(AVG(price)) OVER(
	ORDER BY
	payroll_year) AS previous_row_price,
	ROUND((AVG(price)- LAG(AVG(price)) OVER(ORDER BY payroll_year)) / LAG(AVG(price)) OVER(ORDER BY payroll_year) * 100, 2) AS food_percentual_growth,
    ROUND((AVG(gross_wage) - LAG(AVG(gross_wage)) OVER(ORDER BY payroll_year)) / LAG(AVG(gross_wage)) OVER(ORDER BY payroll_year) * 100, 2) - ROUND((AVG(price)- LAG(AVG(price)) OVER(ORDER BY payroll_year)) / LAG(avg(price)) OVER(ORDER BY payroll_year) * 100, 2) AS wage_food_percent_growth_diff_
FROM
	t_kristyna_popova_project_sql_primary_final tkppspf
GROUP BY
	payroll_year;

