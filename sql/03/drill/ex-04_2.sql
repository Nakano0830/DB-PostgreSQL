SELECT
    id,
    level,
    CEIL(level * 1.2) AS "Boosted level"
FROM
    s_characters;