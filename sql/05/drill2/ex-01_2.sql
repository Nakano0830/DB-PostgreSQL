START TRANSACTION;

DELETE FROM s_characters
WHERE
    last_login_at IS NULL AND
    CAST(created_on AS DATE) < CAST('2023-12-31' AS DATE);

SELECT
    id,
    name,
    last_login_at,
    created_on
FROM
    s_characters;

ROLLBACK;