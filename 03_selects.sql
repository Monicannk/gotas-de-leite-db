USE gotas_de_leite;

SELECT * FROM DOADORA;

SELECT nome, cpf FROM DOADORA WHERE id_doadora = 1;

SELECT * FROM LOTE ORDER BY data_coleta DESC;

SELECT p.id_pedido, p.data_pedido, r.nome_ou_instituicao
FROM PEDIDO p
JOIN RECEPTORA r ON p.id_receptora = r.id_receptora;

SELECT lote.id_lote, analise.resultado_final
FROM LOTE lote
JOIN ANALISE_LABORATORIAL analise ON lote.id_lote = analise.id_lote
WHERE analise.resultado_final = 'Aprovado';
