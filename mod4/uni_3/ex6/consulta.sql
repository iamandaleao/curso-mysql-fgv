-- Questão 6 - Altere o nome da tabela para focus_report para manter o padrão de nomes em inglês no banco de dados.
Gabarito/Comentário:

ALTER TABLE relatorio_focus 
RENAME TO focus_report;
       
-- O nome da tabela é alterado. Conferindo:

SELECT * FROM focus_report;
