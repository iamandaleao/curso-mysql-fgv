-- Questão 9 - Selecione todas as linhas da tabela petrobras com o valor de Close diferente de Adj Close. Indique se este evento aconteceu no dia 16 de agosto de 2000.


-- Gabarito:

SELECT * 
FROM petrobras
WHERE close < > adj close; 

-- Comentário: O dia 16 de agosto de 2000 está entre os dias em que o preço de fechamento é diferente do preço de fechamento ajustado.
-- Nesta consulta, comparamos os valores dos campos close e adj close. Observe que "adj close" foi escrito entre aspas porque há um espaço entre as palavras, e sem as aspas o SQL interpretaria como se estivesse faltando uma vírgula para separar dois campos, resultando em erro. Optamos, nesta solução, pelo operador relacional <> para indicar diferença, mas poderíamos também ter utilizado o operador !=, que produziria o mesmo resultado.
