/* Questão 2 - Indique quais são os países presentes na tabela child_mortality que NÃO estão na tabela fertility.

Gabarito:
*/

SELECT cm.country
FROM child_mortality cm
EXCEPT
SELECT f.country
FROM fertility f;	
			
/*

Comentário:
Os países estão listados a seguir: Nesta consulta, estamos realizando uma operação de diferença de conjuntos. A lista resultante inclui todos os países presentes na tabela child_mortality, mas que não estão na tabela fertility. Os países que aparecem em ambas as tabelas, bem como aqueles presentes apenas na tabela fertility, são excluídos do resultado.
*/
