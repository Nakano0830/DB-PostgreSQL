START TRANSACTION;

SELECT
    nc.character_id,
    nc.name,
    (
        SELECT
            n_jobs.name
        FROM
            n_jobs
        WHERE
            nc.job_id = n_jobs.job_id
    ) AS "job"
FROM
    n_characters AS nc;

ROLLBACK;