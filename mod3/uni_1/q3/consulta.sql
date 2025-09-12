-- Questão 3 - Consulte novamente a taxa de mortalidade infantil do Brasil em porcentagem, sem utilizar o operador IN para listar os anos, mas realizando um cálculo que inclua o período de 1910 a 2020 em intervalos de 10 anos.

-- Gabarito:

SELECT cm.ref_year, 
	cm.tot_deaths, 
	100 * cm.tot_deaths / 1000 AS percent_deaths
FROM child_mortality cm
WHERE cm.ref_year BETWEEN 1910 AND 2020;
	AND cm.ref_year %10 = 0
	AND cm.country = 'Brazil'
ORDER BY cm.ref_year;
			
/* Comentário: Obtemos o mesmo resultado anterior:

1910	410	41
1920	400	40
1930	391	39
1940	315	31
1950	212	21
1960	169	16
1970	133	13
1980	96.3	9.63
1990	63	6
2000	34.8	3.48
2010	18.7	1.87
2020	13.5	1.35

Nesta consulta, aplicamos um truque matemático para evitar a necessidade de listar todos os anos: 
realizamos a operação de resto da divisão, selecionando apenas aqueles em que cm.ref_yea r % 10 = 0, ou seja, os anos divisíveis por 10. No entanto, precisávamos limitar o período usando o BETWEEN, pois a tabela contém dados anteriores a 1910.
*/

