USE gotas_de_leite;

UPDATE DOADORA 
SET telefone = '11977776666' 
WHERE id_doadora = 1;

UPDATE RECEPTORA
SET prioridade = 'Alta'
WHERE id_receptora = 2;

UPDATE ESTOQUE
SET status = 'Reservado'
WHERE id_lote = 1;
