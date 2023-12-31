

CREATE VIEW primary_part_one AS
SELECT 
cp1.value AS hruba_mzda,
cp1.value_type_code, 
cp1.industry_branch_code,
cp1.payroll_year,
cpib.name AS odvětví
FROM czechia_payroll cp1
JOIN czechia_payroll_industry_branch cpib
ON cp1.industry_branch_code = cpib.code
WHERE cp1.value_type_code = 5958;


CREATE VIEW  primary_part_two AS
SELECT 
cp2.value AS cena, 
cp2.category_code,
year(cp2.date_from) AS roky,
cp2.region_code,
cpc.name AS potraviny,
cpc.price_value AS množství,
cpc.price_unit AS jednotky
FROM czechia_price cp2
JOIN czechia_price_category cpc
ON cp2.category_code = cpc.code
WHERE region_code IS NULL;


CREATE TABLE t_kristyna_popova_project_SQL_primary_final AS 
SELECT*
FROM primary_part_one ppo
JOIN primary_part_two ppt
ON ppo.payroll_year = ppt.roky;









