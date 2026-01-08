START TRANSACTION;

SELECT
    c.character_id,
    c.name,
    j.name AS "job"
FROM
    n_jobs AS j
    JOIN n_characters AS c ON c.job_id = j.job_id
ORDER BY
    c.character_id;

ROLLBACK;