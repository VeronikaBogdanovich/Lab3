SELECT * FROM GOODS;
SET SQL_SAFE_UPDATES = 0;
UPDATE GOODS
SET 
    GOODS.SALE_PRICE = 50
WHERE
    GOODS.ID IN (SELECT 
            *
        FROM
            (SELECT 
                a.ID
            FROM
                GOODS AS a
            WHERE
                a.MIN_PRICE < 40) AS t);