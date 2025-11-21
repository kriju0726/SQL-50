-- Leetcode Problem 1757: Find Products With Low Fat and Recyclable
SELECT product_id
FROM Products
WHERE low_fats = 'Y' AND recyclable = 'Y';