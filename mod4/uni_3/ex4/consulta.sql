-- QUESTÃO 4 - Atualize o campo selic com os valores da tabela a seguir:

+------------+-------+
|    Data    | Selic |
+------------+-------+
| 2024-06-21 | 10,50 |
| 2024-06-28 | 10,50 |
| 2024-07-05 | 10,50 |
| 2024-07-12 | 10,50 |
| 2024-07-19 | 10,50 |
+------------+-------+
-- Gabarito/Comentário:

UPDATE relatorio_focus
SET selic = 10.5;
       
-- Realizamos o arriscado UPDATE sem a cláusula WHERE, que altera todas as linhas da tabela. No entanto, nesse caso, isso era desejado, pois nas cinco linhas existentes, o valor da taxa Selic era o mesmo. O resultado do comando informa que cinco linhas foram atualizadas. Vamos conferir:

SELECT * 
FROM relatorio_focus;

-- O resultado é:
2024-06-21	3.98	2.09	5.15	10.5
2024-06-28	4	2.09	5.2	10.5
2024-07-05	4.02	2.1	5.2	10.5
2024-07-12	4	2.11	5.22	10.5
2024-07-19	4.05	2.15	5.3	10.5

-- Outro jeito pra query:
UPDATE relatorio_focus
SET selic = 10.50
WHERE ref_date BETWEEN '2024-06-21' AND '2024-07-19';

select * from relatorio_focus;
