START TRANSACTION;

SELECT
item_id,
name,
price,
weight_kg,
description
FROM
x_items;

ROLLBACK;
