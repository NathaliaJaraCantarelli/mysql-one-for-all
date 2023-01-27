SELECT COUNT(h.usuario_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.historico_reproducoes AS h
INNER JOIN SpotifyClone.usuarios AS u
    ON u.nome_usuario = "Barbara Liskov"
WHERE h.usuario_id = u.usuario_id;