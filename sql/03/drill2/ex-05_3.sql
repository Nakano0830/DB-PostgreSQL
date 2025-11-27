START TRANSACTION;

SELECT
    id,
    name,
    level,
    created_on,
    CASE
        WHEN level >= 50 AND
        created_on < CAST('2022/12/31' AS DATE) THEN 'Master'
        WHEN level >= 30 AND
        created_on < CAST('2023/12/31' AS DATE) THEN 'Veteran'
        ELSE 'Rookie'
    END AS "class"
FROM
    s_characters
ROLLBACK;