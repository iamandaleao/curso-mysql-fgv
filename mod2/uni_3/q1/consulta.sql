/* Questão 1 - Em uma única consulta, traga os dados de tempo na escola de homens e mulheres nos BRICS (Brazil, Russia, India, China e South Africa) no ano de 2000. Use as tabelas men_years_at_school e woman_years_at_school. Lembre-se de criar uma coluna para distinguir cada um dos gêneros e utilize a cláusula UNION. Indique quem passa mais e menos tempo na escola.

Gabarito:
*/

SELECT m.country, m.mean_years, 'male' as gender
FROM men_years_at_school m
WHERE m.country IN ( 'Brazil', 'Russia', 'China', 'India', 'South Africa')
	AND m.ref_year= 2000	
UNION
SELECT w.country, w.mean_years, 'female' as gender
FROM women_years_at_school w
WHERE w.country IN ( 'Brazil', 'Russia', 'China', 'India', 'South Africa')
	AND w.ref_year= 2000;		

			

/*
Comentário:

O resultado é:

A primeira consulta traz os dados dos homens, e a segunda, das mulheres. O comando UNION une as linhas das duas consultas, eliminando duplicatas. No entanto, se fizéssemos isso sem ajustes, não seria possível distinguir no resultado quais dados são de homens e quais são de mulheres. Por isso, criamos uma nova coluna chamada gender, com o valor fixo male para homens e emale para mulheres. Observe que, para a união ocorrer corretamente, as colunas retornadas pelas duas consultas precisam ter os mesmos nomes, como country, mean_years e gender, tanto na tabela men_years_at_school quanto na tabela woman_years_at_school. A partir dos dados, podemos observar que as mulheres russas passam mais tempo na escola, enquanto as indianas passam menos.

*/
