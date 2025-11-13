START TRANSACTION;

SELECT
    COUNT(guild) || '人' AS "ギルド所属",
    (COUNT(id) - COUNT(guild)) || '人' AS "無所属"
FROM
    s_characters;

ROLLBACK;