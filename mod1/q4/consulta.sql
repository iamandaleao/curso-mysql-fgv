-- Questão 4 - Selecione, da tabela gdp_pc, o PIB per capita dos países no ano de 2017. Indique qual o valor de Mônaco.

SELECT country, gdp_pc
FROM gdp_pc
WHERE ref_year = 2017 AND country = 'Monaco'

-- Comentário: O PIB per capita de Mônaco em 2017 é de 201 mil USD, ajustado pela paridade do poder de compra de 2017.

-- Para obter esta informação, vamos à tabela gdp_pc e dela selecionamos as colunas country e gdp_pc. E, então, filtramos as linhas pela coluna ref_year = 2017.
