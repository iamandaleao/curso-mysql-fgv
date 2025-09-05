-- Questão 1 - Utilizando a tabela country, o campo four_regions igual a asia e a tabela man_years_at_school, encontre os cinco países asiáticos cujos homens de 25 anos passaram menos tempo na escola em 2009.


-- Gabarito:

SELECT my.country, 
	     my.mean_years
FROM men_years_at_school my
JOIN country c ON my.country = c.country, 
WHERE my.ref_year = 2009
	AND c.four_regions= 'asia'
ORDER BY my.mean_years
LIMIT 5;	
			
/*
 Comentário:
Os cinco países são:
 
Afghanistan	2.6
Timor-Leste	3.1
Yemen	3.6
Maldives	4.1
Nepal	4.2

Nesta questão, precisávamos buscar dados em duas tabelas: men_years_at_school, que contém as informações de escolaridade que desejamos, e country, na qual podemos identificar se o país pertence à Ásia. Para fazer a junção, utilizamos o campo country, que é a chave primária na tabela country, e o campo country, que atua como chave estrangeira na tabela men_years_at_school. Empregamos um INNER JOIN, que combina apenas as linhas em que há correspondência em ambas as tabelas.
*/
