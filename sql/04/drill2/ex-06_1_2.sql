START TRANSACTION;

INSERT INTO
    s_characters (name, job, level, buff, guild, last_login_at, created_on)
VALUES
    ('Zoe', 'Paladin', 11, 0.00, 'guild', '2025-10-20 15:48:00', '2025-10-12');

SELECT
    *
FROM
    s_characters;

ROLLBACK;