-- Leetcode Problem 1045:  Customer who bought all products

select c.customer_id
from Customers c
join Products p on c.product_key = p.product_key
group by c.customer_id
having count(distinct p.product_key) = (select count(*) from Products);


