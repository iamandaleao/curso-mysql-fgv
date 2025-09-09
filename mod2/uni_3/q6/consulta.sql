/*
Questão 6 - Indique quais são as linhas comuns entre as tabelas co2_emissions_pc e men_years_at_school.
*/

SELECT country, ref_year
FROM co2_emissions_pc
INTERSECT
SELECT country, ref_year
FROM men_years_at_school;
