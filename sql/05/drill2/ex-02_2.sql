START TRANSACTION;

SELECT
    id,
    name,
    job
FROM
    s_characters;

UPDATE s_characters
SET
    job = 'Mage'
WHERE
    job IN ('Wizard');

SELECT
    id,
    name,
    job
FROM
    s_characters;

ROLLBACK;