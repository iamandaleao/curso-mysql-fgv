-- Questão 2 - Identifique os países da África nos quais as mulheres possuem pelo menos um ano a mais de escolaridade do que os homens durante o período de 2001 a 2010. Apresente apenas os nomes dos países, sem repetições.

-- Gabarito:

SELECT DISTINCT men.country
FROM men_years_at_school men
JOIN women_years_at_school women 
  ON men.country = women.country 
  AND men.ref_year = women.ref_year
JOIN country 
  ON men.country = country.country 
WHERE country.four_regions = 'africa'
  AND women.mean_years >= men.mean_years + 1
  AND women.ref_year BETWEEN 2001 AND 2010;
			
/* Comentário:
Lesotho
Seychelles

Temos apenas dois países:

tabela_m3_u1b
Nesta questão, utilizamos os operadores aritméticos na cláusula WHERE, fazendo a operação w.mean_years-m.mean_years ≥ 1. */
