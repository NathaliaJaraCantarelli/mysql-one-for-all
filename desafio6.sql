SELECT FORMAT(MIN(t.valor_plano),2) AS faturamento_minimo,
    FORMAT(MAX(t.valor_plano),2)  AS faturamento_maximo,
    FORMAT(AVG(t.valor_plano),2) AS faturamento_medio,
    FORMAT(SUM(t.valor_plano),2) AS faturamento_total
FROM SpotifyClone.tipos_plano AS t
INNER JOIN SpotifyClone.usuarios AS u
ON t.plano_id = u.plano_id;
