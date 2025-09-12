-- Questão 6 - Indique quais são as linhas comuns entre as tabelas co2_emissions_pc e men_years_at_school.


SELECT country, ref_year
FROM co2_emissions_pc
INTERSECT
SELECT country, ref_year
FROM men_years_at_school;

-- Comentário: Confirmamos que, de 2000 a 2009, ambas as tabelas possuem dados do Brasil.

/* 
Na questão anterior, analisamos os anos referentes ao Brasil que estão presentes na tabela co2_emissions_pc, mas não na tabela men_years_at_school, utilizando a operação de diferença (EXCEPT). Agora, buscamos os anos que aparecem em ambas as tabelas, realizando uma operação de interseção (INTERSECT). Assim como antes, é necessário que os nomes das colunas sejam idênticos.
*/
