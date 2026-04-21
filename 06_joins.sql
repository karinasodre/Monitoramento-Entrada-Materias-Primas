-- "Quero ver os recebimentos junto com os dados do fornecedor"
SELECT r.id_recebimento,
       f.nome_fornecedor,
       f.cidade,
       f.estado,
       r.numero_nota_fiscal,
       r.data_recebimento,
       r.peso_total_kg
FROM fornecedores f
INNER JOIN recebimento_materias_primas r
     ON f.nome_fornecedor = r.nome_fornecedor;

-- "Quero ver TODOS os fornecedores, mesmo os que nunca entregaram nada"
SELECT
      f.nome_fornecedor,
      f.cidade,
      f.tipo_material,
      r.peso_total_kg
FROM fornecedores f
LEFT JOIN recebimento_materias_primas r
    ON f.nome_fornecedor = r.nome_fornecedor;

-- "Quero ver só os fornecedores sem nenhum recebimento"
SELECT
      f.nome_fornecedor,
      f.cidade,
      f.tipo_material
FROM fornecedores f
LEFT JOIN recebimento_materias_primas r
    ON f.nome_fornecedor = r.nome_fornecedor
WHERE r.peso_total_kg IS NULL;

-- "Quanto cada fornecedor entregou no total, com dados cadastrais?"
SELECT
      f.nome_fornecedor,
      f.cidade,
      f.estado,
      COUNT(r.id_recebimento) AS [Qntds Entregues],
      SUM(r.peso_total_kg) AS [Peso Total kg]
FROM fornecedores f
LEFT JOIN recebimento_materias_primas r
    ON f.nome_fornecedor = r.nome_fornecedor
GROUP BY f.nome_fornecedor, f.cidade, f.estado
ORDER BY SUM(r.peso_total_kg) DESC;

-- "Preciso remover um fornecedor que foi cadastrado errado"
DELETE FROM fornecedores
WHERE id_fornecedor = 6;
