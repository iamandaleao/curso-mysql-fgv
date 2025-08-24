-- Questão 7 - Utilizando a tabela country, selecione os países europeus de renda média baixa. Use a classificação Gapminder de oito regiões geográficas (campo eight_regions com valor europe_east e europe_west), para verificar os países, e a classificação de quatro faixas de renda do Banco Mundial (campo wb4income com o valor Lower middle income), para verificar a renda. Indique se todos os países são do leste europeu.

-- Gabarito:
SELECT country, eight_regions
FROM country
WHERE (eight_regions = 'europe_east' 
	OR eight_regions = 'europe_west')
  	AND wb4income = 'Lower middle income'

-- Comentário: Sim, todos os quatro países são do leste europeu.
-- Assim como na questão anterior, esta também aborda a ordem de avaliação das expressões lógicas. Se não houvesse parênteses, a consulta retornaria todos os países do Leste Europeu, em vez de apenas aqueles com renda média baixa. Para os países da Europa Ocidental, a consulta funcionaria conforme o esperado. Os parênteses garantem que o seu conteúdo seja avaliado primeiro, ou seja, que a consulta verifique se o país pertence ao Leste Europeu ou à Europa Ocidental. Se essa condição for verdadeira, a consulta então verificará se o país é classificado como de renda média baixa. Caso ambas as condições sejam verdadeiras, a linha será incluída no resultado da consulta.
