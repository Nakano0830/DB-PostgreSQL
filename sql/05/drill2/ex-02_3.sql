START TRANSACTION;

SELECT
    id,
    name,
    job,
    buff
FROM
    s_characters;

UPDATE s_characters
SET
    buff = buff + 0.25
WHERE
    job IN ('Fighter', 'Monk', 'Samurai', 'Ninja');

SELECT
    id,
    name,
    job,
    buff
FROM
    s_characters;

ROLLBACK;