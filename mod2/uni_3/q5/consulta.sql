/* 
Questão 5 - Utilizando as tabelas co2_emissions_pc e men_years_at_school, verifique se há diferenças na combinação de país e ano para o Brasil a partir de 2000 (inclusive).

Gabarito:
*/

SELECT cep.country, cep.ref_year
FROM co2_emissions_pc cep
WHERE cep.country = 'Brazil'
	AND cep.ref_year> 2000	
EXCEPT
SELECT myas.country, myas.ref_year
FROM men_years_at_school myas
WHERE myas.country = 'Brazil'
	AND myas.ref_year> 2000;
			

/*
Comentário:

De 2000 a 2009, ambas as tabelas possuem dados do Brasil. Contudo, de 2010 até 2022, somente a tabela co2_emissions_pc tem dados do Brasil. A operação de diferença EXCEPT, assim com a operação de união UNION, necessita que o nome das colunas sejam os mesmos em ambas as consultas, de modo a ser possível fazer a comparação.

*/
