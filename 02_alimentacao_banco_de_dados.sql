-- 1. Alimentando a base de dados com o primeiro registro --
INSERT INTO recebimento_materias_primas
(nome_fornecedor, numero_nota_fiscal, data_recebimento, peso_total_kg, lote)
VALUES
('Fornecedor Alpha', '100530', '2026-03-29', '50.000', 'B5693A')

-- 2. Alimentando a base com múltiplas linhas --
INSERT INTO recebimento_materias_primas
(nome_fornecedor, numero_nota_fiscal, data_recebimento, peso_total_kg, lote)
VALUES
('Química Central', '10349', '2026-02-29', '50', '5649'),
('Essências LTDA', '10125', '2026-02-15', '400', 'ASK83'),
('Industria Corporativa', '124', '2026-01-02', '20.000', 'SK830'),
('Manufacturing X', '9727', '2026-02-18', '33.000', 'SJA2113');

-- 3. Corrigindo o peso do ID 2 --
UPDATE recebimento_materias_primas
SET peso_total_kg = 50.000
WHERE id_recebimento = 2;
