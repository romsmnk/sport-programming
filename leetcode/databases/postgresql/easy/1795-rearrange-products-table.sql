-- PostgreSQL
-- Problem: 1795. Rearrange Products Table

-- Runtime 268 ms Beats 36.10%
-- Memory 0.00 MB Beats 100.00%

SELECT product_id, 'store1' as store, store1 as price FROM Products WHERE store1 IS NOT NULL
UNION
SELECT product_id, 'store2' as store, store2 as price FROM Products WHERE store2 IS NOT NULL
UNION
SELECT product_id, 'store3' as store, store3 as price FROM Products WHERE store3 IS NOT NULL;
