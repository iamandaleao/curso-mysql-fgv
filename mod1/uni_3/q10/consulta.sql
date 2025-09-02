-- Questão 10 - Selecione os cinco últimos países distintos, na ordem alfabética, da tabela population.
-- Gabarito:

SELECT DISTINCT country
FROM population
ORDER BY country DESC	 
LIMIT 5;
					
-- Comentário: Os países são: Zimbabwe, Zambia, Yemen, Vietnam, Venezuela

-- Na tabela population, o nome dos países se repete várias vezes devido ao extenso período de dados registrados. Para garantir que sejam retornados apenas nomes distintos, utilizamos o DISTINCT. A cláusula LIMIT assegura que apenas cinco resultados sejam exibidos. Como desejamos os cinco últimos países em ordem alfabética, aplicamos GROUP BY DESC para ordenar os resultados em ordem alfabética decrescente.
