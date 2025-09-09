/* Questão 4 - Indique se há algum país na tabela population que NÃO existe na tabela country.
Gabarito:
*/

SELECT p.country
FROM population p
EXCEPT
SELECT c.country
FROM country c;	
			
/* Comentário:

Há diferenças:
Eswatini
North Macedonia

Se observarmos na outra direção:
*/

SELECT c.country
FROM country c
EXCEPT
SELECT p.country
FROM population p;	
			
/* 

Macedonia, FYR
Swaziland

O problema surge porque os dois países que apareceram no resultado mudaram de nome. Essuatini é o novo nome da Suazilândia, e a Macedônia (Former Yougoslav Republic ou FYR) passou a se chamar Macedônia do Norte em 2019.


Portanto, a quantidade de países é a mesma e os países são os mesmos, mas as diferenças na grafia impedem a correspondência.*/
