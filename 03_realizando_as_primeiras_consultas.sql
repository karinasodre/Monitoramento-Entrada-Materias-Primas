-- Ver apenas colunas específicas --
SELECT nome_fornecedor, peso_total_kg 
FROM recebimento_materias_primas;

-- Consulta para ver apenas as notas fiscais que pesam mais de 1.000kg --
SELECT *
FROM recebimento_materias_primas
WHERE peso_total_kg > 1.000;

-- Busca apenas por fornecedores que contém 'Alpha' no nome --
SELECT *
FROM recebimento_materias_primas
WHERE nome_fornecedor LIKE '%Alpha%';

-- Querys um pouco mais complexas --

-- 1. Filtros Compostos (AND) --
-- "Quero ver cargas do Fornecedor Alpha que pesem mais de 20kg" --
SELECT nome_fornecedor, numero_nota_fiscal, peso_total_kg
FROM recebimento_materias_primas
WHERE nome_fornecedor = 'Fornecedor Alpha'
      AND peso_total_kg > 20;

-- 2. ORDER BY --
-- "Quero ver todas as notas, mas as mais pesadas devem aparecer primeiro" --
SELECT *
FROM recebimento_materias_primas
ORDER BY peso_total_kg DESC;

-- 3. Renomeando Colunas na Consulta (AS) --
-- "Quero que o cabeçalho do meu relatório fique bonito/profissional"
SELECT
    nome_fornecedor AS Fornecedor,
    numero_nota_fiscal AS [Nota Fiscal],
    peso_total_kg AS [Peso (kg)]
FROM recebimento_materias_primas;
