
-- 5. Má výška HDP vliv na změny ve mzdách a cenách potravin? Neboli, pokud HDP vzroste výrazněji v jednom roce, 
-- projeví se to na cenách potravin či mzdách ve stejném nebo násdujícím roce výraznějším růstem?



SELECT
	payroll_year,
	round (avg (hruba_mzda),
	2) AS průměrná_hrubá_mzda,
	LAG(avg (hruba_mzda)) OVER(
ORDER BY
	payroll_year ) AS predchozi_radek_mzda,
	round( ( avg (hruba_mzda) - LAG(avg (hruba_mzda)) OVER(ORDER BY payroll_year ) ) / LAG(avg (hruba_mzda)) OVER(ORDER BY payroll_year ) * 100, 2 ) AS procentuální_nárůst_mezd,
	round (avg(cena),
	2) AS průměrná_cena_potravin,
	LAG(avg(cena)) OVER(
ORDER BY
	payroll_year ) AS predchozi_radek_cena,
	round( (avg(cena)- LAG(avg (cena)) OVER(ORDER BY payroll_year ) ) / LAG(avg (cena)) OVER(ORDER BY payroll_year ) * 100, 2 ) AS procentuální_nárůst_potravin,
	round( ( avg (hruba_mzda) - LAG(avg (hruba_mzda)) OVER(ORDER BY payroll_year ) ) / LAG(avg (hruba_mzda)) OVER(ORDER BY payroll_year ) * 100, 2 ) - round( (avg(cena)- LAG(avg (cena)) OVER(ORDER BY payroll_year ) ) / LAG(avg (cena)) OVER(ORDER BY payroll_year ) * 100, 2 ) AS meziroční_rozdíl_v_nárůstu_mezd_a_potravin,
	round(gdp, 2) AS gdp,
	lag(gdp)OVER(
	ORDER BY YEAR) AS PREDCHOZI_RADEK,
	round( ( GDP - LAG(GDP) OVER(ORDER BY YEAR) ) / LAG(GDP) OVER(ORDER BY YEAR ) * 100, 2 ) AS procentuální_nárůst_GDP
FROM
	t_kristyna_popova_project_sql_primary_final fin1
JOIN t_kristyna_popova_project_sql_secondary_final fin2
	ON
	fin1.payroll_year = fin2.YEAR
WHERE
	country = 'czech republic'
GROUP BY
	payroll_year;








