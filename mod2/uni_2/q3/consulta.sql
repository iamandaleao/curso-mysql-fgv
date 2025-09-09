/* Pesquise novamente a taxa de mortalidade infantil e de natalidade nos seis menores países da Europa, em termos de extensão territorial, no ano 2000. Agora, você deve executar INNER JOIN entre child_mortality e population e LEFT JOIN entre child_mortality e fertility. Explique se esta operação muda o resultado.

Gabarito: */

SELECT cm.country, 
	     cm.tot_deaths, 
	     p.tot_pop, 
	     f.mean_babies
FROM child_mortality cm
JOIN population p ON cm.country = p.country 
	AND cm.ref_year = p.ref_year
LEFT JOIN fertility f ON cm.country = f.country 
AND cm.ref_year = f.ref_year
WHERE cm.country IN ('Andorra', 'Holy See', 'Liechtenstein', 'Malta', 'Monaco', 'San Marino')
AND cm.ref_year= 2000;	
			
/* Comentário:

O resultado continua o mesmo: A explicação é que todos os países da consulta estão presentes nas tabelas child_mortality e population, permitindo que o INNER JOIN funcione corretamente entre elas. O problema ocorre nos dados da tabela fertility, o que exige o uso de um LEFT JOIN apenas para ela.
*/
