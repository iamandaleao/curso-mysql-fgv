-- Questão 4 - Utilizando a tabela life_expectancy e o campo tot_years, indique qual a expectativa de vida do brasileiro nos anos de 2019 a 2023. Liste os valores, observe o que ocorreu e comente as prováveis causas.

-- Gabarito:

SELECT country, ref_year, tot_years
FROM life_expectancy
WHERE ref_year BETWEEN 2019 AND 2023
	AND country = 'Brazil';
					
-- Comentário: A expectativa de vida em 2019 era de 75,8 anos. Em 2020, caiu para 74,5 anos e, em 2021, para 73,2 anos. Em 2022, houve uma recuperação, alcançando 73,9 anos, e em 2023, subiu para 76,7 anos. Essa redução na expectativa de vida durante o período foi, provavelmente, causada pelo aumento de óbitos decorrentes da pandemia de covid-19.

-- Assim como na questão anterior, é importante lembrar que o operador BETWEEN estabelece uma faixa de valores com a qual a variável em questão será comparada. Neste caso, todas as linhas referentes ao Brasil serão retornadas devido ao filtro aplicado ao país.

-- Os anos válidos para a consulta são 2019, 2020, 2021, 2022 e 2023. Observe o uso do operador AND. Neste contexto, a linha será retornada apenas se o país for o Brazil e o ano estiver dentro da faixa especificada. Ou seja, ambas as condições precisam ser atendidas para que a linha apareça nos resultados.
