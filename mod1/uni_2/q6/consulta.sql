-- Utilizando a tabela co2_emissions_pc, indique as emissões de CO2 no Brasil, na China e nos Estados Unidos, de 2019 a 2021. Compartilhe as suas observações sobre a pesquisa.

-- Gabarito:

SELECT country, ref_year, co2_pc
FROM co2_emissions_pc
WHERE (country = 'Brazil'
	OR country = 'China'
	OR country = 'USA')
	AND tref_year BETWEEN 2019 AND 2021;
					
-- Comentário: O Brasil e os Estados Unidos tiveram uma redução nas emissões per capita de CO2 em 2020, seguido de um aumento em 2023, mas sem alcançar os níveis de 2019. Isso aconteceu, possivelmente, devido à diminuição da atividade econômica causada pela pandemia de covid-19. Em contrapartida, a China apresentou um aumento nas emissões durante os três anos analisados.
