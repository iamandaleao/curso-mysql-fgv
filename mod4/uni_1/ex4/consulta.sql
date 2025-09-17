-- Questão 4 - Remova as linhas do Brasil na tabela men_years_at_school em que a data seja maior ou igual a 2019. Em seguida, execute um SELECT * para o Brasil nos anos de 2018 a 2020 para verificar o resultado.

Gabarito:

DELETE
FROM men_years_at_school
WHERE ref_year > = 2019
AND country = 'Brazil';
    	
-- Comentário: Mais uma vez, apenas duas linhas foram atualizadas. Para verificar o resultado, executamos uma query.

SELECT *
FROM men_years_at_school
WHERE ref_year BETWEEN 2018 AND 2020
AND country = 'Brazil';
	
-- Somente as linhas de 2018 e anteriores foram mantidas, conforme planejado. É importante lembrar de incluir a cláusula WHERE no comando DELETE; caso contrário, todas as linhas serão removidas. Realizamos o SELECT de 2018 a 2020 porque apagamos os dados de 2019 e 2020, assim foi necessário garantir que apenas as linhas pretendidas foram excluídas. Se tivéssemos feito o SELECT a partir de 2019, nenhuma linha teria sido retornada, e não saberíamos se 2018 havia sido preservado ou não.
