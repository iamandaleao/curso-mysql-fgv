-- Questão 1 - Inicie uma transação, delete todas as linhas da tabela men_years_at_school cujo país é Brasil e os anos de referência vão de 2009 a 2020. Faça um SELECT* para o Brasil de 2000 a 2009 para conferir o resultado. No entanto, o ano de 2009 não era para ser apagado! Então faça um ROLLBACK e desfaça a transação. Faça o SELECT novamente para ver se a transação foi desfeita e as linhas apagadas voltaram.

-- Gabarito/Comentário:

-- Para começar, abrimos a transação:

BEGIN TRANSACTION;

-- Este comando retorna que 0 linhas foram atualizadas. Caso não retorne nada, selecione o comando e execute novamente. É importante que você receba o retorno, pois caso contrário a transação pode não ter sido iniciada. Na sequência, deletamos as linhas:

DELETE
FROM men_years_at_school
WHERE ref_year BETWEEN 2000 AND 2009
  AND country = 'Brazil';

-- São apagadas 10 linhas, inclusive a de 2009, que não queríamos apagar. Fazendo a consulta:

SELECT *
FROM men_years_at_school
WHERE ref_year BETWEEN 2000 AND 2009
  AND country = 'Brazil';

-- Nenhuma linha é retornada:

-- Como cometemos um erro, desfazemos a transação:

ROLLBACK;

-- Este comando retorna que 10 linhas foram atualizadas. Para conferir, rodamos novamente a query:

SELECT *
FROM men_years_at_school
WHERE ref_year BETWEEN 2000 AND 2009
  AND country = 'Brazil';

-- Todas as linhas estão de volta!

-- Realizado:

begin transaction;

Delete from men_years_at_school
where country= 'Brazil'
and ref_year between 2009 and 2020;

Select * from  men_years_at_school
where country = 'Brazil'
and ref_year between 2000 and 2009;
ROLLBACK; 

select * from  men_years_at_school
where country = 'Brazil'
and ref_year between 2000 and 2009;
