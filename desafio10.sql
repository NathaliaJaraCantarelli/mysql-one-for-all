SELECT c.nome_cancao AS nome,
    COUNT(h.cancao_id) AS reproducoes
FROM SpotifyClone.tipos_plano AS t
INNER JOIN SpotifyClone.usuarios AS u
    ON (t.plano_id = u.plano_id)
INNER JOIN SpotifyClone.historico_reproducoes AS h
    ON u.usuario_id = h.usuario_id
INNER JOIN SpotifyClone.cancoes AS c
    ON h.cancao_id = c.cancao_id
WHERE ((t.nome_plano = 'gratuito') OR (t.nome_plano = 'pessoal'))
GROUP BY c.nome_cancao
ORDER BY c.nome_cancao;