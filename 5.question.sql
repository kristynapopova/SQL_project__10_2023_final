
-- 5. Má výška HDP vliv na změny ve mzdách a cenách potravin? Neboli, pokud HDP vzroste výrazněji v jednom roce, 
-- projeví se to na cenách potravin či mzdách ve stejném nebo násdujícím roce výraznějším růstem?

SELECT 
YEAR,
gdp,
lag(gdp)over(ORDER BY YEAR) AS PREDCHOZI_RADEK,
round( ( GDP - LAG(GDP) over(ORDER BY YEAR) ) / LAG(GDP) over(ORDER BY YEAR ) * 100, 2 ) AS procentuální_nárůst_GDP
FROM T_KRISTYNA_POPOVA_PROJECT_SQL_SECONDARY_FINAL TKPPSSF
WHERE country = 'Czech Republic'
GROUP BY YEAR;


