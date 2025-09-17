-- Questão 2 - Atualize os valores nulos do Brasil na tabela men_years_at_school, definindo o mesmo valor de 2018 (7,8) para os anos de 2019 e 2020. Certifique-se de especificar o país na cláusula WHERE para evitar a atualização dos dados da Argentina. Em seguida, execute um SELECT * para o Brasil entre 2009 e 2020 para verificar o resultado.

Gabarito:

UPDATE men_years_at_school
SET mean_years = 7.8
WHERE country = 'Brazil'
AND ref_year IN (2019, 2020);

-- Comentário: O resultado mostra que duas linhas foram atualizadas. Para verificar o resultado, execute uma query.

SELECT *
FROM men_years_at_school
WHERE country = 'Brazil'
AND ref_year BETWEEN 2018 AND 2020
ORDER BY ref_year;
    
-- Agora, os anos de 2019 e 2020 não possuem mais valores NULL, apresentando o mesmo valor de 2018.

-- O UPDATE altera a coluna especificada na cláusula SET da tabela indicada em FROM, aplicando as mudanças apenas nas linhas filtradas pela cláusula WHERE. É importante ressaltar que, sem a cláusula WHERE, todas as linhas da tabela seriam atualizadas, comprometendo os dados.

-- Retorno da query:
Brazil	2018	7.8
Brazil	2019	7.8
Brazil	2020	7.8
