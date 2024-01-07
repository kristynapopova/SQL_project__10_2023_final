

CREATE VIEW czechia_payroll_edit AS
SELECT
	round(avg(cp1.value), 2) AS gross_wage,
	cp1.value_type_code,
	cp1.industry_branch_code,
	cp1.payroll_year,
	cpib.name AS industry
FROM
	 czechia_payroll cp1
JOIN czechia_payroll_industry_branch cpib
ON
	cp1.industry_branch_code = cpib.code
WHERE
	cp1.value_type_code = 5958
GROUP BY
   payroll_year, industry;



CREATE VIEW czechia_price_edit AS
SELECT
	cp2.value AS price,
	cp2.category_code,
	YEAR(cp2.date_from) AS date,
	cp2.region_code,
	cpc.name AS food_category,
	cpc.price_value AS quantity,
	cpc.price_unit AS units
FROM
	czechia_price cp2
JOIN czechia_price_category cpc
ON
	cp2.category_code = cpc.code
WHERE
	region_code IS NULL
GROUP BY
	food_category,
	date;


CREATE TABLE t_kristyna_popova_project_SQL_primary_final AS 
SELECT
*
FROM
	 czechia_payroll_edit cpe1
JOIN czechia_price_edit cpe2
ON
	 cpe1.payroll_year = cpe2.date;
	
	
	







