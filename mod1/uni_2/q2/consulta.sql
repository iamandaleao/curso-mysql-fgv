-- Questão 2 - Na tabela child_mortality, indique se há linhas com valores nulos no campo tot_deaths.

-- Gabarito:

SELECT *
FROM child_mortality
WHERE tot_deaths IS NULL;

-- Comentário: Há 1800 linhas com valores nulos em tot_deaths

-- Como na questão anterior, para testar se uma determinada coluna de uma tabela é nula, utilizamos o operador IS NULL. Se fizermos gdp_pc = NULL, nenhuma linha será retornada. Da mesma forma, se fizermos gdp_pc <> NULL também não haverá retorno de linhas.
