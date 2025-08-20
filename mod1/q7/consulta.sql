-- Questão 7 - Utilizando a tabela gdp_pc, indique qual país tem PIB per capita menor do que 400 dólares.

-- Gabarito:

SELECT country, ref_year, gdp_pc
FROM gdp_pc
WHERE gdp_pc < 400; 

-- Comentário: O Sudão do Sul.

-- A questão solicita apenas o nome do país, mas incluímos também o ano de referência, pois o filtro retorna várias linhas em que o Sudão do Sul aparece com PIB per capita inferior a 400. Repare que utilizamos o operador relacional < para realizar o filtro.

-- Você poderia incluir apenas a coluna country na cláusula SELECT, porém, para que a consulta retornasse o país Sudão do Sul uma única vez, seria necessário utilizar o operador DISTINCT, que será abordado posteriormente.
