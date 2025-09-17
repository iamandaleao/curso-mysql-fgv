-- Questão 2 - Inicie uma transação, delete todas as linhas da tabela men_years_at_school cujo país é Argentina e os anos de referência vão de 2000 a 2008. Faça um SELECT* para o Brasil de 2000 a 2009 para conferir o resultado. Agora deletamos o período correto. Então, faça um COMMIT e efetive a transação. Faça o SELECT novamente para ver que a transação foi efetivada e as linhas apagadas não voltaram.

-- Gabarito/Comentário: Como na questão anterior, começamos abrindo a transação:

BEGIN TRANSACTION;

-- Este comando não retorna nada. Na sequência, deletamos as linhas:

DELETE
FROM men_years_at_school
WHERE ref_year BETWEEN 2000 AND 2008
  AND country = 'Brazil';

-- São apagadas nove linhas, de 2000 a 2008. Fazendo a consulta:

SELECT *
FROM men_years_at_school
WHERE ref_year BETWEEN 2009 AND 2009
  AND country = 'Brazil';

-- A linha referente a 2009 continua lá, e as demais, desde 2000, foram apagadas:

-- Desta vez vamos efetivar a transação:

COMMIT;

-- Este comando retorna que nove linhas foram atualizadas. Para conferir, rodamos novamente a query, mas até 2008:

SELECT *
FROM men_years_at_school
WHERE ref_year BETWEEN 2000 AND 2008
  AND country = 'Brazil';

-- Desta vez não retorna nada.

-- Minha resposta completa:
begin transaction;

Delete from men_years_at_school
where country= 'Brazil'
and ref_year between 2000 and 2008;

Select * from  men_years_at_school
where country = 'Brazil'
and ref_year between 2000 and 2009;
commit; 

select * from  men_years_at_school
where country = 'Brazil'
and ref_year between 2000 and 2008;
