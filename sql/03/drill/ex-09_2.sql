SELECT
    id,
    name,
    CAST(last_login_at AS DATE) AS "LAST Login",
    CAST('2025-10-15' AS DATE) - CAST(last_login_at AS DATE) || ' days ago' AS "Days Since Last Login",
    CASE
        WHEN CAST('2025-10-15' AS DATE) - CAST(last_login_at AS DATE) <= 50 THEN 'Yes'
        ELSE 'No'
    END "Is Active User?"
FROM
    s_characters;