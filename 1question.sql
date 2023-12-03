
-- Rostou v průběhu let mzdy ve všech odvětvích, nebo v některých klesají?

-- Zemědělství, lesnictví, rybářství
SELECT
	hruba_mzda,
	odvětví,
	payroll_year,
	industry_branch_code
FROM
	t_kristyna_popova_project_sql_primary_final tab1
WHERE
	industry_branch_code = 'A'
GROUP BY
payroll_year 
ORDER BY hruba_mzda ASC;

-- Těžba a dobývání 
SELECT
	hruba_mzda,
	odvětví,
	payroll_year,
	industry_branch_code
FROM
	t_kristyna_popova_project_sql_primary_final tab1
WHERE
	industry_branch_code = 'B'
GROUP BY
	payroll_year 
ORDER BY hruba_mzda ASC;

-- Zpracovatelský průmysl 
SELECT
	hruba_mzda,
	odvětví,
	payroll_year,
	industry_branch_code
FROM
	t_kristyna_popova_project_sql_primary_final tab1
WHERE
	industry_branch_code = 'C'
GROUP BY
	payroll_year 
ORDER BY hruba_mzda ASC;

-- Výroba a rozvod elektřiny, plynu 
SELECT
	hruba_mzda,
	odvětví,
	payroll_year,
	industry_branch_code
FROM
	t_kristyna_popova_project_sql_primary_final tab1
WHERE
	industry_branch_code = 'D'
GROUP BY
	payroll_year 
ORDER BY hruba_mzda ASC;

-- Zásobování vodou, činnosti související s odpady a sanacemi 
SELECT
	hruba_mzda,
	odvětví,
	payroll_year,
	industry_branch_code
FROM
	t_kristyna_popova_project_sql_primary_final tab1
WHERE
	industry_branch_code = 'E'
GROUP BY
	payroll_year 
ORDER BY hruba_mzda ASC;

-- Stavebnictví 
SELECT
	hruba_mzda,
	odvětví,
	payroll_year,
	industry_branch_code
FROM
	t_kristyna_popova_project_sql_primary_final tab1
WHERE
	industry_branch_code = 'F'
GROUP BY
	payroll_year 
ORDER BY hruba_mzda ASC;

-- Velkoobchod a maloobchod, opravy a údržba motorových vozidel 
SELECT
	hruba_mzda,
	odvětví,
	payroll_year,
	industry_branch_code
FROM
	t_kristyna_popova_project_sql_primary_final tab1
WHERE
	industry_branch_code = 'G'
GROUP BY
	payroll_year 
ORDER BY hruba_mzda ASC;

-- Doprava a skladování 
SELECT
	hruba_mzda,
	odvětví,
	payroll_year,
	industry_branch_code
FROM
	t_kristyna_popova_project_sql_primary_final tab1
WHERE
	industry_branch_code = 'H'
GROUP BY
	payroll_year 
ORDER BY hruba_mzda ASC;

-- Ubytování, stravování a pohostinství
SELECT
	hruba_mzda,
	odvětví,
	payroll_year,
	industry_branch_code
FROM
	t_kristyna_popova_project_sql_primary_final tab1
WHERE
	industry_branch_code = 'I'
GROUP BY
	payroll_year 
ORDER BY hruba_mzda ASC;

-- Informační a komunikační činnosti 
SELECT
	hruba_mzda,
	odvětví,
	payroll_year,
	industry_branch_code
FROM
	t_kristyna_popova_project_sql_primary_final tab1
WHERE
	industry_branch_code = 'J'
GROUP BY
	payroll_year 
ORDER BY hruba_mzda ASC;

-- Peněžnictví a pojišťovnictví
SELECT
	hruba_mzda,
	odvětví,
	payroll_year,
	industry_branch_code
FROM
	t_kristyna_popova_project_sql_primary_final tab1
WHERE
	industry_branch_code = 'K'
GROUP BY
	payroll_year 
ORDER BY hruba_mzda ASC;

-- Činnosti v oblasti nemovitostí
SELECT
	hruba_mzda,
	odvětví,
	payroll_year,
	industry_branch_code
FROM
	t_kristyna_popova_project_sql_primary_final tab1
WHERE
	industry_branch_code = 'L'
GROUP BY
	payroll_year 
ORDER BY hruba_mzda ASC;

-- Profesní, vědecké a technické činnosti
SELECT
	hruba_mzda,
	odvětví,
	payroll_year,
	industry_branch_code
FROM
	t_kristyna_popova_project_sql_primary_final tab1
WHERE
	industry_branch_code = 'M'
GROUP BY
	payroll_year 
ORDER BY hruba_mzda ASC;

-- Administrativní a podpůrné činnosti
SELECT
	hruba_mzda,
	odvětví,
	payroll_year,
	industry_branch_code
FROM
	t_kristyna_popova_project_sql_primary_final tab1
WHERE
	industry_branch_code = 'N'
GROUP BY
	payroll_year 
ORDER BY hruba_mzda ASC;

-- Veřej ná správa a obrana, povinné sociální zabezpečení 
SELECT
	hruba_mzda,
	odvětví,
	payroll_year,
	industry_branch_code
FROM
	t_kristyna_popova_project_sql_primary_final tab1
WHERE
	industry_branch_code = 'O'
GROUP BY
	payroll_year 
ORDER BY hruba_mzda ASC;

-- Vzdělávání 
SELECT
	hruba_mzda,
	odvětví,
	payroll_year,
	industry_branch_code
FROM
	t_kristyna_popova_project_sql_primary_final tab1
WHERE
	industry_branch_code = 'P'
GROUP BY
	payroll_year 
ORDER BY hruba_mzda ASC;

-- Zdravotní a sociální péče 
SELECT
	hruba_mzda,
	odvětví,
	payroll_year,
	industry_branch_code
FROM
	t_kristyna_popova_project_sql_primary_final tab1
WHERE
	industry_branch_code = 'Q'
GROUP BY
	payroll_year 
ORDER BY hruba_mzda ASC;

-- Kulturní, zábavní a rekreační činnosti
SELECT
	hruba_mzda,
	odvětví,
	payroll_year,
	industry_branch_code
FROM
	t_kristyna_popova_project_sql_primary_final tab1
WHERE
	industry_branch_code = 'R'
GROUP BY
	payroll_year 
ORDER BY hruba_mzda ASC;

-- Ostatní činnosti
SELECT
	hruba_mzda,
	odvětví,
	payroll_year,
	industry_branch_code
FROM
	t_kristyna_popova_project_sql_primary_final tab1
WHERE
	industry_branch_code = 'S'
GROUP BY
	payroll_year 
ORDER BY hruba_mzda ASC;