-- Questão 3 - Consulte a tabela co2_emissions_pc e calcule a soma das emissões de CO2 pelas regiões da classificação do Banco Mundial (campo wb_regions da tabela country) em 2022. Como a tabela co2_emissions_pc traz as emissões per capita, não se esqueça de multiplicar a emissão pela população (tabela population) antes de somar. Divida o resultado por 109 para convertê-lo em gigatoneladas e arredonde para duas casas decimais. Ordene pelo total de emissões calculado, do maior para o menor.

-- Gabarito:

SELECT c.wb_regions, 
	ROUND(SUM (p.tot_pop * cep.co2_pc) / 1E9, 2) AS tot_giga_co2
FROM co2_emissions_pc cep
JOIN country c ON cep.country = c.country 
JOIN population p ON cep.country = p.country 
	AND cep.ref_year = p.ref_year
WHERE cep.ref_year BETWEEN 2022 
GROUP BY c.wb_regions
ORDER BY tot_giga_co2 DESC;

/* Comentário:

Como esperado, as regiões mais industrializadas apresentam maiores emissões. A América do Norte ocupa a terceira posição, mas se você substituir a soma pela média, verá que a região sobe para o primeiro lugar, enquanto a Europa desce para a quinta posição. Experimente fazer o teste.


Neste exercício, agrupamos usando GROUP BY em uma única coluna, wb_regions, para calcular a média de emissões por região. Além disso, ordenamos os resultados com ORDER BY DESC pela soma calculada, a fim de identificar os maiores emissores em 2022.

Observe que realizamos várias operações aritméticas no SELECT para obter o valor desejado: multiplicamos tot_pop por co2_pc para estimar o total de emissões, já que a tabela co2_emissions_pc contém as emissões per capita de cada país. Em seguida, somamos os resultados agrupando por região, dividimos o total por 109 para convertê-lo em gigatoneladas e arredondamos o resultado para duas casas decimais utilizando a função ROUND.*/
