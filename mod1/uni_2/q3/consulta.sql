-- Questão 3 - Segundo o Ministério da Saúde, as taxas de mortalidade infantil (TMI) são classificadas em altas (50 ou mais), médias (20-49) e baixas (menos de 20). Utilizando a tabela child_mortality e o campo tot_deaths, encontre todos os países que alcançaram taxas de mortalidade baixas com uma variação de 5%, ou seja, com valor de 20±5%. Indique em que ano o Brasil atingiu essa TMI.

Gabarito:

SELECT country, ref_year, tot_deaths
FROM child_mortality
WHERE tot_deaths BETWEEN 19 AND 21;
					
Comentário:

O Brasil atingiu a TMI de 20±5% mortes de crianças de 0 a 5 anos a cada 1000 nascidos vivos no ano de 2008.

O operador BETWEEN cria uma faixa de valores para comparar com a variável especificada. Lembre-se de que o intervalo é fechado, ou seja, se o valor de tot_deaths for 19 ou 21, a linha será incluída no resultado da consulta.
