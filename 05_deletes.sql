USE gotas_de_leite;

DELETE FROM ANALISE_LABORATORIAL
WHERE resultado_final = 'Reprovado';

DELETE FROM PEDIDO_LOTE
WHERE id_pedido = 2;

DELETE FROM RECEPTORA
WHERE prioridade = 'Baixa';
