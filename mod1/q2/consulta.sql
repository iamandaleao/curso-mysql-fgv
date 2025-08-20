-- Questão 2 - Selecione, da tabela country, a classificação de quatro e oito regiões e das quatro categorias de renda do Banco Mundial para o Brasil.

-- Gabarito:

SELECT four_regions, eight_regions , wb4income
FROM country
WHERE country = 'Brazil'; 

-- Comentário: Observe o resultado a seguir:

-- Olhando para a tabela country vemos que, dentre outras, ela possui as colunas four_regions, eight_regions e wb4income. Pelo nome das colunas, inferimos que estas atendem ao que foi pedido no enunciado da questão. Por isso, listamos essas colunas no SELECT, separando-as por vírgulas. Note que após a última coluna não pode haver vírgula. Então, no WHERE, filtramos a consulta pela condição country = 'Brazil' para obtermos somente a linha referente ao Brasil.
