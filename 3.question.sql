
-- Která kategorie potravin zdražuje nejpomaleji (je u ní nejnižší percentuální meziroční nárůst)?
 
SELECT
	potraviny,
	roky,
	cena,
	LAG(cena) OVER(
	ORDER BY roky ) AS predchozi_radek,
	round( ( cena - LAG(cena) OVER(ORDER BY roky ) ) / LAG(cena) OVER(ORDER BY roky ) * 100, 2 ) AS procentuální_nárůst
FROM
	t_kristyna_popova_project_sql_primary_final tkppspf
WHERE category_code = 111301
GROUP BY
	roky	
ORDER BY
	procentuální_nárůst ASC;



