START TRANSACTION;

SELECT
    CASE
        WHEN job IN ('Fighter', 'Monk', 'Ninja', 'Samurai') THEN 'frontline'
        ELSE 'backline'
    END,
    MAX(level) AS "max_lv",
    ROUND(AVG(level), 1) AS "avg_lv",
    COUNT(*) AS "num"
FROM
    s_characters
GROUP BY
    CASE
        WHEN job IN ('Fighter', 'Monk', 'Ninja', 'Samurai') THEN 'frontline'
        ELSE 'backline'
    END;

ROLLBACK;