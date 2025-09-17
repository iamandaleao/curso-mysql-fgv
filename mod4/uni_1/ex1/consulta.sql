-- Questão 1 - A tabela men_years_at_school do nosso banco possui dados apenas até 2009. No entanto, ao pesquisar na base Our World in Data, você encontrou informações mais recentes. Assim, decidiu completar os dados, pelo menos para o Brasil e a Argentina, inserindo as informações da tabela a seguir, incluindo as colunas que não possuem valores. Faça a inserção utilizando apenas um comando INSERT.


+----------------------+------+------+------+------+------+------+------+------+------+------+------+
| ano ref.             | 2010 | 2011 | 2012 | 2013 | 2014 | 2015 | 2016 | 2017 | 2018 | 2019 | 2020 |
+----------------------+------+------+------+------+------+------+------+------+------+------+------+
| média anos Brasil    |  6,7 |  6,8 |  7,0 |  7,1 |  7,2 |  7,3 |  7,5 |  7,6 |  7,8 |      |      |
+----------------------+------+------+------+------+------+------+------+------+------+------+------+
| média anos Argentina | 10,5 | 10,6 | 10,6 | 10,8 | 10,7 | 10,7 | 10,8 |      | 10,9 |      | 10,9 |
+----------------------+------+------+------+------+------+------+------+------+------+------+------+


Gabarito:

INSERT INTO men_years_at_school (country, ref_year, mean_years)
VALUES ('Brazil', 2010, 6.7),
       ('Brazil', 2011, 6.8),
       ('Brazil', 2012, 7.0),
       ('Brazil', 2013, 7.1),
       ('Brazil', 2014, 7.2),
       ('Brazil', 2015, 7.3),
       ('Brazil', 2016, 7.5),
       ('Brazil', 2017, 7.6),
       ('Brazil', 2018, 7.8),
       ('Brazil', 2019, NULL),
       ('Brazil', 2020, NULL),
       ('Argentina', 2010, 10.5),
       ('Argentina', 2011, 10.6),
       ('Argentina', 2012, 10.6),
       ('Argentina', 2013, 10.8),
       ('Argentina', 2014, 10.7),
       ('Argentina', 2015, 10.7),
       ('Argentina', 2016, 10.8),
       ('Argentina', 2017, NULL),
       ('Argentina', 2018, 10.9),
       ('Argentina', 2019, NULL),
       ('Argentina', 2020, 10.9);

-- Comentário: Como resultado, você verá que apenas 22 linhas foram atualizadas. Para verificar o resultado, execute uma query:

SELECT *
FROM men_years_at_school
WHERE ref_year	BETWEEN 2009 AND 2020
AND country IN ('Argentina', 'Brazil')
ORDER BY country, ref_year;

/* O resultado mostra 24 linhas, sendo 22 referentes às inserções que fizemos e as outras duas que já estavam na tabela para o ano de 2009. Realizamos essa consulta apenas para verificar se nada foi corrompido. Note que existem linhas com valor nulo em mean_years, como esperado.

Realizamos um INSERT em massa, adicionando 22 linhas à tabela de uma só vez. Observe que o comando VALUES aparece apenas uma vez, seguido pelos dados de cada linha entre parênteses, com as linhas separadas por vírgulas. Em seguida, executamos um SELECT apenas para verificar se as linhas foram inseridas corretamente.

 Retorno da query:
Argentina	2010	10.5
Argentina	2011	10.6
Argentina	2012	10.6
Argentina	2013	10.8
Argentina	2014	10.7
Argentina	2015	10.7
Argentina	2016	10.8
Argentina	2017	NULL
Argentina	2018	10.9
Argentina	2019	NULL
Argentina	2020	10.9
Brazil	2009	6.8
Brazil	2010	6.7
Brazil	2011	6.8
Brazil	2012	7.0
Brazil	2013	7.1
Brazil	2014	7.2
Brazil	2015	7.3
Brazil	2016	7.5
Brazil	2017	7.6
Brazil	2018	7.8
Brazil	2019	NULL
Brazil	2020	NULL
*/

-- Outro jeito do gabarito mais resumido:

INSERT INTO men_years_at_school (country, year, value) VALUES
('Brazil', 2010, 6.7), ('Brazil', 2011, 6.8), ('Brazil', 2012, 7.0), 
('Brazil', 2013, 7.1), ('Brazil', 2014, 7.2), ('Brazil', 2015, 7.3), 
('Brazil', 2016, 7.5), ('Brazil', 2017, 7.6), ('Brazil', 2018, 7.8), 
('Brazil', 2019, NULL), ('Brazil', 2020, NULL),
('Argentina', 2010, 10.5), ('Argentina', 2011, 10.6), ('Argentina', 2012, 10.6), 
('Argentina', 2013, 10.8), ('Argentina', 2014, 10.7), ('Argentina', 2015, 10.7), 
('Argentina', 2016, 10.8), ('Argentina', 2017, NULL), ('Argentina', 2018, 10.9), 
('Argentina', 2019, NULL), ('Argentina', 2020, 10.9);

