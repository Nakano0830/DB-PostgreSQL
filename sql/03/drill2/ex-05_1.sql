START TRANSACTION;

SELECT
    id,
    name,
    job,
    CASE
        WHEN job IN ('Fighter', 'Samurai', 'Monk', 'Ninja') THEN 'frontline'
        ELSE 'backline'
    END AS "battle_position"
FROM
    s_characters
ROLLBACK;