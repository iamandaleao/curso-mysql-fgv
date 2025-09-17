-- Questão 5 - Remova as linhas do Brasil na tabela men_years_at_school que têm datas entre 2010 e 2018. Em seguida, realize um SELECT * para o Brasil, abrangendo os anos de 2009 a 2020, para verificar o resultado.

-- Gabarito:

DELETE
FROM men_years_at_school
WHERE ref_year BETWEEN 2010 AND 2018
AND country = 'Brazil';
    	
-- Comentário: Agora, nove linhas foram atualizadas. Para verificar o resultado, realizamos uma query:

SELECT *
FROM men_years_at_school
WHERE ref_year BETWEEN 2018 AND 2020
AND country = 'Brazil';
	
-- Apenas as linhas de 2009 para trás permaneceram, conforme desejado. As linhas de 2010 a 2018 foram deletadas, pois esse foi o critério definido na cláusula WHERE do comando DELETE. Realizamos o SELECT a partir de 2009 para confirmar que as linhas removidas estavam realmente entre 2010 e 2018 e que a linha de 2009 permaneceu na base.
