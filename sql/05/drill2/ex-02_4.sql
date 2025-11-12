START TRANSACTION;

SELECT
id,
name,
last_login_at,
buff
FROM
s_characters;

UPDATE s_characters
SET
    CASE