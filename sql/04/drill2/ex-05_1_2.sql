SELECT
    id,
    name,
    level,
    buff
FROM
    s_characters
WHERE
    buff NOT IN ('0.00')
ORDER BY
    buff DESC,
    level DESC;