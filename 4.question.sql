
-- Existuje rok, ve kterém byl meziroční nárůst cen potravin výrazně vyšší než růst mezd? (větší než 10%)?


SELECT
	payroll_year,
	round (avg (hruba_mzda),2) AS průměrná_hrubá_mzda,
	LAG(avg (hruba_mzda)) OVER(
	ORDER BY
	payroll_year ) AS predchozi_radek,
	round( ( avg (hruba_mzda) - LAG(avg (hruba_mzda)) OVER(ORDER BY payroll_year ) ) / LAG(avg (hruba_mzda)) OVER(ORDER BY payroll_year ) * 100, 2 ) AS procentuální_nárůst_mezd,
	round (avg(cena),2)  AS průměrná_cena_potravin,
	LAG(avg(cena)) OVER(
	ORDER BY
	payroll_year ) AS predchozi_radek,
	round( (avg(cena)- LAG(avg (cena)) OVER(ORDER BY payroll_year ) ) / LAG(avg (cena)) OVER(ORDER BY payroll_year ) * 100, 2 ) AS procentuální_nárůst_potravin,
    round( ( avg (hruba_mzda) - LAG(avg (hruba_mzda)) OVER(ORDER BY payroll_year ) ) / LAG(avg (hruba_mzda)) OVER(ORDER BY payroll_year ) * 100, 2 ) - round( (avg(cena)- LAG(avg (cena)) OVER(ORDER BY payroll_year ) ) / LAG(avg (cena)) OVER(ORDER BY payroll_year ) * 100, 2 ) AS meziroční_rozdíl_v_nárůstu_mezd_a_potravin
FROM
	t_kristyna_popova_project_sql_primary_final tkppspf
GROUP BY
	payroll_year;

	
































