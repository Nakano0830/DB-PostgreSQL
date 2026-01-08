START TRANSACTION;

SELECT
    nj.job_id,
    nj.name,
    (
        SELECT
            COUNT(*)
        FROM
            n_characters
        WHERE
            nj.job_id = n_characters.job_id
    ) AS "count"
FROM
    n_jobs AS nj;

ROLLBACK;