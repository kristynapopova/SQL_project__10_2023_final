
-- Kolik je možné si koupit litrů mléka a kilogramů chleba za první a poslední srovnatelné období v dostupných datech cen a mezd?


-- první srovnatelné období 2006: Chléb
 
SELECT 
round(AVG (DISTINCT hruba_mzda), 0),
odvětví,
payroll_year,
potraviny,
category_code,
cena,
množství,
round((AVG (DISTINCT hruba_mzda)) / cena) * množství,
jednotky
FROM T_KRISTYNA_POPOVA_PROJECT_SQL_PRIMARY_FINAL TKPPSPF 
WHERE  payroll_year = 2006
AND category_code =111301
GROUP BY odvětví;

-- první srovnaltelné období 2006: Mléko

SELECT 
round(AVG (DISTINCT hruba_mzda), 0),
odvětví,
payroll_year,
potraviny,
category_code,
cena,
množství,
round((AVG (DISTINCT hruba_mzda)) / cena) * množství,
jednotky
FROM T_KRISTYNA_POPOVA_PROJECT_SQL_PRIMARY_FINAL TKPPSPF 
WHERE  payroll_year = 2006
AND category_code =114201
GROUP BY odvětví;


-- poslední srovnatelné období 2018: Chléb

SELECT 
round(AVG (DISTINCT hruba_mzda), 0),
odvětví,
payroll_year,
potraviny,
category_code,
cena,
množství,
round((AVG (DISTINCT hruba_mzda)) / cena) * množství,
jednotky
FROM T_KRISTYNA_POPOVA_PROJECT_SQL_PRIMARY_FINAL TKPPSPF 
WHERE  payroll_year = 2018
AND category_code =111301
GROUP BY odvětví;

-- poslední srovnatelné období 2018: Mléko

SELECT 
round(AVG (DISTINCT hruba_mzda), 0),
odvětví,
payroll_year,
potraviny,
category_code,
cena,
množství,
round((AVG (DISTINCT hruba_mzda)) / cena) * množství,
jednotky
FROM T_KRISTYNA_POPOVA_PROJECT_SQL_PRIMARY_FINAL TKPPSPF 
WHERE  payroll_year = 2018
AND category_code =114201
GROUP BY odvětví;








