START TRANSACTION;

SELECT
    ni.item_id,
    ni.name,
    nc.name AS "holder",
    nci.qty
FROM
    n_items AS ni
    LEFT JOIN n_character_items AS nci ON ni.item_id = nci.item_id
    LEFT JOIN n_characters AS nc ON nci.character_id = nc.character_id
ORDER BY
    ni.item_id ASC;

ROLLBACK;