-- Gabarito/Comentário:

INSERT INTO relatorio_focus (ref_date, ipca, pib, dolar)
VALUES ('2024-06-21', 3.98, 2.09, 5.15),
       ('2024-06-28', 4.00, 2.09, 5.20),
       ('2024-07-05', 4.02, 2.10, 5.20),
       ('2024-07-12', 4.00, 2.11, 5.22),
       ('2024-07-19', 4.05, 2.15, 5.30);

-- O comando informa que cinco linhas foram atualizadas. Ao executar uma consulta para verificar:

SELECT * FROM relatorio_focus;

-- São retornadas cinco linhas, exatamente como inserimos.

2024-06-21	3.98	2.09	5.15
2024-06-28	4	2.09	5.2
2024-07-05	4.02	2.1	5.2
2024-07-12	4	2.11	5.22
2024-07-19	4.05	2.15	5.3
