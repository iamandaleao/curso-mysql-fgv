-- Questão 5 - Consulte a taxa de mortalidade infantil e de natalidade, no ano 2000, de algumas ilhas caribenhas: Aruba, Cuba, Dominica, Martinica (Martinique) e Porto Rico (Puerto Rico). Use as tabelas fertility e child_mortality. Observe que é necessário utilizar um FULL JOIN para retornar todos os países na consulta.

-- Gabarito:

SELECT f.country, 
	cm.country, 
	cm.tot_deaths, 
	f.mean_babies
FROM fertility f
FULL JOIN child_mortality cm ON cm.country = f.country 
	AND cm.ref_year = f.ref_year
WHERE f.country IN ( 'Aruba', 'Martinique', 'Puerto Rico', 'Dominica', 'Cuba')
WHERE cm.country IN ( 'Aruba', 'Martinique', 'Puerto Rico', 'Dominica', 'Cuba')
AND (f.ref_year= 2000
OR cm.ref_year= 2000);

-- Comentário: Um INNER JOIN retornaria apenas Cuba. Um LEFT JOIN traria Aruba, Cuba, Martinica e Porto Rico. Já um RIGHT JOIN incluiria apenas Cuba e Dominica. Por isso, foi necessário utilizar um FULL JOIN para garantir que todos os países fossem incluídos na consulta.
