START TRANSACTION;

SELECT
    id,
    name,
    job,
    buff
FROM
    s_characters
WHERE
    job IN ('Fighter', 'Monk', 'Samurai', 'Ninja');

UPDATE s_characters
SET
    buff = buff + 0.25;

SELECT
    id,
    name,
    job,
    buff
FROM
    s_characters
WHERE
    job IN ('Fighter', 'Monk', 'Samurai', 'Ninja');

ROLLBACK;
