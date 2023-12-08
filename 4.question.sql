
-- Existuje rok, ve kterém byl meziroční nárůst cen potravin výrazně vyšší než růst mezd? (větší než 10%)?


SELECT
roky,
	round (avg(cena),2)  AS průměrná_cena_potravin,
	LAG(avg(cena)) OVER(
	ORDER BY
	roky ) AS predchozi_radek,
	round( (avg(cena)- LAG(avg (cena)) OVER(ORDER BY roky ) ) / LAG(avg (cena)) OVER(ORDER BY roky ) * 100, 2 ) AS procentuální_nárůst
FROM
	t_kristyna_popova_project_sql_primary_final tkppspf
GROUP BY
	roky;


SELECT
	round (avg (hruba_mzda),2) AS průměrná_hrubá_mzda,
	PAYROLL_YEAR,
	LAG(avg (hruba_mzda)) OVER(
	ORDER BY
	payroll_year ) AS predchozi_radek,
	round( ( avg (hruba_mzda) - LAG(avg (hruba_mzda)) OVER(ORDER BY PAYROLL_YEAR ) ) / LAG(avg (hruba_mzda)) OVER(ORDER BY payroll_year ) * 100, 2 ) AS procentuální_nárůst
FROM
	t_kristyna_popova_project_sql_primary_final tkppspf
GROUP BY
	payroll_year;


	
































