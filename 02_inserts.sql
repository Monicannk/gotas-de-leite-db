USE gotas_de_leite;

INSERT INTO DOADORA VALUES
(1, 'Ana Clara', '12345678901', '1995-02-10', '11999998888'),
(2, 'Mariana Silva', '23456789012', '1998-07-22', '11988887777');

INSERT INTO RECEPTORA VALUES
(1, 'Hospital Santa Luz', '1122334455', 'Alta'),
(2, 'Maria de Lourdes', '11955554444', 'Média');

INSERT INTO VOLUNTARIO VALUES
(1, 'João Pedro', '98765432100', '11944443333'),
(2, 'Luiz Henrique', '87654321099', '11933332222');

INSERT INTO BANCO_DE_LEITE VALUES
(1, 'Banco Central de Leite', 'Rua A, 100', 500);

INSERT INTO COLETA VALUES
(1, '2025-01-10 09:30:00', 'Residência da doadora', 1, 1),
(2, '2025-01-12 14:00:00', 'Hospital Municipal', 2, 2);

INSERT INTO LOTE VALUES
(1, 'QR001', '2025-01-10', 1),
(2, 'QR002', '2025-01-12', 2);

INSERT INTO ANALISE_LABORATORIAL VALUES
(1, 'Acidez', '7.1', 'Aprovado', '2025-01-13', 1),
(2, 'Acidez', '8.5', 'Reprovado', '2025-01-14', 2);

INSERT INTO ESTOQUE VALUES
(1, 1, '2025-06-10', 'Disponível'),
(2, 2, '2025-06-12', 'Bloqueado');

INSERT INTO PEDIDO VALUES
(1, '2025-01-15', 300, 'Pendente', 1),
(2, '2025-01-20', 150, 'Entregue', 2);

INSERT INTO PEDIDO_LOTE VALUES
(1, 1, 200),
(2, 2, 150);
