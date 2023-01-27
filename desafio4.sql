SELECT u.nome_usuario AS usuario,
    IF(MAX(YEAR(h.data_reproducao)) < 2021, 'Usuário inativo', 'Usuário ativo') AS status_usuario
FROM SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.historico_reproducoes AS h
    ON u.usuario_id = h.usuario_id
GROUP BY u.nome_usuario
ORDER BY u.nome_usuario;