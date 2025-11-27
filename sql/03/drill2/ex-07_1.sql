START TRANSACTION;

SELECT DISTINCT
    COALESCE(guild, '未所属') AS "ギルド"
FROM
    s_characters
ORDER BY
    guild ASC;

ROLLBACK;