/*
Questão 3
Selecione, apenas para o Brasil, os dados de renda per capita diária, PIB, população, mortalidade infantil, fertilidade e expectativa de vida, abrangendo o período de 1900 a 2020, a cada 10 anos (1900, 1910, 1920, ..., 2020).
*/

Gabarito:

SELECT ai.ref_year, 
	ai.mean_usd, 
	p.tot_pop, 
	cm.tot_deaths, 
	f.mean_babies, 
	le.tot_years
FROM avg_income ai
JOIN gdp_pc gp ON ai.country = gp.country 
	AND ai.ref_year = gp.ref_year
JOIN population p ON ai.country = p.country 
	AND ai.ref_year = p.ref_year
JOIN child_mortality cm ON ai.country = cm.country 
	AND ai.ref_year = cm.ref_year
JOIN fertility f ON ai.country = f.country 
	AND ai.ref_year = f.ref_year
JOIN life_expectancy le ON ai.country = le.country 
	AND ai.ref_year = le.ref_year
WHERE ai.country = 'Brazil'
AND ai.ref_year in (1900, 1910, 1920, 1930, 1940, 1950, 1960, 1970, 1980, 1990, 2000, 2010,2020)
ORDER BY ai.ref_year;	

/*
Observe que a taxa de mortalidade apresentou uma queda constante ao longo das décadas, enquanto a renda média diária cresceu de forma consistente. Os outros indicadores apresentaram oscilações, como o PIB per capita, que aumentou a cada década, mas registrou uma diminuição entre 1980 e 1990, bem como entre 2010 e 2020. A taxa de fertilidade, pela sua vez, foi crescente de 1900 até 1960, mas caiu de maneira acentuada nas décadas subsequentes.

Para responder a esta questão, realizamos uma junção interna (INNER JOIN) entre diversas tabelas, uma vez que as informações que buscávamos estão distribuídas por elas. É importante notar que, ao efetuar a junção, sempre igualamos os campos country e ref_year de cada tabela na cláusula ON, pois esses campos constituem a chave primária composta de todas as tabelas. Começamos incluindo a tabela avg_income no FROM, a qual apelidamos de ai, e, em seguida, realizamos o JOIN com as tabelas subsequentes, referindo-nos a avg_income pelo apelido ai.

Como desejávamos os dados apenas do Brasil, filtramos a tabela avg_income usando a condição country = 'Brazil'. Isso garante que todas as junções retornem dados apenas do Brasil, já que o INNER JOIN traz somente as linhas que apresentam correspondência.

Outro aspecto importante é que apelidamos todas as tabelas e utilizamos esses apelidos sempre que referenciamos um campo, a fim de evitar ambiguidades, já que os campos country e ref_year estão presentes em todas as tabelas. Também mantivemos os apelidos para campos que existem em apenas uma tabela, como a maioria dos campos da cláusula SELECT, para aumentar a legibilidade da consulta e facilitar a identificação da origem de cada campo.

Por fim, listamos os anos de 10 em 10 e utilizamos o operador IN para selecionar apenas as linhas referentes ao período desejado.
*/
