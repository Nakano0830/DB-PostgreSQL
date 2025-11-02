START TRANSACTION;

SELECT
    MAX(LENGTH(COALESCE(guild, 'Freelancer'))) AS "Max_length"
FROM
    s_characters;

ROLLBACK;