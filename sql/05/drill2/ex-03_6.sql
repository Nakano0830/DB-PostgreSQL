START TRANSACTION;

SELECT
    MAX(LENGTH(COALESCE(guild, 'Freelancer'))) AS "最大文字数(ギルド)"
FROM
    s_characters;

ROLLBACK;