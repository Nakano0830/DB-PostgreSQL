SELECT
    id,
    name,
    last_login_at,
    ('2025/10/15' - CAST(last_login_at AS DATE)) || ' days ago' AS "Days Since Last"
FROM
    s_characters
ORDER BY
    last_login_at DESC NULLS LAST;