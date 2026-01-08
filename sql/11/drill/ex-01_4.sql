START TRANSACTION;

SELECT
    xj.job_id,
    xj.name AS "job",
    xc.character_id,
    xc.name,
    xc.level
FROM
    x_jobs AS xj
    JOIN x_characters AS xc ON xj.job_id = xc.job_id
WHERE
    level IN (
        SELECT
            MAX(level)
        FROM
            x_characters AS xc
        GROUP BY
            job_id
    )
ORDER BY
    xj.job_id ASC;