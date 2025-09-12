-- Questão 1 - Calcule o preço médio das ações, nomeando este campo como mean, e a amplitude diária de variação, que será chamada de range, para o período de 20 de fevereiro de 2020 a 20 de março de 2020. Mostre apenas os dados dos dias com variação positiva. O preço médio pode ser calculado utilizando a fórmula (Close + Open)/2, enquanto a amplitude de variação é obtida por meio da diferença Close - Open.

-- Gabarito:

SELECT "date" , 
	"close" - "open" as "range", 
	("close" + "open" ) / 2 as "mean"
FROM petrobras
WHERE "date" BETWEEN '2020-02-20' AND '2020-03-20'
	AND "range" > 0;	
			

ou

SELECT date,
    (Close + Open) / 2 AS mean,
    (Close - Open) AS range
FROM petrobras
WHERE Date BETWEEN '2020-02-20' AND '2020-03-20'
  AND Close > Open;
  
/* Comentário:

A maioria dos campos está entre aspas duplas, pois correspondem a palavras reservadas do SQL.

tabela_m3_u1a
Observe que a maior parte das datas desse período de um mês apresentou variação negativa, ou seja, o preço da ação diminuiu ao longo do dia.

Nesta consulta, estamos criando duas novas colunas a partir de operações matemáticas entre colunas: range, que calcula a diferença entre close e open, e mean, que utiliza a fórmula (close+open)/2.

Mais adiante veremos a função AVG() para calcular a média. No entanto, não a utilizamos aqui, pois ela calcula a média entre todos os valores de uma mesma coluna, e não entre os valores de diferentes colunas em uma única linha. Essa diferença ficará mais clara nos exercícios da próxima unidade.
*/
