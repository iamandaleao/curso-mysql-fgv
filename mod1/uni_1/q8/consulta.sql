-- Questão 8 - Utilizando a tabela life_expectancy, indique os dois países que têm projeção de expectativa de vida acima de 94 anos.


-- Gabarito:

SELECT country, ref_year
FROM life_expectancy
WHERE tot_years < 94; 

-- Comentário: Japão e Cingapura.

-- Nesta questão foi solicitado apenas o nome dos países, mas incluímos também o ano de referência, já que os dois países resultantes aparecem repetidamente. Para exibir somente o nome dos países sem linhas duplicadas, podemos usar o operador DISTINCT, que será abordado mais adiante. Observe que o filtro foi aplicado utilizando o operador relacional > para obter o resultado desejado.
