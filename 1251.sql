-- Leetcode Prob:1251   average-selling-price --- IGNORE ---



SELECT 
    p.product_id,
    ROUND(COALESCE(SUM(u.units * p.price) / SUM(u.units), 0), 2) AS average_price
FROM Prices p
LEFT JOIN UnitsSold u
    ON p.product_id = u.product_id
    AND u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY p.product_id;



-- COALESCE(5, 10, NULL) me:

-- Pehla value 5 (non-NULL) hai

-- COALESCE first non-NULL value return karta hai

-- Baaki values check bhi nahi hoti

-- So final result = 5