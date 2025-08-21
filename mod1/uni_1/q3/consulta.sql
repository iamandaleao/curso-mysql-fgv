-- Questão 3 - Selecione, da tabela country, o nome de todos os países com a classificação de renda do Banco Mundial em três níveis (coluna wb3income) igual a Middle income. Indique se a China, a Indonésia e a Malásia estão na lista.

SELECT country, wb3income
FROM country
WHERE country IN ('China', 'Indonesia', 'Malaysia')

-- Comentário: Sim, China, Indonésia e Malásia estão na lista resultante. 
-- O enunciado já estabelece que devemos filtrar as linhas pela coluna wb3income, selecionando apenas a coluna country. Para isso, basta incluir a coluna desejada no SELECT, especificar a tabela no FROM e utilizar a coluna de filtro no WHERE, atribuindo o valor 'Middle income'.
