-- Questão 1 - Crie uma tabela chamada relatorio_focus para registrar as previsões de mercado do IPCA (ipca), o PIB (pib) e o Dólar (dolar), todos com valores numéricos de duas casas decimais. Além disso, adicione um campo ref_date do tipo data. O campo ref_date será a chave primária, e todos os campos devem ser definidos como não nulos.

-- Gabarito/Comentário:

-- Definimos os campos dos índices com cinco dígitos para armazenar valores até 999,99. O campo do dólar foi dimensionado maior, pois, considerando a imprevisibilidade do câmbio, é melhor estar preparado para valores mais altos. Embora isso possa resultar em um pequeno desperdício de espaço, como a tabela terá poucas linhas, o impacto será mínimo.

CREATE TABLE relatorio_focus (
	ref_date DATE NOT NULL PRIMARY KEY,
	ipca NUMERIC(5,2) NOT NULL,
	pib NUMERIC(5,2) NOT NULL,
	dolar NUMERIC(8,2) NOT NULL
)
			
-- Nenhuma linha será retornada, mas podemos inspecionar a estrutura da tabela. A forma de fazer isso depende da ferramenta de banco de dados que estamos utilizando:
No comando CREATE TABLE, precisamos definir o nome de cada campo, o seu tipo de dado e se ele aceita ou não valores nulos. Além disso, é importante indicar um ou mais campos como chave primária da tabela.

-- Outro exemplo de resolução:
CREATE TABLE relatorio_focus (
    ref_date DATE PRIMARY KEY,
    ipca DECIMAL(10,2) NOT NULL,
    pib DECIMAL(10,2) NOT NULL,
    dolar DECIMAL(10,2) NOT NULL
);

-- Verificar a tabela criada:
SELECT * FROM relatorio_focus;
