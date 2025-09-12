-- Questão 6 - Calcule a média de diferença de tempo na escola entre homens e mulheres no ano 2000. Utilize as tabelas men_years_at_school e women_years_at_school.

-- Gabarito:

SELECT AVG (m.mean_years- w.mean_years) AS avg_diff
FROM men_years_at_school m
JOIN women_years_at_school w ON m.country = w.country 
	AND m.ref_year = w.ref_year 
WHERE w.ref_year = 2000;
			
-- Comentário:

-- O resultado é: A função AVG aceita apenas um parâmetro por vez. Embora na solução desta questão pareça que estamos passando duas colunas, na verdade, o que está sendo processado pela AVG é a diferença entre essas duas colunas. Portanto, para todos os efeitos, apenas uma coluna está sendo utilizada como parâmetro.
