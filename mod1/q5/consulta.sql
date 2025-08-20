-- Questão 5 - Selecione, da tabela life_expectancy, os países e anos de referência cuja expectativa de vida ao nascer era de 36.5 anos. Indique quais foram os anos em que os nascidos no Chile tinham esta expectativa de vida.

SELECT country, ref_year, tot_years
FROM life_expectancy
WHERE country = 'Chile' AND tot_years = 36.5

-- Comentário: Os nascidos no Chile em 1934, 1935 e 1936 tinham uma expectativa de vida de 36,5 anos, considerando que as condições de mortalidade infantil permanecessem as mesmas ao longo das suas vidas.

-- Verificando a tabela life_expectancy podemos ver que ela possui as colunas country, ref_year e tot_years. Então, listamos country, ref_year na cláusula SELECT, colocamos o nome da tabela na cláusula FROM e filtramos por tot_years = 36.5 na cláusula WHERE.
