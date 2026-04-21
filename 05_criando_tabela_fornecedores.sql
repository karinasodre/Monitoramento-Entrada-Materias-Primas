--Criando uma nova tabela para praticar JOINS e consultas mais complexas--

-- Criando a tabela de fornecedores --
CREATE TABLE fornecedores(
     id_fornecedor INTEGER PRIMARY KEY AUTOINCREMENT,
     nome_fornecedor TEXT NOT NULL,
     cidade TEXT,
     estado TEXT,
     tipo_material TEXT
     );

-- Inserindo fornecedores --
INSERT INTO fornecedores (nome_fornecedor, cidade, estado, tipo_material)
VALUES
    ('Fornecedor Alpha', 'São Paulo', 'SP', 'Químico'),
    ('Química Central', 'Rio de Janeiro', 'RJ', 'Químico'),
    ('Essências LTDA', 'Campinas', 'SP', 'Essências'),
    ('Industria Corporativa', 'Belo Horizonte', 'MG', 'Embalagem'),
    ('Manufacturing X', 'Curitiba', 'PR', 'Embalagem'),
    ('Fornecedor Sem Entrega', 'Porto Alegre', 'RS', 'Químico');
