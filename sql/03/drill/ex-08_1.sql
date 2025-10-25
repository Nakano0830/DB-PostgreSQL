SELECT
    id,
    name,
    created_on AS "created_on_1",
    '令和' || DATE_PART('year', created_on) - 2018 || TO_CHAR(created_on, '"年"MM"月"DD"日"') AS "created_on_2"
FROM
    s_characters;