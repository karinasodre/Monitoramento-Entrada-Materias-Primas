-- O projeto tem como objetivo o monitoramento da entradas de notas fiscais de matéria prima na unidade com foco em resolver
divergências antecipadamente evitando transtornos no ato do recebimento dos materiais.--

-- Primeiro passo é criar a estrutura do banco de dados que iremos trabalhar --
CREATE TABLE recebimento_materias_primas
       (id_recebimento INTEGER PRIMARY KEY AUTOINCREMENT,
       nome_fornecedor TEXT NOT NULL,
       numero_nota_fiscal INTEGER,
       data_chegada TEXT,
       peso_total_kg DECIMAL (10, 3));
