START TRANSACTION;

DELETE FROM s_characters
WHERE
    CAST('2025-10-15' AS DATE) - CAST("last_login_at" AS DATE) >= 60;

SELECT
    id,
    last_login_at
FROM
    s_characters;

ROLLBACK;