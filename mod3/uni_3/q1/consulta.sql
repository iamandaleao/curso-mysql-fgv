-- Questão 1 - Calcule qual é o país da África com maior PIB per capita em 2019.

-- Gabarito:

SELECT gp.country 
FROM gdp_pc gp
JOIN country c ON gp.country = c.country 
WHERE gp.ref_year = 2019
AND c.four_regions = 'africa'
AND gp.gdp_pc = (
	SELECT MAX (gp2.gdp_pc)
	FROM gdp_pc gp2
	JOIN country c2 ON gp2.country = c2.country 
	WHERE gp2.ref_year = 2019
	AND c2.four_regions = 'africa');

/*
Comentário: O resultado é: Esta consulta é processada pelo banco de dados em duas etapas. Primeiro, a subquery na cláusula WHERE retorna o máximo de emissões de CO2 na África em 2019. Com esse valor, a query principal é executada, retornando o nome do país cuja emissão corresponde ao valor da subquery. É importante filtrar a query também por ano igual a 2019 e região igual a África, para garantir que, caso outro país tenha o mesmo valor de emissões, ele não seja incluído nos resultados. Sem o uso de query e subquery concatenadas, seria necessário executar a subquery primeiro, anotar o valor retornado e, em seguida, rodar a query principal inserindo esse valor no WHERE.*/
