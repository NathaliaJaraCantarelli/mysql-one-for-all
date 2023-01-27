SELECT c.nome_cancao AS cancao,
    COUNT(h.usuario_id) AS reproducoes
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico_reproducoes AS h
    ON c.cancao_id = h.cancao_id
GROUP BY c.nome_cancao
ORDER BY reproducoes DESC, c.nome_cancao
LIMIT 2;