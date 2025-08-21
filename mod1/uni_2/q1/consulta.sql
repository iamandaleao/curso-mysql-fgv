-- Questão 1 - Indique se há linhas com valores nulos no campo gdp_pc na tabela gdp_pc.

-- Gabarito:

SELECT *
FROM cgdp_pc gp
WHERE cgdp_pc IS NULL;

-- Comentário: Não há linhas com gdp_pc nulo

-- Para testar se uma determinada coluna de uma tabela é nula, utilizamos o operador IS NULL. Lembre-se de que sempre nada é igual a NULL ou diferente de NULL. Se fizermos gdp_pc = NULL, nenhuma linha será retornada. Da mesma forma, se fizermos gdp_pc <>NULL também não haverá retorno de linhas.
