
-- Která kategorie potravin zdražuje nejpomaleji (je u ní nejnižší percentuální meziroční nárůst)?


SELECT
	food_category,
	date,
	price,
	LAG(price) OVER(
	ORDER BY date) AS previous_row,
	ROUND((price - LAG(price) OVER(ORDER BY date)) / LAG(price) OVER(ORDER BY date) * 100, 2) AS percentual_growth
FROM
	t_kristyna_popova_project_sql_primary_final tkppspf
WHERE category_code = 111301
GROUP BY
	date
ORDER BY
	percentual_growth ASC;



