SELECT * FROM GOODS;
REPLACE INTO GOODS values ((SELECT max(ID) FROM GOODS AS A)+1, 'RING', 100, 90, 90, 105);