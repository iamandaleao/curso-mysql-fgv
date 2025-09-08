/* Questão 2 - Pesquise novamente a taxa de mortalidade infantil e de natalidade nos seis menores países da Europa, em termos de extensão territorial, no ano 2000, utilizando as tabelas child_mortality e fertility, nesta ordem, e incluindo na consulta os campos tot_deaths e mean_babies. Além disso, inclua a população total dos países. Para isso, execute dois LEFT JOINs.

Gabarito: */

SELECT cm.country, 
	cm.tot_deaths, 
	p.tot_pop, 
	f.mean_babies
FROM child_mortality cm
LEFT JOIN population p ON cm.country = p.country 
	AND cm.ref_year = p.ref_year
LEFT JOIN fertility f ON cm.country = f.country 
	AND cm.ref_year = f.ref_year
WHERE cm.country IN ('Andorra', 'Holy See', 'Liechtenstein', 'Malta', 'Monaco', 'San Marino')
AND cm.ref_year= 2000;	

/* Comentário:

O resultado é: 

Andorra	6.41	66100	
Holy See	37.4	779	
Liechtenstein	11.5	33000	
Monaco	5.16	32500	
Malta	7.59	399000	1.67
San Marino	6.07	26800	


Ao incluir o dado de população, percebemos que a alta taxa de mortalidade infantil no Vaticano está ligada ao seu reduzido número de habitantes. No entanto, essa discrepância sugere que pode haver um erro nos dados.
*/

