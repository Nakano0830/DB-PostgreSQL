START TRANSACTION;

SELECT
character_id,
name,
(
    SELECT
    COUNT(*)
    FROM
    x_character_items
    WHERE
    
)