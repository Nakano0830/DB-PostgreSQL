START TRANSACTION;

SELECT
    yi.item_id,
    yi.name AS "item",
    COUNT(yci.qty) AS "total_qty",
    COUNT(yci.item_id) AS "holder_cnt"
FROM
    y_items AS "yi"
    LEFT JOIN y_character_items AS "yci" ON yi.item_id = yci.item_id
    LEFT JOIN y_characters AS "yc" ON yci.character_id = yc.character_id AND
    yc.deleted_at IS NULL
GROUP BY
    yci.item_id,
    yci.qty
ORDER BY
    item_id ASC