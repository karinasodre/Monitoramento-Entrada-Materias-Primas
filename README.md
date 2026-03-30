# Projeto: Monitoramento de Recebimento de Matéria-Prima
Esse projeto faz parte do meu estudo de SQL, focado em consolidar conhecimentos de **DDL (Data Definition Language)** e integridade de dados.

## Objetivo
Criar uma estrutura robusta para o monitoramento da entrada de notas fiscais de matéria-prima. O foco principal é resolver divergências antecipadamente, evitando transtornos no ato do recebimento físico dos materiais na unidade fabril.

## Fase 1
Nessa etapa, estruturei a primeira tabela do banco de dados utilizando **SQLite**:

* **Tabela:** `recebimento_materias_primas`
* **Conceitos Aplicados:**
    * **Primary Key & Autoincrement:** Garantia de que cada recebimento tenha um ID único e automático.
    * **Not Null:** Obrigatoriedade do nome do fornecedor para evitar registros "fantasmas".
    * **Data Types:** Uso de `DECIMAL(10,3)` para precisão de peso (essencial em logística) e `TEXT` para datas.

* ### Fase 2: Manipulação e Qualidade de Dados (DML) - *Em andamento*
Início da alimentação do banco com dados reais de fornecedores.
* **Inserção:** Testes de carga com múltiplos registros simultâneos.
* **Qualidade:** Prática de correções cirúrgicas utilizando `UPDATE` com filtros de ID para garantir a acurácia das informações.

## Próximos Passos
* [x] Criar estrutura básica.
* [x] Ajustar estrutura para rastreabilidade (Lote).
* [ ] Inserir massa de dados para testes.
* [ ] Criar consultas (DQL) para identificar divergências de peso e atrasos.
