/*Questão 1
Pesquise a taxa de mortalidade infantil e de natalidade nos seis menores países da Europa, em termos de extensão territorial (Andorra, Liechtenstein, Malta, Mônaco, San Marino e Vaticano – Holy See), no ano 2000. Utilize as tabelas child_mortality e fertility, nesta ordem, e inclua na consulta os campos tot_deaths e mean_babies. Para isso, utilize a cláusula LEFT JOIN.*/

Gabarito:

SELECT cm.country, 
	cm.tot_deaths, 
	f.mean_babies
FROM child_mortality cm LEFT JOIN fertility f 
ON cm.country = f.country 
	AND cm.ref_year = f.ref_year
WHERE cm.country IN ( 'Andorra', 'Holy See', 'Liechtenstein', 'Malta', 'Monaco', 'San Marino'
AND cm.ref_year= 2000;	

/*Comentário:

O resultado é:
Andorra	2000	6.41	
Holy See	2000	37.4	
Liechtenstein	2000	11.5	
Monaco	2000	5.16	
Malta	2000	7.59	1.67
San Marino	2000	6.07	

Exceto por Malta, os demais países não possuem dados na tabela fertility. Se utilizássemos um INNER JOIN, apenas a linha de Malta seria retornada na consulta. Curiosamente, a taxa de mortalidade infantil do Vaticano é bastante elevada.*/
