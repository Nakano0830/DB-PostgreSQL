SELECT DISTINCT
    COALESCE(guild, '未所属'),
    job
FROM
    s_characters;