--Contexto: Sua empresa quer um relatório completo sobre os recebimentos e fornecedores cadastrados.

--1. Mostre o nome_fornecedor, tipo_material e data_recebimento de todos os recebimentos. Traga apenas os fornecedores que têm recebimento.
SELECT f.nome_fornecedor,
       f.tipo_material,
       r.data_recebimento
FROM fornecedores f
INNER JOIN recebimento_materias_primas r
    ON f.nome_fornecedor = r.nome_fornecedor;

--2. Liste todos os fornecedores com o total de peso entregue por estado. Ordene do estado com mais peso para o menos.
SELECT f.nome_fornecedor,
       f.estado,
       SUM(r.peso_total_kg) AS [Peso Total]
FROM fornecedores f
LEFT JOIN recebimento_materias_primas r
    ON f.nome_fornecedor = r.nome_fornecedor
GROUP BY f.nome_fornecedor, f.estado
ORDER BY SUM(r.peso_total_kg) DESC;

--3. Mostre apenas os fornecedores do estado de SP que entregaram mais de 50kg no total.
SELECT f.nome_fornecedor,
       f.estado,
       SUM(r.peso_total_kg) AS [Peso Total]
FROM fornecedores f
INNER JOIN recebimento_materias_primas r
    ON f.nome_fornecedor = r.nome_fornecedor
WHERE f.estado = 'SP'
GROUP BY f.nome_fornecedor
HAVING SUM(r.peso_total_kg) > 50;

--4. Liste todos os fornecedores cadastrados e quantas entregas cada um fez. Quem nunca entregou deve aparecer com 0.
SELECT f.nome_fornecedor,
       COUNT(r.id_recebimento) AS [Qntd Entregues]
FROM fornecedores f
LEFT JOIN recebimento_materias_primas r
    ON f.nome_fornecedor = r.nome_fornecedor
GROUP BY f.nome_fornecedor;

--5. Adicione um novo fornecedor que nunca fez entregas e depois delete ele.
INSERT INTO fornecedores (nome_fornecedor, cidade, estado, tipo_material)
VALUES
  ('Centro Químico SA', 'Rio de Janeiro', 'RJ', 'Químico');

DELETE FROM fornecedores
WHERE nome_fornecedor = 'Centro Químico SA';
