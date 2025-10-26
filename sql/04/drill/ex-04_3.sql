SELECT
    id,
    name,
    created_on
FROM
    s_characters
ORDER BY
    created_on ASC
LIMIT
    5
OFFSET
    10;