-- 1. Resumo Geral onde é necessário saber: total de notas, peso total recebido, média de peso por carga, carga mais pesada e carga mais leve. --
SELECT 
    COUNT(*) AS [Total de Notas], 
    SUM(peso_total_kg) AS [Peso Total Recebido],
    AVG(peso_total_kg) AS [Média de Peso por Carga],
    MAX(peso_total_kg) AS [Carga Mais Pesada],
    MIN(peso_total_kg) AS [Carga Mais Leve]
FROM recebimento_materias_primas;

-- 2. "Quanto cada fornecedor entregou no total?" --
SELECT 
    nome_fornecedor, 
    SUM(peso_total_kg) AS [Peso Acumulado],
    COUNT(*) AS [Qtd Entregas]
FROM recebimento_materias_primas
GROUP BY nome_fornecedor
ORDER BY [Peso Acumulado] DESC;

-- 3."Mostre apenas fornecedores que enviaram mais de 100kg no total"
SELECT 
    nome_fornecedor, 
    SUM(peso_total_kg) AS [Peso Total Acumulado]
FROM recebimento_materias_primas
GROUP BY nome_fornecedor
HAVING [Peso Total Acumulado] > 100;
