-- Questão 8 - Utilizando a tabela co2_emissions_pc e o operador IN, indique as emissões de CO2 no Brasil, na China e nos Estados Unidos, de 2019 a 2021. Compartilhe as suas observações sobre a pesquisa.

Gabarito:

SELECT country, ref_year, co2_pc
FROM co2_emissions_pc
WHERE country IN ( 'Brazil', 'China','USA')
	AND ref_year BETWEEN 2019 AND 2021;

-- Comentário: O resultado é o mesmo, mas a query fica mais simples.
-- Nesta consulta, o operador IN verifica se o país está presente na lista fornecida. Se essa condição for verdadeira, a consulta então avalia se o ano está dentro da faixa especificada. Caso ambas as condições sejam satisfeitas, a linha será incluída no resultado.

-- Observe que o uso do operador IN torna a query SQL muito mais simples do que se fosse utilizado o operador OR. Além disso, a consulta tende a ter um desempenho melhor, o que é crucial ao realizar pesquisas em tabelas extensas.
