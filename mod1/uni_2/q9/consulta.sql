-- Questão 9 - Utilizando a tabela country e o operador IN, selecione os países europeus de renda média baixa. Use a classificação Gapminder de 8 regiões geográficas (campo eight_regions com valor europe_east e europe_west), para verificar os países, e a classificação de 4 faixas de renda do Banco Mundial (campo wb4income com o valor Lower middle income), para verificar a renda. Indique se todos os países são do leste europeu.

-- Gabarito:

SELECT country, eight_regions
FROM country
WHERE eight_regions IN ('europe_east', 'europe_west')
	AND wb4income = 'Lower middle income';
					
-- Comentário: Novamente, o resultado é o mesmo. Similar à questão anterior, o operador IN simplifica a escrita da consulta SQL comparado ao uso do operador OR.
