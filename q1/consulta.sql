--- Questão 1 - Selecione, da tabela co2_emissions_pc, todos os países e anos cuja emissão seja igual a 0,2. Observe que os dados estão no formato americano, no qual o . (ponto) é o separador de decimais. Indique se os países Guatemala e Lituânia estão na lista.

Gabarito:

SELECT * 
FROM co2_emissions_pc
WHERE co2_pc = 0,2; 

Comentário: Sim, a Guatemala e a Lituânia estão na lista resultante.
