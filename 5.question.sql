
-- 5. Má výška HDP vliv na změny ve mzdách a cenách potravin? Neboli, pokud HDP vzroste výrazněji v jednom roce, 
-- projeví se to na cenách potravin či mzdách ve stejném nebo násdujícím roce výraznějším růstem?


SELECT
	PAYROLL_YEAR,
	round( ( GDP - LAG(GDP) OVER(ORDER BY YEAR) ) / LAG(GDP) OVER(ORDER BY YEAR ) * 100, 2 ) AS procentuální_nárůst_GDP,
	round( ( avg (hruba_mzda) - LAG(avg (hruba_mzda)) OVER(ORDER BY payroll_year ) ) / LAG(avg (hruba_mzda)) OVER(ORDER BY payroll_year ) * 100, 2 ) AS procentuální_nárůst_mezd,
	round( (avg(cena)- LAG(avg (cena)) OVER(ORDER BY payroll_year ) ) / LAG(avg (cena)) OVER(ORDER BY payroll_year ) * 100, 2 ) AS procentuální_nárůst_potravin
FROM
	t_kristyna_popova_project_sql_secondary_final fin2
JOIN t_kristyna_popova_project_sql_primary_final fin1
ON
	fin2.year = fin1.payroll_year
WHERE
	country = 'Czech Republic'
GROUP BY payroll_year;









