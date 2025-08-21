-- Questão 5 - Utilizando a tabela population, selecione os países cuja população ultrapassou 200 milhões de habitantes em 2023. Use notação científica para representar a população na consulta e indique a população de cada país selecionado nos resultados.

-- Gabarito:

SELECT country, tot_pop
FROM population
WHERE tot_pop > 0.2e9
	AND ref_year = 2023;
					
-- Comentário: A lista de países é: Estamos usando o operador AND para trazer somente as linhas que atendem às duas condições: população total maior que 200 milhões e ano de referência igual a 2023. Observe que optamos por escrever os 200 milhões utilizando notação científica: 0,2E9 equivale à 0,2x109. Mas poderíamos também ter escrito 200000000.
