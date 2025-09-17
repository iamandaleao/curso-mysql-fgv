-- Questão 3 - Adicione a taxa Selic à tabela. Primeiro, crie a coluna selic como um campo numérico com duas casas decimais e com restrição de não nulo. Se isso não for possível, crie o campo como nulo.

Gabarito/Comentário:

ALTER TABLE relatorio_focus 
ADD COLUMN selic NUMERIC(5,2) NOT NULL;

O comando gera um erro porque a tabela já possui linhas, e o banco de dados não tem valores para preencher na nova coluna, resultando em valores NULL. Como o campo não aceita nulos, ocorre o erro. Vamos criar a coluna permitindo valores nulos:

ALTER TABLE relatorio_focus 
ADD COLUMN selic NUMERIC(5,2) NULL;

O resultado indica que cinco linhas foram atualizadas. Vamos verificar:

SELECT * FROM relatorio_focus;


-- Outra tipo de resposta:
ALTER TABLE relatorio_focus
ADD COLUMN selic DECIMAL(10,2);

SELECT * FROM relatorio_focus;
