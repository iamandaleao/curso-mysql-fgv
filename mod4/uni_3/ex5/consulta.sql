-- Questão 5 - Altere o campo selic para não nulo.

-- Gabarito/Comentário:

-- O comando a seguir, apesar de estar correto, não funciona, pois o banco de dados SQLite, que estamos utilizando, não implementa essa funcionalidade até a versão atual (3.46.0).

ALTER TABLE relatorio_focus (
MODIFY COLUMN selic NOT NULL);

-- Portanto, precisaremos realizar essa alteração em várias etapas. O primeiro passo é criar uma tabela temporária com a estrutura desejada, incluindo a coluna selic e todos os campos configurados como não nulos.

-- 1 - Primeiro, verificar se todos os valores de selic já estão preenchidos:

SELECT * FROM relatorio_focus WHERE selic IS NULL;


-- 2 - Criar uma nova tabela com selic NOT NULL:

CREATE TABLE relatorio_focus_nova (
    ref_date DATE PRIMARY KEY,
    ipca DECIMAL(10,2) NOT NULL,
    pib DECIMAL(10,2) NOT NULL,
    dolar DECIMAL(10,2) NOT NULL,
    selic DECIMAL(10,2) NOT NULL
);


-- 3 - Copiar os dados da tabela antiga para a nova:

INSERT INTO relatorio_focus_nova (ref_date, ipca, pib, dolar, selic)
SELECT ref_date, ipca, pib, dolar, selic
FROM relatorio_focus;


-- 4 - Apagar a tabela antiga e renomear a nova:

DROP TABLE relatorio_focus;
ALTER TABLE relatorio_focus_nova RENAME TO relatorio_focus;
