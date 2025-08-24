-- Questão 10 - Utilizando a tabela country, selecione os países do continente asiático segundo a classificação de oito regiões (coluna eight_regions). Além da coluna country, traga as colunas eight_regions e wb_regions para comparação.

-- Gabarito:

SELECT country, eight_regions, wb_regions
FROM country
WHERE eight_regions LIKE '%asia%';
					
-- Comentário: As 10 primeiras linhas do resultado estão apresentadas a seguir. Observe que há duas classificações para a Ásia no campo eight_regions e três no campo wb_regions.

-- Ao verificar os valores possíveis na tabela para a coluna eight_regions, nota-se que há duas classificações para a Ásia: east_asia_pacific e asia_west. Se tivéssemos essa informação previamente, teria sido mais eficiente realizar a consulta utilizando o operador IN. No entanto, em uma situação em que o número de classificações diferentes seja muito grande, listar todos os valores no comando SQL pode se tornar excessivamente trabalhoso. Nesse contexto, é mais adequado utilizar o operador LIKE, que busca pela existência de uma string (conjunto de caracteres) dentro de outra string. No caso em questão, estamos utilizando '%asia%' para procurar pela palavra asia em qualquer parte da string.
