-- Questão 11 - Pesquise os países das Américas, segundo a classificação do Banco Mundial (coluna wb_regions), utilizando o operador LIKE.

-- Gabarito:

SELECT country, wb_regions
FROM country
WHERE wb_regions LIKE '%America%';
					
-- Comentário: Há duas classificações para a América no campo wb_regions: Latin America & Caribbean e North America. Assim, utilizamos o operador LIKE para buscar a palavra America em qualquer posição da string, aplicando o uso de '%' tanto no início quanto no final da palavra. O comentário sobre desempenho mencionado na questão anterior também se aplica a esta situação.
