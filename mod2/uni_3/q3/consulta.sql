/* 
Questão 3 - Compare as tabelas population e child_mortality e indique se há alguma diferença nos países presentes em cada uma delas.

Gabarito:
*/

SELECT p.country
FROM population p
EXCEPT
SELECT cm.country
FROM child_mortality cm;	
			
/*
Comentário: Não há diferenças: Como a consulta não retornou nenhum resultado, isso indica que todos os países presentes na tabela population também estão na tabela child_mortality.
*/
