START TRANSACTION;

SELECT
    id,
    name,
    job,
    guild
FROM
    s_characters
WHERE
    job = 'Wizard';

UPDATE s_characters
SET
    job = 'Mage'
WHERE
    job = 'Wizard';

SELECT
    id,
    name,
    job,
    guild
FROM
    s_characters
WHERE
    job = 'Mage';

ROLLBACK;