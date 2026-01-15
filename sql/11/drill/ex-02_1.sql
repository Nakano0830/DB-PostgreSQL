START TRANSACTION;

SELECT
    nc.character_id,
    nc.name,
    COALESCE(nj.name, '---') AS "job"
FROM
    n_jobs AS nj
    RIGHT JOIN n_characters AS nc ON nj.job_id = nc.job_id
ORDER BY
    character_id ASC;
