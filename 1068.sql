-- Leetcode Problem 1683:   product-sales-analysis-i


select p.product_name, s.year, s.price
from Product p
inner JOIN Sales s
ON s.product_id = p.product_id;