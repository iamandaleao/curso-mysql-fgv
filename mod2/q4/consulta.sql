/* Questão 4 - A partir da tabela country, com o campo four_regions igual a asia, e da tabela man_years_at_school, encontre os cinco países asiáticos cujos homens de 25 anos passaram menos tempo na escola em 2009, utilizando a cláusula NATURAL JOIN. Confira se os resultados foram iguais aos obtidos na questão 1.*/

-- Gabarito:

SELECT my.country, 
	my.mean_years
FROM men_years_at_school my
NATURAL JOIN country c 
WHERE my.ref_year = 2009
	AND c.four_regions = 'asia'
ORDER BY my.mean_years
LIMIT 5;	
			
/*
Comentário:

Afghanistan	2.6
Timor-Leste	3.1
Yemen	3.6
Maldives	4.1
Nepal	4.2

O resultado é o mesmo: Repetimos a consulta da questão 1 substituindo o INNER JOIN (lembrando que a palavra INNER é opcional) por NATURAL JOIN. Com isso, podemos eliminar a cláusula ON e a necessidade de igualar as chaves primária e estrangeira, pois a junção natural combina automaticamente os campos com o mesmo nome de ambas as tabelas de maneira implícita. Portanto, é fundamental entender a estrutura de ambas as tabelas ao utilizar NATURAL JOIN para evitar resultados indesejados.
*/
