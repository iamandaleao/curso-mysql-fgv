-- Questão 5 - Selecione, apenas para o Brasil, os dados de renda per capita diária, PIB, população, mortalidade infantil, fertilidade e expectativa de vida, abrangendo o período de 1900 a 2020, a cada 10 anos (1900, 1910, 1920, ..., 2020), utilizando a cláusula NATURAL JOIN. Confira se os resultados foram iguais aos obtidos na questão 3.

SELECT 
    ref_year,
    mean_usd,
    gdp_pc,
    tot_pop,
    tot_deaths,
    mean_babies,
    tot_years
FROM population
NATURAL JOIN child_mortality
NATURAL JOIN avg_income
NATURAL JOIN gdp_pc
NATURAL JOIN fertility
NATURAL JOIN life_expectancy
WHERE country = 'Brazil'
  AND ref_year % 10 = 0
  AND ref_year BETWEEN 1900 AND 2020
ORDER BY ref_year;

/* Comentário:

O resultado é o mesmo: Repetimos a consulta da questão 3 substituindo o INNER JOIN (lembrando que a palavra INNER é opcional) por NATURAL JOIN. Com isso, a query ficou muito mais simplificada, pois eliminamos a cláusula ON e a tarefa de igualar as chaves primária e estrangeira. A junção natural combina automaticamente os campos com o mesmo nome de ambas as tabelas de maneira implícita. No entanto, é essencial ter um bom entendimento da estrutura de ambas as tabelas ao usar NATURAL JOIN para evitar resultados indesejados. */
