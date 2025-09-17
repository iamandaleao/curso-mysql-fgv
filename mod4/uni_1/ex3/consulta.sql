-- Questão 3 - Atualize os valores nulos da Argentina na tabela men_years_at_school com a média dos valores de 2011 a 2020. Neste caso, utilize uma subquery para calcular a média, abrangendo o período de 2017 a 2020, e assegure-se de que apenas os valores nulos sejam atualizados. Em seguida, execute um SELECT * para a Argentina no intervalo de 2016 a 2020 para verificar o resultado.


-- Gabarito:

UPDATE men_years_at_school
SET mean_years = ( 
    SELECT AVG (mean_years)
    FROM men_years_at_school
    WHERE country = 'Argentina'
    AND ref_year BETWEEN 2011 AND 2020
        )
    WHERE country = 'Argentina'
    AND ref_year BETWEEN 2017 AND 2018
    AND mean_years IS NULL;
    	
-- Comentário: O resultado mostra que duas linhas foram atualizadas. Para verificar o resultado, execute uma query.

-- Conferir os resultados para a Argentina de 2016 a 2020
SELECT *
FROM men_years_at_school
WHERE country = 'Argentina'
  AND ref_year BETWEEN 2016 AND 2020
ORDER BY ref_year;
  	
-- Agora, os anos de 2017 e 2019 não possuem mais valores NULL, mas apresentam a média da década 10,75.

-- Observe que no UPDATE utilizamos a condição mean_years IS NULL para evitar que os anos de 2018 e 2020 fossem alterados. Também aplicamos o filtro BETWEEN 2017 AND 2020 para restringir o efeito da atualização apenas a essas linhas, caso haja outros valores nulos para a Argentina em anos anteriores. Em seguida, realizamos um SELECT apenas para confirmar se a atualização foi realizada corretamente.
