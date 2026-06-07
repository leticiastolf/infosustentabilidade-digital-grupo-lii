<div align="center">
## Script consulta SQL no supabase:

SELECT
    pc.nome_local,
    pc.cidade,
    ma.tipo_material,
    pd.modalidade,
    pd.possui_custo
FROM pontos_coleta pc
INNER JOIN materiais_aceitos ma
    ON pc.id_ponto = ma.id_ponto
INNER JOIN procedimentos_descarte pd
    ON pc.id_ponto = pd.id_ponto
ORDER BY pc.nome_local;
