SELECT DISTINCT
    COALESCE(guild, '未所属')
FROM
    s_characters;