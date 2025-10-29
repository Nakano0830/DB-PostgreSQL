SELECT
    id,
    name,
    level,
    COALESCE(guild, '(無所属)') AS "guild"
FROM
    s_characters
ORDER BY
    CASE
        WHEN guild = 'Yamato' OR
        guild IS NULL THEN 1
        ELSE 2
    END ASC,
    LOWER(guild),
    level;
