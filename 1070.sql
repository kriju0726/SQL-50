-- Leetcode Problem 1070:    Product Sales Analysis III

-- SELECT 
--     s.product_id,
--     s.year AS first_year,
--     s.quantity,
--     s.price
-- FROM Sales s
-- WHERE (s.product_id, s.year) IN (
--     SELECT product_id, MIN(year)
--     FROM Sales
--     GROUP BY product_id
-- )
-- ORDER BY s.product_id;



select product_id, year as first_year, quantity, price
from Sales
where ((product_id, year) IN (select product_id, min(year)  
                              from Sales 
                              group by product_id)
        );



