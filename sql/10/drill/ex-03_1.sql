START TRANSACTION;

SELECT
    g.guild_id,
    g.name,
    c.name,
    c.level
FROM
    x_characters AS c
    JOIN x_guilds AS g ON c.character_id = g.owner_id
ORDER BY
    g.guild_id ASC;