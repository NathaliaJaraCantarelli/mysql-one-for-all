SELECT ar.nome_artista AS artista,
    al.nome_album AS album,
    COUNT(s.artista_id) AS seguidores
FROM SpotifyClone.artistas AS ar
INNER JOIN SpotifyClone.albuns AS al
    ON al.artista_id = ar.artista_id
INNER JOIN SpotifyClone.seguidores_artistas AS s
    ON s.artista_id = ar.artista_id
GROUP BY al.nome_album, ar.nome_artista
ORDER BY seguidores DESC, ar.nome_artista, al.nome_album;