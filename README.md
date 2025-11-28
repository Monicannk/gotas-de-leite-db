# Projeto Gotas de Leite — Banco de Dados Relacional

Este repositório contém a implementação prática de um banco de dados relacional para o projeto **Gotas de Leite**, um sistema destinado a organizar doações de leite materno, coletas, análises laboratoriais e a distribuição para receptoras.

O projeto contempla:
- Modelagem conceitual (DER)
- Modelo lógico
- Criação física das tabelas
- Inserção, consulta, atualização e remoção de dados usando SQL (DML)

---

## 📚 Estrutura do Repositório

├── 01_create_tables.sql # Criação do banco e de todas as tabelas

├── 02_inserts.sql # Dados iniciais inseridos nas tabelas

├── 03_selects.sql # Consultas SELECT utilizando filtros e JOINs

├── 04_updates.sql # Atualizações utilizando UPDATE

├── 05_deletes.sql # Remoções utilizando DELETE

└── README.md # Este arquivo

---

## 🗂️ Banco de Dados: gotas_de_leite

O projeto utiliza o seguinte banco:

CREATE DATABASE gotas_de_leite;

---

🧱 Tabelas Principais

O banco modela os seguintes elementos essenciais do sistema:

**DOADORA** – Informações das doadoras de leite.

**RECEPTORA** – Hospitais, instituições e pessoas que recebem leite.

**VOLUNTARIO** – Voluntários que realizam coletas.

**COLETA** – Registro de cada coleta de leite.

**LOTE** – Lotes coletados associados às coletas.

**ANALISE_LABORATORIAL** – Resultados das análises dos lotes.

**ESTOQUE** – Controle de validade e disponibilidade dos lotes.

**PEDIDO** – Solicitações de leite feitas por receptoras.

**PEDIDO_LOTE** – Relação N:N entre pedidos e lotes.

Todas as chaves primárias, estrangeiras e regras de integridade foram aplicadas conforme o modelo lógico.

---

### ▶️ **Como executar**

✔ 1. Criar o banco e as tabelas

No MySQL Workbench, execute:

SOURCE 01_create_tables.sql;

Ou abra o arquivo e clique no botão ⚡.

<b>
✔ 2. Inserir os dados

SOURCE 02_inserts.sql;


✔ 3. Consultar os dados

SOURCE 03_selects.sql;


As consultas demonstram:

Uso de ``WHERE``

Ordenação com ``ORDER BY``

Limite com ``LIMIT``

Junções com ``JOIN``



✔ 4. Atualizar registros

SOURCE 04_updates.sql;


✔ 5. Remover registros

SOURCE 05_deletes.sql;

---

💻 **Tecnologias Utilizadas**

MySQL 8+

MySQL Workbench

SQL (DDL e DML)

Git & GitHub


---

👩‍💻 **Autoria**

Projeto desenvolvido para fins acadêmicos como parte da disciplina de Modelagem e Desenvolvimento de Banco de Dados.

---

🌸 **Observação Final**

Este repositório demonstra todo o ciclo de construção de um banco de dados relacional — desde sua concepção até manipulação dos dados — utilizando como cenário o projeto social fictício Gotas de Leite, inspirado em bancos de leite humano reais.
