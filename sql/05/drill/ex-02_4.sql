START TRANSACTION;

SELECT
    id,
    name,
    last_login_at,
    CAST('2025-10-15' AS DATE) - CAST(last_login_at AS DATE) || 'days ago' AS "Days Since",
    buff
FROM
    s_characters
WHERE
    CAST('2025-10-15' AS DATE) - CAST(last_login_at AS DATE) >= 10;

UPDATE s_characters
SET
    buff = buff + CASE
        WHEN ('2025-10-15' AS DATE) - CAST(last_login_at AS DATE) >= 60 THEN 0.40
        WHEN ('2025-10-15' AS DATE) - CAST(last_login_at AS DATE) >= 40 THEN 0.30
        WHEN ('2025-10-15' AS DATE) - CAST(last_login_at AS DATE) >= 20 THEN 0.20
        WHEN ('2025-10-15' AS DATE) - CAST(last_login_at AS DATE) >= 10 THEN 0.10
        ELSE 0.00
    END;

SELECT
    id,
    name,
    last_login_at,
    CAST('2025-10-15' AS DATE) - CAST(last_login_at AS DATE) || 'days ago' AS "Days Since",
    buff
FROM
    s_characters;

ROLLBACK;